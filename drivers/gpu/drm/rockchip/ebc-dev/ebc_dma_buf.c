// SPDX-License-Identifier: GPL-2.0-only
/*
 * Copyright (c) 2024 Rockchip Electronics Co., Ltd.
 */

#include <linux/slab.h>
#include <linux/version.h>
#include "ebc_dma_buf.h"

struct ebc_dmabuf {
	phys_addr_t phy_addr;
	size_t size;
	int npages;
	struct page *pages[];
};

static inline struct ebc_dmabuf *to_ebc_dmabuf(struct dma_buf *buf)
{
	return buf->priv;
}

static struct sg_table *ebc_map_dma_buf(struct dma_buf_attachment *attachment,
					enum dma_data_direction dir)
{
	struct ebc_dmabuf *ebcbuf = to_ebc_dmabuf(attachment->dmabuf);
	struct sg_table *st;
	int ret;

	st = kzalloc(sizeof(*st), GFP_KERNEL);
	if (!st)
		return ERR_PTR(-ENOMEM);

	ret = sg_alloc_table_from_pages(st, ebcbuf->pages, ebcbuf->npages, 0,
					ebcbuf->npages << PAGE_SHIFT, GFP_KERNEL);
	if (ret)
		goto err_free_st;

	ret = dma_map_sgtable(attachment->dev, st, dir, 0);
	if (ret)
		goto err_free_table;

	return st;

err_free_table:
	sg_free_table(st);
err_free_st:
	kfree(st);
	return ERR_PTR(ret);
}

static void ebc_unmap_dma_buf(struct dma_buf_attachment *attachment, struct sg_table *st,
			      enum dma_data_direction dir)
{
	dma_unmap_sgtable(attachment->dev, st, dir, 0);
	sg_free_table(st);
	kfree(st);
}

#if LINUX_VERSION_CODE >= KERNEL_VERSION(6, 0, 0)
static int ebc_dmabuf_vmap(struct dma_buf *dma_buf, struct iosys_map *map)
{
	struct ebc_dmabuf *ebcbuf = to_ebc_dmabuf(dma_buf);
	void *vaddr;

	vaddr = vmap(ebcbuf->pages, ebcbuf->npages, VM_MAP, pgprot_writecombine(PAGE_KERNEL));
	if (!vaddr)
		return -ENOMEM;
	iosys_map_set_vaddr(map, vaddr);

	return 0;
}
#else
static void *ebc_dmabuf_vmap(struct dma_buf *dma_buf)
{
	struct ebc_dmabuf *ebcbuf = to_ebc_dmabuf(dma_buf);

#if LINUX_VERSION_CODE >= KERNEL_VERSION(5, 10, 0)
	return vm_map_ram(ebcbuf->pages, ebcbuf->npages, 0);
#else
	return vm_map_ram(ebcbuf->pages, ebcbuf->npages, 0, PAGE_KERNEL);
#endif
}
#endif

#if LINUX_VERSION_CODE >= KERNEL_VERSION(6, 0, 0)
static void ebc_dmabuf_vunmap(struct dma_buf *dma_buf, struct iosys_map *map)
{
	vunmap(map->vaddr);
	iosys_map_clear(map);
}
#else
static void ebc_dmabuf_vunmap(struct dma_buf *dma_buf, void *vaddr)
{
	struct ebc_dmabuf *ebcbuf = to_ebc_dmabuf(dma_buf);

	vm_unmap_ram(vaddr, ebcbuf->npages);
}
#endif

static int ebc_dmabuf_mmap(struct dma_buf *dma_buf, struct vm_area_struct *vma)
{
	struct ebc_dmabuf *ebcbuf = to_ebc_dmabuf(dma_buf);
	unsigned long pfn;
	int ret;

	pfn = ((unsigned long)(ebcbuf->phy_addr) >> PAGE_SHIFT);

#if LINUX_VERSION_CODE >= KERNEL_VERSION(6, 0, 0)
	vm_flags_set(vma, VM_IO | VM_DONTEXPAND | VM_DONTDUMP);
#else
	vma->vm_flags |= VM_IO | VM_DONTEXPAND | VM_DONTDUMP;
#endif
	ret = remap_pfn_range(vma, vma->vm_start, pfn, vma->vm_end - vma->vm_start,
			      vma->vm_page_prot);
	if (ret)
		return -EAGAIN;

	return 0;
}

static void ebc_dmabuf_release(struct dma_buf *dma_buf)
{
	struct ebc_dmabuf *ebcbuf = to_ebc_dmabuf(dma_buf);

	kfree(ebcbuf);
}

static const struct dma_buf_ops ebc_dmabuf_ops = {
	.map_dma_buf = ebc_map_dma_buf,
	.unmap_dma_buf = ebc_unmap_dma_buf,
	.release = ebc_dmabuf_release,
	.mmap = ebc_dmabuf_mmap,
	.vmap = ebc_dmabuf_vmap,
	.vunmap = ebc_dmabuf_vunmap,
};

struct dma_buf *ebc_get_dma_buf(phys_addr_t phy_addr, size_t size)
{
	struct ebc_dmabuf *ebcbuf;
	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
	struct dma_buf *dmabuf;
	int i, npages;

	if (size % PAGE_SIZE)
		return ERR_PTR(-EINVAL);

	npages = size / PAGE_SIZE;
	ebcbuf = kmalloc(sizeof(*ebcbuf) + npages * sizeof(struct page *), GFP_KERNEL);
	if (!ebcbuf)
		return ERR_PTR(-ENOMEM);

	for (i = 0; i < npages; i++)
		ebcbuf->pages[i] = phys_to_page(phy_addr + i * PAGE_SIZE);

	ebcbuf->phy_addr = phy_addr;
	ebcbuf->size = size;
	ebcbuf->npages = npages;

	exp_info.ops = &ebc_dmabuf_ops;
	exp_info.size = npages * PAGE_SIZE;
	exp_info.flags = O_RDWR;
	exp_info.priv = ebcbuf;

	dmabuf = dma_buf_export(&exp_info);
	if (IS_ERR(dmabuf))
		goto err;

	return dmabuf;

err:
	kfree(ebcbuf);
	return ERR_PTR(-ENOMEM);
}
EXPORT_SYMBOL(ebc_get_dma_buf);
