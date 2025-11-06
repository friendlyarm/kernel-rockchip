// SPDX-License-Identifier: GPL-2.0
/*
 * Copyright (c) 2020-2024 Rockchip Electronics Co., Ltd.
 *
 * Author: Zorro Liu <zorro.liu@rock-chips.com>
 */

	.text
	.file	"rkf_waveform.c"
	.globl	rkf_wf_input
	.p2align	2
	.type	rkf_wf_input,@function
rkf_wf_input:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-64]!
	stp	x22, x21, [sp, #32]
	adrp	x22, global_waveform
	stp	x24, x23, [sp, #16]
	mov	x29, sp
	stp	x20, x19, [sp, #48]
	ldr	x8, [x22, :lo12:global_waveform]
	cbz	x8, .LBB0_3
	mov	w0, #-16
.LBB0_2:
	ldp	x20, x19, [sp, #48]
	ldp	x22, x21, [sp, #32]
	ldp	x24, x23, [sp, #16]
	ldp	x29, x30, [sp], #64
	ldr	x30, [x18, #-8]!
	ret
.LBB0_3:
	add	x20, x0, #20
	adrp	x1, .L.str.5
	mov	x19, x0
	add	x1, x1, :lo12:.L.str.5
	mov	x0, x20
	mov	w2, #8
	bl	strncmp
	mov	w21, w0
	cbnz	w0, .LBB0_5
	mov	w2, #16
	b	.LBB0_7
.LBB0_5:
	adrp	x1, .L.str.6
	mov	x0, x20
	add	x1, x1, :lo12:.L.str.6
	mov	w2, #8
	bl	strncmp
	cbnz	w0, .LBB0_16
	mov	w2, #32
.LBB0_7:
	cmp	w21, #0
	adrp	x0, .L.str.7
	cset	w8, ne
	adrp	x9, maxpic
	add	x0, x0, :lo12:.L.str.7
	mov	x1, x20
	strb	w8, [x9, :lo12:maxpic]
	bl	_printk
	adrp	x1, .L.str.8
	add	x0, x19, #4
	add	x1, x1, :lo12:.L.str.8
	mov	w2, #12
	bl	strncmp
	cbnz	w0, .LBB0_17
	ldr	w23, [x19]
	cmp	w23, #256, lsl #12
	b.gt	.LBB0_19
	sxtw	x8, w23
	adrp	x21, crc32_table
	add	x21, x21, :lo12:crc32_table
	mov	w1, wzr
	mov	x0, x21
	mov	w2, #1024
	ldr	w20, [x19, x8]
	mov	w24, #3511
	movk	w24, #1217, lsl #16
	bl	memset
	mov	w13, #28088
	mov	w14, #14044
	mov	w15, #7022
	mov	w8, wzr
	mov	w9, wzr
	mov	w10, wzr
	mov	w11, wzr
	mov	x12, xzr
	movk	w13, #9736, lsl #16
	movk	w14, #4868, lsl #16
	movk	w15, #2434, lsl #16
	mov	w16, #-2147483648
	mov	w17, #1073741824
	mov	w0, #536870912
	mov	w1, #268435456
.LBB0_10:
	lsl	w2, w12, #24
	tst	w12, #0x40
	and	w2, w13, w2, asr #31
	eor	w3, w2, w14
	csel	w2, w2, w3, eq
	tst	w12, #0x20
	eor	w3, w2, w15
	csel	w2, w2, w3, eq
	tst	w12, #0x10
	eor	w3, w2, w24
	csel	w2, w2, w3, eq
	eor	w3, w2, w8
	lsl	w2, w2, #1
	eor	w4, w2, w24
	cmp	w3, #0
	csel	w2, w2, w4, ge
	add	w8, w8, w1
	eor	w3, w2, w9
	lsl	w2, w2, #1
	eor	w4, w2, w24
	cmp	w3, #0
	csel	w2, w2, w4, ge
	add	w9, w9, w0
	eor	w3, w2, w10
	lsl	w2, w2, #1
	eor	w4, w2, w24
	cmp	w3, #0
	csel	w2, w2, w4, ge
	add	w10, w10, w17
	eor	w3, w2, w11
	lsl	w2, w2, #1
	eor	w4, w2, w24
	cmp	w3, #0
	csel	w2, w2, w4, ge
	add	w11, w11, w16
	str	w2, [x21, x12, lsl #2]
	add	x12, x12, #1
	cmp	x12, #256
	b.ne	.LBB0_10
	mov	w2, wzr
	cbz	w23, .LBB0_14
	mov	x8, x19
.LBB0_13:
	ldrb	w9, [x8], #1
	subs	w23, w23, #1
	eor	w9, w9, w2, lsr #24
	ldr	w9, [x21, w9, uxtw #2]
	eor	w2, w9, w2, lsl #8
	b.ne	.LBB0_13
.LBB0_14:
	cmp	w20, w2
	b.ne	.LBB0_18
	mov	w0, wzr
	str	x19, [x22, :lo12:global_waveform]
	b	.LBB0_2
.LBB0_16:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	b	.LBB0_20
.LBB0_17:
	adrp	x0, .L.str.9
	add	x0, x0, :lo12:.L.str.9
	bl	_printk
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	b	.LBB0_20
.LBB0_18:
	adrp	x0, .L.str.10
	mov	w1, w20
	add	x0, x0, :lo12:.L.str.10
	bl	_printk
.LBB0_19:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
.LBB0_20:
	bl	_printk
	mov	w0, #-1
	b	.LBB0_2
.Lfunc_end0:
	.size	rkf_wf_input, .Lfunc_end0-rkf_wf_input

	.globl	rkf_wf_get_version
	.p2align	2
	.type	rkf_wf_get_version,@function
rkf_wf_get_version:
	adrp	x8, global_waveform
	ldr	x8, [x8, :lo12:global_waveform]
	add	x9, x8, #84
	cmp	x8, #0
	csel	x0, xzr, x9, eq
	ret
.Lfunc_end1:
	.size	rkf_wf_get_version, .Lfunc_end1-rkf_wf_get_version

	.globl	rkf_wf_get_wf_bit
	.p2align	2
	.type	rkf_wf_get_wf_bit,@function
rkf_wf_get_wf_bit:
	adrp	x8, maxpic
	adrp	x9, global_waveform
	mov	w10, #32
	ldrb	w8, [x8, :lo12:maxpic]
	ldr	x9, [x9, :lo12:global_waveform]
	cmp	w8, #0
	mov	w8, #16
	csel	w8, w10, w8, ne
	cmp	x9, #0
	csel	w0, wzr, w8, eq
	ret
.Lfunc_end2:
	.size	rkf_wf_get_wf_bit, .Lfunc_end2-rkf_wf_get_wf_bit

	.globl	rkf_wf_get_lut
	.p2align	2
	.type	rkf_wf_get_lut,@function
rkf_wf_get_lut:
	sub	sp, sp, #144
	str	x30, [x18], #8
	adrp	x8, global_waveform
	stp	x29, x30, [sp, #48]
	stp	x28, x27, [sp, #64]
	add	x29, sp, #48
	stp	x26, x25, [sp, #80]
	ldr	x8, [x8, :lo12:global_waveform]
	stp	x24, x23, [sp, #96]
	stp	x22, x21, [sp, #112]
	stp	x20, x19, [sp, #128]
	cbz	x8, .LBB3_10
	mov	x20, x0
	cbz	x0, .LBB3_11
	adrp	x25, rkf_wf_get_lut.sftemp
	mov	w8, #26215
	movk	w8, #26214, lsl #16
	mov	w23, w5
	mov	w24, w4
	mov	w19, w2
	ldrsw	x10, [x25, :lo12:rkf_wf_get_lut.sftemp]
	smull	x9, w2, w8
	mov	w21, w1
	adrp	x28, need_pic
	lsr	x11, x9, #63
	asr	x9, x9, #33
	mul	x8, x10, x8
	add	w22, w9, w11
	str	w3, [x28, :lo12:need_pic]
	lsr	x9, x8, #63
	asr	x8, x8, #33
	add	w8, w8, w9
	adrp	x9, rkf_wf_get_lut.stype
	cmp	w22, w8
	b.ne	.LBB3_4
	ldr	w9, [x9, :lo12:rkf_wf_get_lut.stype]
	cmp	w9, w21
	b.eq	.LBB3_68
.LBB3_4:
	cmp	w21, #10
	b.eq	.LBB3_67
	ldr	x0, [x20, #8]
	cbz	x0, .LBB3_7
	bl	kfree
	str	xzr, [x20, #8]
.LBB3_7:
	mov	x0, x20
	mov	w1, w21
	mov	w2, w19
	bl	parse_wf_data
	tbnz	w0, #31, .LBB3_82
	mov	w26, w0
	ldr	x1, [x20, #16]
	cbz	w21, .LBB3_12
	mov	x0, x20
	mov	w2, w26
	bl	rkf_lut_wf_table
	b	.LBB3_17
.LBB3_10:
	mov	w0, #-19
	b	.LBB3_81
.LBB3_11:
	mov	w0, #-22
	b	.LBB3_81
.LBB3_12:
	cbz	w26, .LBB3_17
	mov	w8, wzr
	mov	w9, wzr
	mov	x10, xzr
	mov	w11, w26
	add	x12, x1, #7
.LBB3_14:
	ldr	x15, [x20, #8]
	and	x14, x8, #0x7ffffff
	mov	x13, xzr
	add	x14, x12, x14, lsl #5
	add	x15, x15, w9, sxtw #2
.LBB3_15:
	add	x16, x15, x13
	add	x13, x13, #4
	cmp	x13, #64
	ldrb	w17, [x16]
	and	w17, w17, #0x3
	sturb	w17, [x14, #-7]
	ldrb	w17, [x16]
	ubfx	w17, w17, #2, #2
	sturb	w17, [x14, #-6]
	ldrb	w17, [x16]
	ubfx	w17, w17, #4, #2
	sturb	w17, [x14, #-5]
	ldrb	w17, [x16]
	lsr	w17, w17, #6
	sturb	w17, [x14, #-4]
	ldrb	w17, [x16, #1]
	and	w17, w17, #0x3
	sturb	w17, [x14, #-3]
	ldr	w17, [x16]
	ubfx	w17, w17, #10, #2
	sturb	w17, [x14, #-2]
	ldr	w17, [x16]
	ubfx	w17, w17, #12, #2
	sturb	w17, [x14, #-1]
	ldr	w17, [x16]
	ubfx	w17, w17, #14, #2
	strb	w17, [x14]
	ldrb	w17, [x16, #2]
	and	w17, w17, #0x3
	strb	w17, [x14, #1]
	ldr	w17, [x16]
	ubfx	w17, w17, #18, #2
	strb	w17, [x14, #2]
	ldr	w17, [x16]
	ubfx	w17, w17, #20, #2
	strb	w17, [x14, #3]
	ldr	w17, [x16]
	ubfx	w17, w17, #22, #2
	strb	w17, [x14, #4]
	ldrb	w17, [x16, #3]
	and	w17, w17, #0x3
	strb	w17, [x14, #5]
	ldr	w17, [x16]
	ubfx	w17, w17, #26, #2
	strb	w17, [x14, #6]
	ldr	w17, [x16]
	ubfx	w17, w17, #28, #2
	strb	w17, [x14, #7]
	ldr	w16, [x16]
	lsr	w16, w16, #30
	strb	w16, [x14, #8]
	add	x14, x14, #32
	b.ne	.LBB3_15
	add	x10, x10, #1
	add	w9, w9, #16
	add	w8, w8, #32
	cmp	x10, x11
	b.ne	.LBB3_14
.LBB3_17:
	cbz	w24, .LBB3_57
	cmp	w21, #7
	b.eq	.LBB3_20
	cmp	w21, #1
	b.ne	.LBB3_29
.LBB3_20:
	ldr	x23, [x20, #16]
	mov	w9, #62368
	mov	w10, #52128
	mov	w12, #31648
	mov	w11, #41888
	mov	x8, xzr
	add	x24, x23, x9
	add	x9, x23, x10
	add	x13, x23, #17, lsl #12
	mov	w10, #11168
	add	x27, x23, x11
	str	x9, [sp, #24]
	add	x9, x13, #2976
	stur	x9, [x29, #-16]
	add	x9, x23, x12
	str	x9, [sp, #16]
	mov	w9, #21408
	add	x25, x23, x9
	add	x9, x23, x10
	mov	x10, x23
	str	x9, [sp, #8]
	sxtw	x9, w26
	b	.LBB3_22
.LBB3_21:
	add	x8, x8, #1
	add	x10, x10, #1024
	cmp	x8, #72
	b.eq	.LBB3_24
.LBB3_22:
	cmp	x8, x9
	strb	wzr, [x10, #32]
	strb	wzr, [x10, #62]
	strb	wzr, [x10, #96]
	strb	wzr, [x10, #126]
	strb	wzr, [x10, #928]
	strb	wzr, [x10, #958]
	strb	wzr, [x10, #992]
	strb	wzr, [x10, #1022]
	strb	wzr, [x10]
	strb	wzr, [x10, #990]
	b.lt	.LBB3_21
	strb	wzr, [x10, #30]
	strb	wzr, [x10, #960]
	b	.LBB3_21
.LBB3_24:
	cmp	w26, #1
	b.lt	.LBB3_27
	mov	w9, w26
	mov	x8, xzr
	lsl	x9, x9, #10
.LBB3_26:
	add	x10, x23, w8, sxtw
	add	x8, x8, #1024
	cmp	x9, x8
	ldrb	w11, [x10, #960]
	ldrb	w12, [x10, #30]
	strb	w11, [x10]
	strb	w12, [x10, #990]
	b.ne	.LBB3_26
.LBB3_27:
	mov	x0, x23
	bl	epd_gray2_last_repair
	cbnz	w0, .LBB3_57
	mov	w8, #1
	mov	w9, #2
	ldr	x10, [sp, #8]
	strb	w8, [x23, #928]
	strb	w8, [x10]
	strb	w9, [x10, #30]
	ldr	x10, [sp, #16]
	strb	w9, [x23, #958]
	strb	w8, [x25]
	strb	w8, [x10]
	strb	w9, [x10, #30]
	ldr	x10, [sp, #24]
	strb	w9, [x25, #30]
	strb	w8, [x27]
	strb	w8, [x10]
	strb	w9, [x10, #30]
	ldur	x10, [x29, #-16]
	strb	w9, [x27, #30]
	strb	w8, [x24]
	strb	w9, [x24, #30]
	strb	w8, [x10]
	strb	w9, [x10, #30]
	strb	w9, [x23, #1022]
	strb	w8, [x23, #992]
	strb	w9, [x25, #94]
	strb	w8, [x25, #64]
	strb	w9, [x27, #94]
	strb	w8, [x27, #64]
	strb	w9, [x24, #94]
	strb	w8, [x24, #64]
	b	.LBB3_57
.LBB3_29:
	sub	w8, w21, #13
	cmp	w8, #1
	b.hi	.LBB3_31
	ldr	x0, [x20, #16]
	mov	w1, w26
	mov	w2, w23
	bl	rkf_wf_normal_fix
	b	.LBB3_57
.LBB3_31:
	sub	w8, w21, #5
	cmp	w8, #1
	b.hi	.LBB3_33
	ldr	x0, [x20, #16]
	mov	w1, w26
	bl	rkf_wf_regal_fix
	b	.LBB3_57
.LBB3_33:
	cmp	w21, #15
	b.ne	.LBB3_57
	cmp	w26, #1
	b.lt	.LBB3_57
	ldr	x8, [x20, #16]
	mov	w9, w26
	cmp	w26, #1
	b.ne	.LBB3_37
	mov	x10, xzr
	b	.LBB3_55
.LBB3_37:
	sub	x12, x9, #1
	mov	x10, xzr
	and	x11, x12, #0xffffffff
	lsl	x14, x11, #10
	tst	x14, #0xffffffff00000000
	cset	w13, ne
	cmp	xzr, x12, lsr #54
	cset	w11, ne
	tbnz	w14, #31, .LBB3_55
	tbnz	w13, #0, .LBB3_55
	lsr	x13, x12, #32
	cbnz	x13, .LBB3_55
	add	x13, x8, #957
	lsl	x12, x12, #10
	add	x14, x13, x12
	cmp	x14, x13
	b.lo	.LBB3_55
	tbnz	w11, #0, .LBB3_55
	add	x13, x8, #1023
	add	x14, x13, x12
	cmp	x14, x13
	b.lo	.LBB3_55
	tbnz	w11, #0, .LBB3_55
	add	x13, x8, #991
	add	x14, x13, x12
	cmp	x14, x13
	b.lo	.LBB3_55
	tbnz	w11, #0, .LBB3_55
	add	x13, x8, #1022
	add	x14, x13, x12
	cmp	x14, x13
	b.lo	.LBB3_55
	tbnz	w11, #0, .LBB3_55
	add	x13, x8, #990
	add	x14, x13, x12
	cmp	x14, x13
	b.lo	.LBB3_55
	tbnz	w11, #0, .LBB3_55
	add	x13, x8, #958
	add	x12, x13, x12
	cmp	x12, x13
	b.lo	.LBB3_55
	tbnz	w11, #0, .LBB3_55
	and	x10, x9, #0xfffffffe
	mov	w11, #1024
	mov	x12, x10
.LBB3_53:
	sub	w14, w11, #1024
	add	x13, x8, w11, sxtw
	subs	x12, x12, #2
	add	w11, w11, #2048
	add	x14, x8, w14, sxtw
	ldrb	w15, [x13, #957]
	ldrb	w16, [x14, #957]
	strb	w15, [x13, #958]
	strb	w15, [x13, #990]
	strb	w15, [x13, #1022]
	strb	w15, [x13, #991]
	strb	w16, [x14, #958]
	strb	w16, [x14, #990]
	strb	w16, [x14, #1022]
	strb	w16, [x14, #991]
	strb	w16, [x14, #1023]
	strb	w15, [x13, #1023]
	b.ne	.LBB3_53
	cmp	x10, x9
	b.eq	.LBB3_57
.LBB3_55:
	sub	x9, x9, x10
	lsl	w10, w10, #10
.LBB3_56:
	add	x11, x8, w10, sxtw
	subs	x9, x9, #1
	add	w10, w10, #1024
	ldrb	w12, [x11, #957]
	strb	w12, [x11, #958]
	strb	w12, [x11, #990]
	strb	w12, [x11, #1022]
	strb	w12, [x11, #991]
	strb	w12, [x11, #1023]
	b.ne	.LBB3_56
.LBB3_57:
	ldr	x0, [x20, #8]
	cbz	x0, .LBB3_59
	bl	kfree
	str	xzr, [x20, #8]
.LBB3_59:
	add	w8, w26, #15
	add	w9, w26, #30
	cmp	w8, #0
	mov	w1, #3520
	csel	w8, w9, w8, lt
	lsl	w8, w8, #6
	and	w8, w8, #0xfffffc00
	sxtw	x24, w8
	mov	x0, x24
	bl	__kmalloc
	str	x0, [x20, #8]
	cbz	x0, .LBB3_83
	ldr	x27, [x20, #16]
	str	w22, [sp, #24]
	stur	w19, [x29, #-16]
	stur	x26, [x29, #-8]
	cbz	x27, .LBB3_84
	ldr	w8, [x28, :lo12:need_pic]
	mov	w1, wzr
	mov	x2, x24
	mov	x23, x0
	cmp	w8, #16
	cset	w28, ne
	bl	memset
	cmp	w26, #1
	b.lt	.LBB3_66
	ldur	x9, [x29, #-8]
	mov	w10, #1
	mov	w11, #2
	mov	w12, #3
	mov	w13, #4
	mov	w14, #5
	mov	w15, #6
	mov	w16, #7
	mov	w17, #8
	mov	w0, #9
	mov	w1, #10
	mov	w2, #11
	mov	w3, #12
	mov	w4, #13
	mov	w5, #14
	mov	w6, #15
	mov	x8, xzr
	mov	w9, w9
	lsl	x10, x10, x28
	lsl	x11, x11, x28
	lsl	x12, x12, x28
	lsl	x13, x13, x28
	lsl	x14, x14, x28
	lsl	x15, x15, x28
	lsl	x16, x16, x28
	lsl	x17, x17, x28
	lsl	x0, x0, x28
	lsl	x1, x1, x28
	lsl	x2, x2, x28
	lsl	x3, x3, x28
	lsl	x4, x4, x28
	lsl	x5, x5, x28
	lsl	x6, x6, x28
.LBB3_63:
	lsl	w22, w8, #9
	mov	w24, #31
	bfi	w24, w8, #9, #23
	cmp	w22, #0
	csel	w22, w24, w22, lt
	lsl	w24, w8, #10
	asr	w22, w22, #5
	mov	x7, xzr
	add	x24, x27, w24, sxtw
	add	x25, x23, w22, sxtw #2
.LBB3_64:
	lsl	w22, w7, w28
	lsl	x30, x7, #2
	add	x7, x7, #1
	add	x22, x24, x22, lsl #5
	cmp	x7, #16
	ldr	w26, [x25, x30]
	ldrb	w19, [x22]
	and	w19, w19, #0x3
	orr	w19, w26, w19
	str	w19, [x25, x30]
	ldrb	w26, [x22, x10]
	ubfiz	w26, w26, #2, #2
	orr	w19, w19, w26
	str	w19, [x25, x30]
	ldrb	w26, [x22, x11]
	ubfiz	w26, w26, #4, #2
	orr	w19, w19, w26
	str	w19, [x25, x30]
	ldrb	w26, [x22, x12]
	ubfiz	w26, w26, #6, #2
	orr	w19, w19, w26
	str	w19, [x25, x30]
	ldrb	w26, [x22, x13]
	and	w26, w26, #0x3
	orr	w19, w19, w26, lsl #8
	str	w19, [x25, x30]
	ldrb	w26, [x22, x14]
	and	w26, w26, #0x3
	orr	w19, w19, w26, lsl #10
	str	w19, [x25, x30]
	ldrb	w26, [x22, x15]
	and	w26, w26, #0x3
	orr	w19, w19, w26, lsl #12
	str	w19, [x25, x30]
	ldrb	w26, [x22, x16]
	and	w26, w26, #0x3
	orr	w19, w19, w26, lsl #14
	str	w19, [x25, x30]
	ldrb	w26, [x22, x17]
	and	w26, w26, #0x3
	orr	w19, w19, w26, lsl #16
	str	w19, [x25, x30]
	ldrb	w26, [x22, x0]
	and	w26, w26, #0x3
	orr	w19, w19, w26, lsl #18
	str	w19, [x25, x30]
	ldrb	w26, [x22, x1]
	and	w26, w26, #0x3
	orr	w19, w19, w26, lsl #20
	str	w19, [x25, x30]
	ldrb	w26, [x22, x2]
	and	w26, w26, #0x3
	orr	w19, w19, w26, lsl #22
	str	w19, [x25, x30]
	ldrb	w26, [x22, x3]
	and	w26, w26, #0x3
	orr	w19, w19, w26, lsl #24
	str	w19, [x25, x30]
	ldrb	w26, [x22, x4]
	and	w26, w26, #0x3
	orr	w19, w19, w26, lsl #26
	str	w19, [x25, x30]
	ldrb	w26, [x22, x5]
	and	w26, w26, #0x3
	orr	w19, w19, w26, lsl #28
	str	w19, [x25, x30]
	ldrb	w22, [x22, x6]
	orr	w19, w19, w22, lsl #30
	str	w19, [x25, x30]
	b.ne	.LBB3_64
	add	x8, x8, #1
	cmp	x8, x9
	b.ne	.LBB3_63
.LBB3_66:
	ldrb	w8, [x20, #1]
	adrp	x25, rkf_wf_get_lut.sftemp
	ldur	x9, [x29, #-8]
	ldur	w19, [x29, #-16]
	ldr	w22, [sp, #24]
	orr	w8, w9, w8, lsl #8
	mov	w9, #26215
	movk	w9, #26214, lsl #16
	str	w8, [x20]
	ldrsw	x8, [x25, :lo12:rkf_wf_get_lut.sftemp]
	mul	x8, x8, x9
	lsr	x9, x8, #63
	asr	x8, x8, #33
	add	w8, w8, w9
	adrp	x9, rkf_wf_get_lut.stype
	str	w21, [x9, :lo12:rkf_wf_get_lut.stype]
.LBB3_67:
	cmp	w22, w8
	b.ne	.LBB3_69
.LBB3_68:
	mov	w0, wzr
	b	.LBB3_81
.LBB3_69:
	ldr	x0, [x20, #8]
	cbz	x0, .LBB3_71
	bl	kfree
	str	xzr, [x20, #8]
.LBB3_71:
	bl	epd_overlay_lut
	mov	w22, w0
	mov	x0, x20
	mov	w1, w22
	mov	w2, w19
	bl	parse_wf_data
	tbnz	w0, #31, .LBB3_82
	mov	w21, w0
	ldr	x1, [x20, #24]
	mov	x0, x20
	mov	w2, w21
	bl	rkf_lut_wf_table
	cmp	w22, #1
	b.ne	.LBB3_80
	ldr	x22, [x20, #24]
	cbz	w21, .LBB3_78
	mov	w8, wzr
	mov	x9, xzr
	mov	w10, w21
	add	x11, x22, #31
	add	x12, x22, #992
.LBB3_75:
	sxtw	x14, w8
	mov	x15, #-16
	add	x13, x11, x14
	add	x14, x12, x14
.LBB3_76:
	ldurb	w16, [x13, #-1]
	add	x15, x15, #16
	cmp	x15, #224
	strb	w16, [x13]
	sturb	w16, [x13, #-2]
	add	x13, x13, #64
	ldurb	w16, [x14, #-32]
	sturb	w16, [x14, #-64]
	strb	w16, [x14], #2
	b.lo	.LBB3_76
	add	x9, x9, #1
	add	w8, w8, #1024
	cmp	x9, x10
	b.ne	.LBB3_75
.LBB3_78:
	mov	x0, x22
	mov	w1, w21
	bl	epd_overlay_gray2_repair
	cbnz	w0, .LBB3_80
	lsl	w8, w21, #10
	mov	w9, #-6144
	add	w9, w8, w9
	mov	w10, #1
	sub	w11, w8, #1, lsl #12
	mov	w12, #-5120
	add	x9, x22, w9, sxtw
	add	w12, w8, w12
	add	x11, x22, w11, sxtw
	mov	w13, #2
	strb	w10, [x9, #991]
	strb	w10, [x9, #959]
	strb	w10, [x9, #1023]
	add	x9, x22, w12, sxtw
	sub	w12, w8, #3072
	sub	w8, w8, #2048
	strb	w10, [x11, #991]
	strb	w10, [x11, #959]
	add	x8, x22, w8, sxtw
	strb	w10, [x11, #1023]
	add	x10, x22, w12, sxtw
	strb	w13, [x9, #991]
	strb	w13, [x9, #959]
	strb	w13, [x9, #1023]
	strb	w13, [x10, #991]
	strb	w13, [x10, #959]
	strb	w13, [x10, #1023]
	strb	w13, [x8, #991]
	strb	w13, [x8, #959]
	strb	w13, [x8, #1023]
.LBB3_80:
	ldrb	w8, [x20]
	mov	w0, wzr
	bfi	w8, w21, #8, #24
	str	w8, [x20]
	str	w19, [x25, :lo12:rkf_wf_get_lut.sftemp]
.LBB3_81:
	ldp	x20, x19, [sp, #128]
	ldp	x22, x21, [sp, #112]
	ldp	x24, x23, [sp, #96]
	ldp	x26, x25, [sp, #80]
	ldp	x28, x27, [sp, #64]
	ldp	x29, x30, [sp, #48]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #144
	ret
.LBB3_82:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	_printk
	mov	w0, #-5
	b	.LBB3_81
.LBB3_83:
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	_printk
	mov	w0, #-12
	b	.LBB3_81
.LBB3_84:
	adrp	x0, .L.str.11
	add	x0, x0, :lo12:.L.str.11
	bl	_printk
	b	.LBB3_66
.Lfunc_end3:
	.size	rkf_wf_get_lut, .Lfunc_end3-rkf_wf_get_lut

	.p2align	2
	.type	parse_wf_data,@function
parse_wf_data:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-64]!
	stp	x20, x19, [sp, #48]
	mov	w20, #-1
	cmp	w1, #15
	stp	x24, x23, [sp, #16]
	stp	x22, x21, [sp, #32]
	mov	x29, sp
	b.hi	.LBB4_81
	adrp	x9, .LJTI4_0
	mov	w8, w1
	add	x9, x9, :lo12:.LJTI4_0
	mov	x19, x0
	adr	x10, .LBB4_2
	ldrh	w11, [x9, x8, lsl #1]
	add	x10, x10, x11, lsl #2
	br	x10
.LBB4_2:
	adrp	x8, global_waveform
	bic	w10, w2, w2, asr #31
	cmp	w10, #50
	mov	w11, #50
	csel	w10, w10, w11, lo
	mov	x9, xzr
	ldr	x8, [x8, :lo12:global_waveform]
	and	w10, w10, #0xff
	add	x11, x8, #212
.LBB4_3:
	cbz	x9, .LBB4_6
	sub	w12, w9, #1
	ldrb	w13, [x11, x9]
	add	x14, x8, x12
	ldrb	w14, [x14, #212]
	cmp	w13, w14
	b.lo	.LBB4_53
	cmp	w13, w10
	b.ls	.LBB4_7
	b	.LBB4_52
.LBB4_6:
	ldrb	w13, [x8, #212]
	cmp	w13, w10
	b.hi	.LBB4_52
.LBB4_7:
	add	x9, x9, #1
	cmp	x9, #51
	b.ne	.LBB4_3
	b	.LBB4_51
.LBB4_8:
	adrp	x8, global_waveform
	bic	w10, w2, w2, asr #31
	cmp	w10, #50
	mov	w11, #50
	csel	w10, w10, w11, lo
	mov	x9, xzr
	ldr	x8, [x8, :lo12:global_waveform]
	and	w10, w10, #0xff
	add	x11, x8, #340
.LBB4_9:
	cbz	x9, .LBB4_12
	sub	w12, w9, #1
	ldrb	w13, [x11, x9]
	add	x14, x8, x12
	ldrb	w14, [x14, #340]
	cmp	w13, w14
	b.lo	.LBB4_30
	cmp	w13, w10
	b.ls	.LBB4_13
	b	.LBB4_29
.LBB4_12:
	ldrb	w13, [x8, #340]
	cmp	w13, w10
	b.hi	.LBB4_29
.LBB4_13:
	add	x9, x9, #1
	cmp	x9, #51
	b.ne	.LBB4_9
	mov	x12, xzr
	b	.LBB4_30
.LBB4_15:
	adrp	x8, global_waveform
	bic	w10, w2, w2, asr #31
	cmp	w10, #50
	mov	w11, #50
	csel	w10, w10, w11, lo
	mov	x9, xzr
	ldr	x8, [x8, :lo12:global_waveform]
	and	w10, w10, #0xff
	add	x11, x8, #276
.LBB4_16:
	cbz	x9, .LBB4_19
	sub	w12, w9, #1
	ldrb	w13, [x11, x9]
	add	x14, x8, x12
	ldrb	w14, [x14, #276]
	cmp	w13, w14
	b.lo	.LBB4_62
	cmp	w13, w10
	b.ls	.LBB4_20
	b	.LBB4_61
.LBB4_19:
	ldrb	w13, [x8, #276]
	cmp	w13, w10
	b.hi	.LBB4_61
.LBB4_20:
	add	x9, x9, #1
	cmp	x9, #51
	b.ne	.LBB4_16
	mov	x12, xzr
	b	.LBB4_62
.LBB4_22:
	adrp	x8, global_waveform
	bic	w10, w2, w2, asr #31
	cmp	w10, #50
	mov	w11, #50
	csel	w10, w10, w11, lo
	mov	x9, xzr
	ldr	x8, [x8, :lo12:global_waveform]
	and	w10, w10, #0xff
	add	x11, x8, #404
.LBB4_23:
	cbz	x9, .LBB4_26
	sub	w12, w9, #1
	ldrb	w13, [x11, x9]
	add	x14, x8, x12
	ldrb	w14, [x14, #404]
	cmp	w13, w14
	b.lo	.LBB4_64
	cmp	w13, w10
	b.ls	.LBB4_27
	b	.LBB4_63
.LBB4_26:
	ldrb	w13, [x8, #404]
	cmp	w13, w10
	b.hi	.LBB4_63
.LBB4_27:
	add	x9, x9, #1
	cmp	x9, #51
	b.ne	.LBB4_23
	mov	x12, xzr
	b	.LBB4_64
.LBB4_29:
	sub	w12, w9, #1
.LBB4_30:
	add	x9, x8, x12, lsl #2
	adrp	x10, maxpic
	ldr	w9, [x9, #1364]
	b	.LBB4_78
.LBB4_31:
	adrp	x8, global_waveform
	bic	w10, w2, w2, asr #31
	cmp	w10, #50
	mov	w11, #50
	csel	w10, w10, w11, lo
	mov	x9, xzr
	ldr	x8, [x8, :lo12:global_waveform]
	and	w10, w10, #0xff
	add	x11, x8, #148
.LBB4_32:
	cbz	x9, .LBB4_35
	sub	w12, w9, #1
	ldrb	w13, [x11, x9]
	add	x14, x8, x12
	ldrb	w14, [x14, #148]
	cmp	w13, w14
	b.lo	.LBB4_66
	cmp	w13, w10
	b.ls	.LBB4_36
	b	.LBB4_65
.LBB4_35:
	ldrb	w13, [x8, #148]
	cmp	w13, w10
	b.hi	.LBB4_65
.LBB4_36:
	add	x9, x9, #1
	cmp	x9, #51
	b.ne	.LBB4_32
	mov	x12, xzr
	b	.LBB4_66
.LBB4_38:
	adrp	x8, global_waveform
	bic	w10, w2, w2, asr #31
	cmp	w10, #50
	mov	w11, #50
	csel	w10, w10, w11, lo
	mov	x9, xzr
	ldr	x8, [x8, :lo12:global_waveform]
	and	w10, w10, #0xff
	add	x11, x8, #468
.LBB4_39:
	cbz	x9, .LBB4_42
	sub	w12, w9, #1
	ldrb	w13, [x11, x9]
	add	x14, x8, x12
	ldrb	w14, [x14, #468]
	cmp	w13, w14
	b.lo	.LBB4_75
	cmp	w13, w10
	b.ls	.LBB4_43
	b	.LBB4_74
.LBB4_42:
	ldrb	w13, [x8, #468]
	cmp	w13, w10
	b.hi	.LBB4_74
.LBB4_43:
	add	x9, x9, #1
	cmp	x9, #51
	b.ne	.LBB4_39
	mov	x12, xzr
	b	.LBB4_75
.LBB4_45:
	adrp	x8, global_waveform
	bic	w10, w2, w2, asr #31
	cmp	w10, #50
	mov	w11, #50
	csel	w10, w10, w11, lo
	mov	x9, xzr
	ldr	x8, [x8, :lo12:global_waveform]
	and	w10, w10, #0xff
	add	x11, x8, #212
.LBB4_46:
	cbz	x9, .LBB4_49
	sub	w12, w9, #1
	ldrb	w13, [x11, x9]
	add	x14, x8, x12
	ldrb	w14, [x14, #212]
	cmp	w13, w14
	b.lo	.LBB4_53
	cmp	w13, w10
	b.ls	.LBB4_50
	b	.LBB4_52
.LBB4_49:
	ldrb	w13, [x8, #212]
	cmp	w13, w10
	b.hi	.LBB4_52
.LBB4_50:
	add	x9, x9, #1
	cmp	x9, #51
	b.ne	.LBB4_46
.LBB4_51:
	mov	x12, xzr
	b	.LBB4_53
.LBB4_52:
	sub	w12, w9, #1
.LBB4_53:
	add	x9, x8, x12, lsl #2
	adrp	x10, maxpic
	ldr	w9, [x9, #852]
	b	.LBB4_78
.LBB4_54:
	adrp	x8, global_waveform
	bic	w10, w2, w2, asr #31
	cmp	w10, #50
	mov	w11, #50
	csel	w10, w10, w11, lo
	mov	x9, xzr
	ldr	x8, [x8, :lo12:global_waveform]
	and	w10, w10, #0xff
	add	x11, x8, #532
.LBB4_55:
	cbz	x9, .LBB4_58
	sub	w12, w9, #1
	ldrb	w13, [x11, x9]
	add	x14, x8, x12
	ldrb	w14, [x14, #532]
	cmp	w13, w14
	b.lo	.LBB4_77
	cmp	w13, w10
	b.ls	.LBB4_59
	b	.LBB4_76
.LBB4_58:
	ldrb	w13, [x8, #532]
	cmp	w13, w10
	b.hi	.LBB4_76
.LBB4_59:
	add	x9, x9, #1
	cmp	x9, #51
	b.ne	.LBB4_55
	mov	x12, xzr
	b	.LBB4_77
.LBB4_61:
	sub	w12, w9, #1
.LBB4_62:
	add	x9, x8, x12, lsl #2
	adrp	x10, maxpic
	ldr	w9, [x9, #1108]
	b	.LBB4_78
.LBB4_63:
	sub	w12, w9, #1
.LBB4_64:
	add	x9, x8, x12, lsl #2
	adrp	x10, maxpic
	ldr	w9, [x9, #1620]
	b	.LBB4_78
.LBB4_65:
	sub	w12, w9, #1
.LBB4_66:
	add	x9, x8, x12, lsl #2
	mov	w1, #3520
	ldr	w9, [x9, #596]
	add	x24, x8, x9
	ldrb	w20, [x24]
	add	x23, x20, #15
	lsr	x8, x23, #2
	and	x22, x8, #0x7c
	mov	x0, x22
	bl	__kmalloc
	cbz	x0, .LBB4_82
	add	x1, x24, #4
	mov	x2, x22
	mov	x21, x0
	bl	memcpy
	lsl	w8, w23, #6
	mov	w1, #3520
	and	w0, w8, #0x7c00
	bl	__kmalloc
	cbz	x0, .LBB4_83
	cbz	w20, .LBB4_73
	lsr	w11, w23, #4
	mov	w10, #16384
	cmp	w11, #1
	mov	w12, #1365
	mov	w8, wzr
	mov	w9, wzr
	movk	w10, #21, lsl #16
	csinc	w11, w11, wzr, gt
	movk	w12, #5440, lsl #16
	mov	x13, x21
.LBB4_70:
	mov	w15, wzr
	mov	w14, wzr
	ldr	w16, [x13]
.LBB4_71:
	asr	w17, w16, w15
	add	w3, w8, w14
	and	w1, w17, #0x3
	lsl	w17, w17, #30
	add	w4, w3, #3
	add	w14, w14, #16
	mul	w2, w1, w10
	add	w15, w15, #2
	bfi	w17, w1, #12, #2
	cmp	w14, #256
	orr	w17, w17, w2
	add	w2, w3, #1
	madd	w17, w1, w12, w17
	add	w1, w3, #2
	str	w17, [x0, w2, sxtw #2]
	add	w2, w3, #4
	str	w17, [x0, w1, sxtw #2]
	add	w1, w3, #5
	str	w17, [x0, w4, sxtw #2]
	add	w4, w3, #6
	str	w17, [x0, w2, sxtw #2]
	add	w2, w3, #7
	str	w17, [x0, w1, sxtw #2]
	add	w1, w3, #8
	str	w17, [x0, w4, sxtw #2]
	add	w4, w3, #9
	str	w17, [x0, w2, sxtw #2]
	add	w2, w3, #10
	str	w17, [x0, w1, sxtw #2]
	add	w1, w3, #11
	str	w17, [x0, w4, sxtw #2]
	str	w17, [x0, w2, sxtw #2]
	add	w2, w3, #12
	str	w17, [x0, w1, sxtw #2]
	add	w1, w3, #13
	str	w17, [x0, w3, sxtw #2]
	str	w17, [x0, w2, sxtw #2]
	add	w2, w3, #14
	str	w17, [x0, w1, sxtw #2]
	add	w1, w3, #15
	str	w17, [x0, w2, sxtw #2]
	str	w17, [x0, w1, sxtw #2]
	b.ne	.LBB4_71
	add	x13, x13, #4
	add	w9, w9, #1
	add	w8, w8, w14
	cmp	w9, w11
	b.ne	.LBB4_70
.LBB4_73:
	str	x0, [x19, #8]
	mov	x0, x21
	bl	kfree
	b	.LBB4_81
.LBB4_74:
	sub	w12, w9, #1
.LBB4_75:
	add	x9, x8, x12, lsl #2
	adrp	x10, maxpic
	ldr	w9, [x9, #1876]
	b	.LBB4_78
.LBB4_76:
	sub	w12, w9, #1
.LBB4_77:
	add	x9, x8, x12, lsl #2
	adrp	x10, maxpic
	ldr	w9, [x9, #2132]
.LBB4_78:
	ldrb	w10, [x10, :lo12:maxpic]
	add	x23, x8, x9
	mov	w8, #16
	mov	w9, #32
	mov	w1, #3520
	cmp	w10, #0
	ldrb	w20, [x23]
	csel	w8, w9, w8, ne
	umull	x9, w8, w20
	mul	x8, x9, x8
	lsr	x21, x8, #2
	mov	x0, x21
	bl	__kmalloc
	cbz	x0, .LBB4_80
	add	x1, x23, #4
	mov	x2, x21
	mov	x22, x0
	bl	memcpy
	str	x22, [x19, #8]
	b	.LBB4_81
.LBB4_80:
	mov	w20, #-1
	str	xzr, [x19, #8]
.LBB4_81:
	mov	w0, w20
	ldp	x20, x19, [sp, #48]
	ldp	x22, x21, [sp, #32]
	ldp	x24, x23, [sp, #16]
	ldp	x29, x30, [sp], #64
	ldr	x30, [x18, #-8]!
	ret
.LBB4_82:
	mov	w20, #-1
	b	.LBB4_81
.LBB4_83:
	mov	x0, x21
	str	xzr, [x19, #8]
	bl	kfree
	mov	w20, #-1
	b	.LBB4_81
.Lfunc_end4:
	.size	parse_wf_data, .Lfunc_end4-parse_wf_data
	.section	.rodata,"a",@progbits
	.p2align	1
.LJTI4_0:
	.hword	(.LBB4_31-.LBB4_2)>>2
	.hword	(.LBB4_38-.LBB4_2)>>2
	.hword	(.LBB4_45-.LBB4_2)>>2
	.hword	(.LBB4_2-.LBB4_2)>>2
	.hword	(.LBB4_15-.LBB4_2)>>2
	.hword	(.LBB4_8-.LBB4_2)>>2
	.hword	(.LBB4_22-.LBB4_2)>>2
	.hword	(.LBB4_54-.LBB4_2)>>2
	.hword	(.LBB4_2-.LBB4_2)>>2
	.hword	(.LBB4_81-.LBB4_2)>>2
	.hword	(.LBB4_81-.LBB4_2)>>2
	.hword	(.LBB4_8-.LBB4_2)>>2
	.hword	(.LBB4_22-.LBB4_2)>>2
	.hword	(.LBB4_15-.LBB4_2)>>2
	.hword	(.LBB4_2-.LBB4_2)>>2
	.hword	(.LBB4_8-.LBB4_2)>>2

	.text
	.p2align	2
	.type	rkf_lut_wf_table,@function
rkf_lut_wf_table:
	adrp	x8, maxpic
	mov	w10, #32
	ldrb	w9, [x8, :lo12:maxpic]
	mov	w8, #16
	cmp	w9, #0
	csel	w10, w10, w8, ne
	cmp	w2, #1
	b.lt	.LBB5_13
	mov	x11, xzr
	mov	x12, xzr
	lsr	w13, w10, #4
	mov	w8, w2
.LBB5_2:
	mul	w15, w10, w12
	ldr	x16, [x0, #8]
	mov	x14, xzr
	mul	w15, w15, w13
	add	x15, x16, w15, sxtw #2
	mov	x16, x11
.LBB5_3:
	mul	x3, x14, x13
	mov	w17, wzr
	mov	x4, x10
	mov	x5, x16
	add	x3, x15, x3, lsl #2
.LBB5_4:
	lsr	w6, w17, #5
	and	w7, w17, #0x1e
	add	w17, w17, #2
	subs	x4, x4, #1
	ldr	w6, [x3, w6, uxtw #2]
	lsr	w6, w6, w7
	and	w6, w6, #0x3
	strb	w6, [x1, w5, uxtw]
	add	x5, x5, #1
	b.ne	.LBB5_4
	add	x14, x14, #1
	add	x16, x16, #32
	cmp	x14, x10
	b.ne	.LBB5_3
	add	x12, x12, #1
	add	x11, x11, #1024
	cmp	x12, x8
	b.ne	.LBB5_2
	adrp	x10, need_pic
	ldr	w10, [x10, :lo12:need_pic]
	cmp	w10, #16
	cset	w10, eq
	and	w9, w9, w10
	cmp	w9, #1
	b.ne	.LBB5_13
	cmp	w2, #1
	b.lt	.LBB5_13
	mov	w9, wzr
	mov	x10, xzr
	add	x11, x1, #16
	add	x12, x1, #7
.LBB5_10:
	and	x13, x9, #0x3ffffff
	and	x14, x10, #0x3fffff
	mov	x15, #-2
	add	x13, x11, x13, lsl #6
	add	x14, x12, x14, lsl #10
.LBB5_11:
	ldurb	w16, [x13, #-16]
	add	x15, x15, #2
	cmp	x15, #30
	sturb	w16, [x14, #-7]
	ldurb	w16, [x13, #-14]
	sturb	w16, [x14, #-6]
	ldurb	w16, [x13, #-12]
	sturb	w16, [x14, #-5]
	ldurb	w16, [x13, #-10]
	sturb	w16, [x14, #-4]
	ldurb	w16, [x13, #-8]
	sturb	w16, [x14, #-3]
	ldurb	w16, [x13, #-6]
	sturb	w16, [x14, #-2]
	ldurb	w16, [x13, #-4]
	sturb	w16, [x14, #-1]
	ldurb	w16, [x13, #-2]
	strb	w16, [x14]
	ldrb	w16, [x13]
	strb	w16, [x14, #1]
	ldrb	w16, [x13, #2]
	strb	w16, [x14, #2]
	ldrb	w16, [x13, #4]
	strb	w16, [x14, #3]
	ldrb	w16, [x13, #6]
	strb	w16, [x14, #4]
	ldrb	w16, [x13, #8]
	strb	w16, [x14, #5]
	ldrb	w16, [x13, #10]
	strb	w16, [x14, #6]
	ldrb	w16, [x13, #12]
	strb	w16, [x14, #7]
	ldrb	w16, [x13, #14]
	add	x13, x13, #64
	strb	w16, [x14, #8]
	add	x14, x14, #32
	b.lo	.LBB5_11
	add	x10, x10, #1
	add	w9, w9, #16
	cmp	x10, x8
	b.ne	.LBB5_10
.LBB5_13:
	ret
.Lfunc_end5:
	.size	rkf_lut_wf_table, .Lfunc_end5-rkf_lut_wf_table

	.p2align	2
	.type	rkf_wf_normal_fix,@function
rkf_wf_normal_fix:
	cmp	w1, #1
	b.lt	.LBB6_5
	mov	w9, w1
	mov	x8, xzr
	lsl	x9, x9, #10
	b	.LBB6_3
.LBB6_2:
	ldrb	w11, [x10, #30]
	add	x8, x8, #1024
	cmp	x9, x8
	strb	wzr, [x10, #958]
	strb	wzr, [x10, #1022]
	strb	w11, [x10, #31]
	strb	w11, [x10, #29]
	strb	w11, [x10, #61]
	b.eq	.LBB6_5
.LBB6_3:
	add	x10, x0, w8, sxtw
	cbz	w2, .LBB6_2
	ldrb	w11, [x10, #990]
	strb	wzr, [x10, #990]
	strb	w11, [x10, #989]
	strb	w11, [x10, #1021]
	strb	w11, [x10, #957]
	b	.LBB6_2
.LBB6_5:
	lsl	w8, w1, #10
	mov	w10, #1
	sub	w9, w8, #1, lsl #12
	sub	w11, w8, #3072
	sub	w8, w8, #2048
	mov	w12, #2
	add	x9, x0, w9, sxtw
	add	x11, x0, w11, sxtw
	add	x8, x0, w8, sxtw
	strb	w10, [x9, #991]
	strb	w10, [x9, #959]
	strb	w10, [x9, #1023]
	strb	w12, [x11, #991]
	strb	w12, [x11, #959]
	strb	w12, [x11, #1023]
	strb	w12, [x8, #991]
	strb	w12, [x8, #959]
	strb	w12, [x8, #1023]
	ret
.Lfunc_end6:
	.size	rkf_wf_normal_fix, .Lfunc_end6-rkf_wf_normal_fix

	.p2align	2
	.type	rkf_wf_regal_fix,@function
rkf_wf_regal_fix:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!
	stp	x20, x19, [sp, #16]
	mov	x29, sp
	mov	w20, w1
	mov	x19, x0
	bl	epd_regal_repair
	cbnz	w0, .LBB7_4
	cmp	w20, #1
	b.lt	.LBB7_4
	mov	w9, w20
	mov	x8, xzr
	lsl	x9, x9, #10
.LBB7_3:
	add	x10, x19, w8, sxtw
	add	x8, x8, #1024
	cmp	x9, x8
	ldrb	w11, [x10, #94]
	ldrb	w12, [x10, #158]
	strb	w11, [x10, #95]
	strb	w11, [x10, #93]
	ldrb	w11, [x10, #222]
	strb	w12, [x10, #159]
	strb	w12, [x10, #157]
	ldrb	w12, [x10, #286]
	strb	w11, [x10, #223]
	strb	w11, [x10, #221]
	ldrb	w11, [x10, #350]
	strb	w12, [x10, #287]
	strb	w12, [x10, #285]
	ldrb	w12, [x10, #414]
	strb	w11, [x10, #351]
	strb	w11, [x10, #349]
	ldrb	w11, [x10, #478]
	strb	w12, [x10, #415]
	strb	w12, [x10, #413]
	ldrb	w12, [x10, #542]
	strb	w11, [x10, #479]
	strb	w11, [x10, #477]
	ldrb	w11, [x10, #606]
	strb	w12, [x10, #543]
	strb	w12, [x10, #541]
	ldrb	w12, [x10, #670]
	strb	w11, [x10, #607]
	strb	w11, [x10, #605]
	ldrb	w11, [x10, #734]
	strb	w12, [x10, #671]
	strb	w12, [x10, #669]
	ldrb	w12, [x10, #798]
	strb	w11, [x10, #735]
	strb	w11, [x10, #733]
	ldrb	w11, [x10, #862]
	strb	w12, [x10, #799]
	strb	w12, [x10, #797]
	ldrb	w12, [x10, #926]
	strb	w11, [x10, #863]
	strb	w11, [x10, #861]
	strb	w12, [x10, #927]
	strb	w12, [x10, #925]
	b.ne	.LBB7_3
.LBB7_4:
	ldp	x20, x19, [sp, #16]
	ldp	x29, x30, [sp], #32
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end7:
	.size	rkf_wf_regal_fix, .Lfunc_end7-rkf_wf_regal_fix

	.type	global_waveform,@object
	.local	global_waveform
	.comm	global_waveform,8,8
	.type	.L.str,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rkf: failed to check RKF file version\n"
	.size	.L.str, 39

	.type	.L.str.1,@object
.L.str.1:
	.asciz	"rkf: failed to check RKF file format\n"
	.size	.L.str.1, 38

	.type	.L.str.2,@object
.L.str.2:
	.asciz	"rkf: failed to check crc RKF waveform\n"
	.size	.L.str.2, 39

	.type	maxpic,@object
	.local	maxpic
	.comm	maxpic,1,4
	.type	rkf_wf_get_lut.stype,@object
	.data
	.p2align	2
rkf_wf_get_lut.stype:
	.word	16
	.size	rkf_wf_get_lut.stype, 4

	.type	rkf_wf_get_lut.sftemp,@object
	.p2align	2
rkf_wf_get_lut.sftemp:
	.word	4294967295
	.size	rkf_wf_get_lut.sftemp, 4

	.type	need_pic,@object
	.p2align	2
need_pic:
	.word	16
	.size	need_pic, 4

	.type	.L.str.3,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"rkf waveform get frame number failed\n"
	.size	.L.str.3, 38

	.type	.L.str.4,@object
.L.str.4:
	.asciz	"kzalloc output->data failed\n"
	.size	.L.str.4, 29

	.type	.L.str.5,@object
.L.str.5:
	.asciz	"rkf:v1.0"
	.size	.L.str.5, 9

	.type	.L.str.6,@object
.L.str.6:
	.asciz	"rkf:v2.0"
	.size	.L.str.6, 9

	.type	.L.str.7,@object
.L.str.7:
	.asciz	"rkf: input waveform version: %s, gray level: %d\n"
	.size	.L.str.7, 49

	.type	.L.str.8,@object
.L.str.8:
	.asciz	"rkf waveform"
	.size	.L.str.8, 13

	.type	.L.str.9,@object
.L.str.9:
	.asciz	"rkf: check format failed\n"
	.size	.L.str.9, 26

	.type	.L.str.10,@object
.L.str.10:
	.asciz	"[EINK]: waveform crc err readcrc = %x crccheck = %x\n"
	.size	.L.str.10, 53

	.type	crc32_table,@object
	.local	crc32_table
	.comm	crc32_table,1024,4
	.type	.L.str.11,@object
.L.str.11:
	.asciz	"wf_table or lut_data is NULL\n"
	.size	.L.str.11, 30

	.ident	"Android (8508608, based on r450784e) clang version 14.0.7 (https://android.googlesource.com/toolchain/llvm-project 4c603efb0cca074e9238af8b4106c30add4418f6)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
