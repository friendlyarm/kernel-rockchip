// SPDX-License-Identifier: GPL-2.0
/*
 * Copyright (c) 2020-2024 Rockchip Electronics Co., Ltd.
 *
 * Author: Zorro Liu <zorro.liu@rock-chips.com>
 */

	.text
	.file	"ebc_dev_y8.c"

	.section	.initcall6s.init,"a",@progbits
__initcall__kmod_rkebc__466_4742_ebc_init6s:
.Ltmp0:
	.word	ebc_init-.Ltmp0
	.text



	.globl	refresh_new_image
	.p2align	2
	.type	refresh_new_image,@function
refresh_new_image:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-96]!
	ldp	w9, w8, [x6, #80]
	stp	x28, x27, [sp, #16]
	stp	x26, x25, [sp, #32]
	stp	x24, x23, [sp, #48]
	add	w10, w8, #7
	cmp	w8, #0
	csel	w11, w10, w8, lt
	cmp	w9, #1
	stp	x22, x21, [sp, #64]
	stp	x20, x19, [sp, #80]
	b.lt	.LBB0_170
	asr	w7, w11, #3
	mov	w10, wzr
	sub	w11, w7, #1
	mov	w12, #-268435456
	mov	x13, #1030792151040
	add	x14, x11, #1
	mov	x15, #263882790666240
	mov	x16, #67553994410557440
	mov	x17, #-1152921504606846976
	mov	x6, #-2305843009213693952
	mov	x25, #63050394783186944
	mov	x26, #246290604621824
	mov	w28, #15204352
	mov	w29, #232
	b	.LBB0_4
.LBB0_2:
	add	x1, x1, x14, lsl #3
	add	x0, x0, x30
	add	x5, x5, x30
	add	x4, x4, x30
	add	x3, x3, x30
	add	x2, x2, x30
.LBB0_3:
	add	w10, w10, #1
	cmp	w10, w9
	b.eq	.LBB0_170
.LBB0_4:
	cmp	w8, #8
	b.lt	.LBB0_3
	mov	x30, xzr
	mov	w11, w7
	b	.LBB0_8
.LBB0_6:
	mov	x24, xzr
.LBB0_7:
	bic	x20, x20, x22
	and	x19, x22, x19
	orr	x19, x20, x19
	str	x21, [x5, x30]
	subs	w11, w11, #1
	str	x19, [x0, x30]
	str	x24, [x4, x30]
	add	x30, x30, #8
	b.eq	.LBB0_2
.LBB0_8:
	ldr	x24, [x4, x30]
	ldr	x23, [x2, x30]
	ldr	x20, [x0, x30]
	ldr	x19, [x3, x30]
	cbnz	x24, .LBB0_29
	and	x24, x23, #0xf0
	cmp	w24, #240
	b.ne	.LBB0_76
	mvn	w21, w19
	tst	x21, #0xf0
	cset	w21, eq
	tst	x19, #0xf8
	cset	w22, eq
	orr	w21, w21, w22
	mov	w22, #255
.LBB0_11:
	and	x24, x23, #0xf000
	cmp	w24, #15, lsl #12
	b.ne	.LBB0_78
	mvn	w24, w19
	tst	x19, #0xf800
	and	x24, x24, #0xf000
	orr	x22, x22, #0xff00
	ccmp	x24, #0, #4, ne
	orr	x24, x21, #0x100
	csel	x21, x24, x21, eq
.LBB0_13:
	and	x24, x23, #0xf00000
	cmp	x24, #3840, lsl #12
	b.ne	.LBB0_80
	mvn	w24, w19
	tst	x19, #0xf80000
	and	x24, x24, #0xf00000
	orr	x22, x22, #0xff0000
	ccmp	x24, #0, #4, ne
	orr	x24, x21, #0x10000
	csel	x21, x24, x21, eq
.LBB0_15:
	and	x24, x23, #0xf0000000
	cmp	w24, w12
	b.ne	.LBB0_82
	mvn	w24, w19
	tst	x19, #0xf8000000
	and	x24, x24, #0xf0000000
	orr	x22, x22, #0xff000000
	ccmp	x24, #0, #4, ne
	orr	x24, x21, #0x1000000
	csel	x21, x24, x21, eq
.LBB0_17:
	and	x24, x23, #0xf000000000
	cmp	x24, x13
	b.ne	.LBB0_84
	mvn	x24, x19
	tst	x19, #0xf800000000
	and	x24, x24, #0xf000000000
	orr	x22, x22, #0xff00000000
	ccmp	x24, #0, #4, ne
	orr	x24, x21, #0x100000000
	csel	x21, x24, x21, eq
.LBB0_19:
	and	x24, x23, #0xf00000000000
	cmp	x24, x15
	b.ne	.LBB0_86
	mvn	x24, x19
	tst	x19, #0xf80000000000
	and	x24, x24, #0xf00000000000
	orr	x22, x22, #0xff0000000000
	ccmp	x24, #0, #4, ne
	orr	x24, x21, #0x10000000000
	csel	x21, x24, x21, eq
.LBB0_21:
	and	x24, x23, #0xf0000000000000
	cmp	x24, x16
	b.ne	.LBB0_88
	mvn	x24, x19
	tst	x19, #0xf8000000000000
	and	x24, x24, #0xf0000000000000
	orr	x22, x22, #0xff000000000000
	ccmp	x24, #0, #4, ne
	orr	x24, x21, #0x1000000000000
	csel	x21, x24, x21, eq
.LBB0_23:
	lsr	x24, x23, #60
	cmp	x24, #15
	b.lo	.LBB0_90
	orr	x22, x22, #0xff00000000000000
	lsr	x23, x19, #59
	cmp	x23, #30
	b.hi	.LBB0_27
	and	x23, x19, #0xf800000000000000
	cbz	x23, .LBB0_27
	cmp	x23, x17
	b.ne	.LBB0_6
.LBB0_27:
	mov	x24, xzr
.LBB0_28:
	orr	x21, x21, #0x100000000000000
	b	.LBB0_7
.LBB0_29:
	ldr	x21, [x5, x30]
	tst	x24, #0xff
	ldr	x25, [x1, x30]
	b.eq	.LBB0_33
	mvn	w22, w25
	tst	x22, #0xf0
	cset	w26, ne
	tst	x22, x29
	cset	w22, ne
	and	w26, w26, w22
	mov	x22, xzr
	tbnz	w26, #0, .LBB0_35
	and	x26, x20, #0xf0
	cmp	x26, #240
	b.ne	.LBB0_35
	and	x26, x23, #0xff
	cbnz	x26, .LBB0_35
.LBB0_33:
	and	x21, x21, #0xffffffffffffff00
	and	x24, x24, #0xffffffffffffff00
	and	x26, x23, #0xf0
	cmp	w26, #240
	b.ne	.LBB0_116
	mvn	w22, w19
	tst	x22, #0xf0
	cset	w22, eq
	tst	x19, #0xf8
	cset	w26, eq
	orr	w22, w22, w26
	orr	x21, x21, x22
	mov	w22, #255
.LBB0_35:
	tst	x24, #0xff00
	b.eq	.LBB0_39
.LBB0_36:
	mvn	w26, w25
	mov	w29, #59392
	tst	x26, #0xf000
	cset	w27, ne
	tst	x26, x29
	cset	w26, ne
	and	w26, w27, w26
	tbnz	w26, #0, .LBB0_147
	and	x26, x20, #0xf000
	cmp	x26, #15, lsl #12
	b.ne	.LBB0_147
	and	x26, x23, #0xff00
	mov	w29, #232
	cbnz	x26, .LBB0_41
.LBB0_39:
	and	x21, x21, #0xffffffffffff00ff
	and	x24, x24, #0xffffffffffff00ff
	and	x26, x23, #0xf000
	cmp	w26, #15, lsl #12
	b.ne	.LBB0_118
	mvn	w26, w19
	tst	x19, #0xf800
	and	x26, x26, #0xf000
	orr	x22, x22, #0xff00
	ccmp	x26, #0, #4, ne
	orr	x26, x21, #0x100
	csel	x21, x26, x21, eq
.LBB0_41:
	tst	x24, #0xff0000
	b.eq	.LBB0_45
.LBB0_42:
	mvn	w26, w25
	tst	x26, #0xf00000
	cset	w27, ne
	tst	x26, x28
	cset	w26, ne
	and	w26, w27, w26
	tbnz	w26, #0, .LBB0_47
	and	x26, x20, #0xf00000
	cmp	x26, #3840, lsl #12
	b.ne	.LBB0_47
	and	x26, x23, #0xff0000
	cbnz	x26, .LBB0_47
.LBB0_45:
	and	x21, x21, #0xffffffffff00ffff
	and	x24, x24, #0xffffffffff00ffff
	and	x26, x23, #0xf00000
	cmp	x26, #3840, lsl #12
	b.ne	.LBB0_122
	mvn	w26, w19
	tst	x19, #0xf80000
	and	x26, x26, #0xf00000
	orr	x22, x22, #0xff0000
	ccmp	x26, #0, #4, ne
	orr	x26, x21, #0x10000
	csel	x21, x26, x21, eq
.LBB0_47:
	tst	x24, #0xff000000
	b.eq	.LBB0_51
.LBB0_48:
	mvn	w26, w25
	mov	w28, #-402653184
	tst	x26, #0xf0000000
	cset	w27, ne
	tst	x26, x28
	cset	w26, ne
	and	w26, w27, w26
	tbnz	w26, #0, .LBB0_115
	and	x26, x20, #0xf0000000
	cmp	x26, x12
	b.ne	.LBB0_115
	and	x26, x23, #0xff000000
	mov	w28, #15204352
	cbnz	x26, .LBB0_53
.LBB0_51:
	and	x21, x21, #0xffffffff00ffffff
	and	x24, x24, #0xffffffff00ffffff
	and	x26, x23, #0xf0000000
	cmp	w26, w12
	b.ne	.LBB0_126
	mvn	w26, w19
	tst	x19, #0xf8000000
	and	x26, x26, #0xf0000000
	orr	x22, x22, #0xff000000
	ccmp	x26, #0, #4, ne
	orr	x26, x21, #0x1000000
	csel	x21, x26, x21, eq
.LBB0_53:
	tst	x24, #0xff00000000
	b.eq	.LBB0_57
	bics	xzr, x13, x25
	mov	x27, #996432412672
	cset	w26, ne
	bics	xzr, x27, x25
	cset	w27, ne
	and	w26, w26, w27
	tbnz	w26, #0, .LBB0_59
	and	x26, x20, #0xf000000000
	cmp	x26, x13
	b.ne	.LBB0_59
	and	x26, x23, #0xff00000000
	cbnz	x26, .LBB0_59
.LBB0_57:
	and	x21, x21, #0xffffff00ffffffff
	and	x24, x24, #0xffffff00ffffffff
	and	x26, x23, #0xf000000000
	cmp	x26, x13
	b.ne	.LBB0_128
	mvn	x26, x19
	tst	x19, #0xf800000000
	and	x26, x26, #0xf000000000
	orr	x22, x22, #0xff00000000
	ccmp	x26, #0, #4, ne
	orr	x26, x21, #0x100000000
	csel	x21, x26, x21, eq
.LBB0_59:
	tst	x24, #0xff0000000000
	b.eq	.LBB0_63
.LBB0_60:
	bics	xzr, x15, x25
	mov	x27, #255086697644032
	cset	w26, ne
	bics	xzr, x27, x25
	cset	w27, ne
	and	w26, w26, w27
	tbnz	w26, #0, .LBB0_65
	and	x26, x20, #0xf00000000000
	cmp	x26, x15
	b.ne	.LBB0_65
	and	x26, x23, #0xff0000000000
	cbnz	x26, .LBB0_65
.LBB0_63:
	and	x21, x21, #0xffff00ffffffffff
	and	x24, x24, #0xffff00ffffffffff
	and	x26, x23, #0xf00000000000
	cmp	x26, x15
	b.ne	.LBB0_130
	mvn	x26, x19
	tst	x19, #0xf80000000000
	and	x26, x26, #0xf00000000000
	orr	x22, x22, #0xff0000000000
	ccmp	x26, #0, #4, ne
	orr	x26, x21, #0x10000000000
	csel	x21, x26, x21, eq
.LBB0_65:
	tst	x24, #0xff000000000000
	b.eq	.LBB0_69
.LBB0_66:
	bics	xzr, x16, x25
	mov	x27, #65302194596872192
	cset	w26, ne
	bics	xzr, x27, x25
	cset	w27, ne
	and	w26, w26, w27
	tbnz	w26, #0, .LBB0_71
	and	x26, x20, #0xf0000000000000
	cmp	x26, x16
	b.ne	.LBB0_71
	and	x26, x23, #0xff000000000000
	cbnz	x26, .LBB0_71
.LBB0_69:
	and	x21, x21, #0xff00ffffffffffff
	and	x24, x24, #0xff00ffffffffffff
	and	x26, x23, #0xf0000000000000
	cmp	x26, x16
	b.ne	.LBB0_132
	mvn	x26, x19
	tst	x19, #0xf8000000000000
	and	x26, x26, #0xf0000000000000
	orr	x22, x22, #0xff000000000000
	ccmp	x26, #0, #4, ne
	orr	x26, x21, #0x1000000000000
	csel	x21, x26, x21, eq
.LBB0_71:
	lsr	x26, x24, #56
	cbnz	x26, .LBB0_160
.LBB0_72:
	and	x21, x21, #0xffffffffffffff
	lsr	x25, x23, #60
	cmp	x25, #15
	b.lo	.LBB0_134
	orr	x22, x22, #0xff00000000000000
	mov	x25, #63050394783186944
	mov	x26, #246290604621824
	lsr	x23, x19, #59
	cmp	x23, #30
	b.hi	.LBB0_28
	and	x23, x19, #0xf800000000000000
	cbz	x23, .LBB0_28
	cmp	x23, x17
	b.eq	.LBB0_28
	b	.LBB0_7
.LBB0_76:
	cbnz	w24, .LBB0_93
	mov	x22, xzr
	and	x20, x20, #0xffffffffffffff00
	mov	w21, #1
	b	.LBB0_11
.LBB0_78:
	and	x20, x20, #0xffffffffffff00ff
	cbnz	w24, .LBB0_95
	orr	x21, x21, #0x100
	b	.LBB0_13
.LBB0_80:
	and	x20, x20, #0xffffffffff00ffff
	cbnz	x24, .LBB0_97
	orr	x21, x21, #0x10000
	b	.LBB0_15
.LBB0_82:
	cbnz	w24, .LBB0_99
	and	x20, x20, #0xffffffff00ffffff
	orr	x21, x21, #0x1000000
	b	.LBB0_17
.LBB0_84:
	cbnz	x24, .LBB0_101
	and	x20, x20, #0xffffff00ffffffff
	orr	x21, x21, #0x100000000
	b	.LBB0_19
.LBB0_86:
	and	x20, x20, #0xffff00ffffffffff
	cbnz	x24, .LBB0_103
	orr	x21, x21, #0x10000000000
	b	.LBB0_21
.LBB0_88:
	and	x20, x20, #0xff00ffffffffffff
	cbnz	x24, .LBB0_105
	orr	x21, x21, #0x1000000000000
	b	.LBB0_23
.LBB0_90:
	and	x23, x23, #0xf000000000000000
	cmp	x23, x6
	b.eq	.LBB0_107
	mov	x24, xzr
	cbnz	x23, .LBB0_166
.LBB0_92:
	and	x20, x20, #0xffffffffffffff
	b	.LBB0_28
.LBB0_93:
	cmp	w24, #224
	b.ne	.LBB0_108
	and	x20, x20, #0xffffffffffffff00
	mov	x22, xzr
	orr	x20, x20, #0xf0
	mov	w21, #1
	b	.LBB0_11
.LBB0_95:
	cmp	w24, #14, lsl #12
	b.ne	.LBB0_109
	orr	x20, x20, #0xf000
	orr	x21, x21, #0x100
	b	.LBB0_13
.LBB0_97:
	cmp	x24, #3584, lsl #12
	b.ne	.LBB0_110
	orr	x20, x20, #0xf00000
	orr	x21, x21, #0x10000
	b	.LBB0_15
.LBB0_99:
	and	x20, x20, #0xffffffff00ffffff
	mov	w27, #-536870912
	cmp	w24, w27
	b.ne	.LBB0_111
	orr	x20, x20, #0xf0000000
	orr	x21, x21, #0x1000000
	b	.LBB0_17
.LBB0_101:
	and	x20, x20, #0xffffff00ffffffff
	mov	x27, #962072674304
	cmp	x24, x27
	b.ne	.LBB0_112
	orr	x20, x20, #0xf000000000
	orr	x21, x21, #0x100000000
	b	.LBB0_19
.LBB0_103:
	cmp	x24, x26
	b.ne	.LBB0_113
	orr	x20, x20, #0xf00000000000
	orr	x21, x21, #0x10000000000
	b	.LBB0_21
.LBB0_105:
	cmp	x24, x25
	b.ne	.LBB0_114
	orr	x20, x20, #0xf0000000000000
	orr	x21, x21, #0x1000000000000
	b	.LBB0_23
.LBB0_107:
	mov	x24, xzr
	b	.LBB0_167
.LBB0_108:
	and	x20, x20, #0xffffffffffffff00
	mov	x21, xzr
	mov	x22, xzr
	orr	x20, x20, x24
	b	.LBB0_11
.LBB0_109:
	orr	x20, x20, x24
	b	.LBB0_13
.LBB0_110:
	orr	x20, x20, x24
	b	.LBB0_15
.LBB0_111:
	orr	x20, x20, x24
	b	.LBB0_17
.LBB0_112:
	orr	x20, x20, x24
	b	.LBB0_19
.LBB0_113:
	orr	x20, x20, x24
	b	.LBB0_21
.LBB0_114:
	orr	x20, x20, x24
	b	.LBB0_23
.LBB0_115:
	mov	w28, #15204352
	b	.LBB0_53
.LBB0_116:
	cbnz	w26, .LBB0_135
	mov	x22, xzr
	and	x20, x20, #0xffffffffffffff00
	orr	x21, x21, #0x1
	b	.LBB0_151
.LBB0_118:
	and	x20, x20, #0xffffffffffff00ff
	cbz	w26, .LBB0_121
	cmp	w26, #14, lsl #12
	b.ne	.LBB0_145
	orr	x20, x20, #0xf000
.LBB0_121:
	orr	x21, x21, #0x100
	b	.LBB0_146
.LBB0_122:
	and	x20, x20, #0xffffffffff00ffff
	cbz	x26, .LBB0_125
	cmp	x26, #3584, lsl #12
	b.ne	.LBB0_148
	orr	x20, x20, #0xf00000
.LBB0_125:
	orr	x21, x21, #0x10000
	b	.LBB0_149
.LBB0_126:
	cbnz	w26, .LBB0_137
	and	x20, x20, #0xffffffff00ffffff
	orr	x21, x21, #0x1000000
	b	.LBB0_153
.LBB0_128:
	cbnz	x26, .LBB0_139
	and	x20, x20, #0xffffff00ffffffff
	orr	x21, x21, #0x100000000
	b	.LBB0_155
.LBB0_130:
	cbnz	x26, .LBB0_141
	and	x20, x20, #0xffff00ffffffffff
	orr	x21, x21, #0x10000000000
	b	.LBB0_157
.LBB0_132:
	cbnz	x26, .LBB0_143
	and	x20, x20, #0xff00ffffffffffff
	orr	x21, x21, #0x1000000000000
	b	.LBB0_159
.LBB0_134:
	mov	x26, #246290604621824
	b	.LBB0_164
.LBB0_135:
	cmp	w26, #224
	b.ne	.LBB0_150
	and	x20, x20, #0xffffffffffffff00
	mov	x22, xzr
	orr	x20, x20, #0xf0
	orr	x21, x21, #0x1
	b	.LBB0_151
.LBB0_137:
	and	x20, x20, #0xffffffff00ffffff
	mov	w27, #-536870912
	cmp	w26, w27
	b.ne	.LBB0_152
	orr	x20, x20, #0xf0000000
	orr	x21, x21, #0x1000000
	b	.LBB0_153
.LBB0_139:
	and	x20, x20, #0xffffff00ffffffff
	mov	x27, #962072674304
	cmp	x26, x27
	b.ne	.LBB0_154
	orr	x20, x20, #0xf000000000
	orr	x21, x21, #0x100000000
	b	.LBB0_155
.LBB0_141:
	and	x20, x20, #0xffff00ffffffffff
	mov	x27, #246290604621824
	cmp	x26, x27
	b.ne	.LBB0_156
	orr	x20, x20, #0xf00000000000
	orr	x21, x21, #0x10000000000
	b	.LBB0_157
.LBB0_143:
	and	x20, x20, #0xff00ffffffffffff
	mov	x27, #63050394783186944
	cmp	x26, x27
	b.ne	.LBB0_158
	orr	x20, x20, #0xf0000000000000
	orr	x21, x21, #0x1000000000000
	b	.LBB0_159
.LBB0_145:
	orr	x20, x20, x26
.LBB0_146:
	mov	w28, #15204352
.LBB0_147:
	mov	w29, #232
	tst	x24, #0xff0000
	b.ne	.LBB0_42
	b	.LBB0_45
.LBB0_148:
	orr	x20, x20, x26
.LBB0_149:
	mov	w28, #15204352
	mov	w29, #232
	tst	x24, #0xff000000
	b.ne	.LBB0_48
	b	.LBB0_51
.LBB0_150:
	and	x20, x20, #0xffffffffffffff00
	mov	x22, xzr
	orr	x20, x20, x26
.LBB0_151:
	mov	w28, #15204352
	mov	w29, #232
	tst	x24, #0xff00
	b.ne	.LBB0_36
	b	.LBB0_39
.LBB0_152:
	orr	x20, x20, x26
.LBB0_153:
	mov	w28, #15204352
	mov	w29, #232
	b	.LBB0_53
.LBB0_154:
	orr	x20, x20, x26
.LBB0_155:
	mov	w28, #15204352
	mov	w29, #232
	tst	x24, #0xff0000000000
	b.ne	.LBB0_60
	b	.LBB0_63
.LBB0_156:
	orr	x20, x20, x26
.LBB0_157:
	mov	w28, #15204352
	mov	w29, #232
	tst	x24, #0xff000000000000
	b.ne	.LBB0_66
	b	.LBB0_69
.LBB0_158:
	orr	x20, x20, x26
.LBB0_159:
	mov	w28, #15204352
	mov	w29, #232
	lsr	x26, x24, #56
	cbz	x26, .LBB0_72
.LBB0_160:
	lsr	x26, x25, #60
	mov	x27, #-1729382256910270464
	cmp	x26, #15
	cset	w26, lo
	bics	xzr, x27, x25
	cset	w25, ne
	and	w25, w26, w25
	tbnz	w25, #0, .LBB0_169
	mov	x26, #246290604621824
	lsr	x25, x20, #60
	cmp	x25, #15
	b.lo	.LBB0_168
	lsr	x25, x23, #56
	cbnz	x25, .LBB0_168
	and	x21, x21, #0xffffffffffffff
	and	x24, x24, #0xffffffffffffff
.LBB0_164:
	and	x23, x23, #0xf000000000000000
	mov	x25, #63050394783186944
	cmp	x23, x6
	b.eq	.LBB0_167
	cbz	x23, .LBB0_92
.LBB0_166:
	and	x20, x20, #0xffffffffffffff
	orr	x20, x20, x23
	b	.LBB0_7
.LBB0_167:
	mov	x23, #-1152921504606846976
	orr	x21, x21, #0x100000000000000
	bfxil	x23, x20, #0, #56
	mov	x20, x23
	b	.LBB0_7
.LBB0_168:
	mov	x25, #63050394783186944
	b	.LBB0_7
.LBB0_169:
	mov	x25, #63050394783186944
	mov	x26, #246290604621824
	b	.LBB0_7
.LBB0_170:
	ldp	x20, x19, [sp, #80]
	ldp	x22, x21, [sp, #64]
	ldp	x24, x23, [sp, #48]
	ldp	x26, x25, [sp, #32]
	ldp	x28, x27, [sp, #16]
	ldp	x29, x30, [sp], #96
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end0:
	.size	refresh_new_image, .Lfunc_end0-refresh_new_image

	.globl	refresh_new_image_auto
	.p2align	2
	.type	refresh_new_image_auto,@function
refresh_new_image_auto:
	ldp	w9, w8, [x3, #80]
	add	w10, w8, #7
	cmp	w8, #0
	csel	w11, w10, w8, lt
	cmp	w9, #1
	b.lt	.LBB1_8
	mov	w10, wzr
	asr	w11, w11, #3
	mov	w12, #255
	b	.LBB1_3
.LBB1_2:
	add	w10, w10, #1
	cmp	w10, w9
	b.eq	.LBB1_8
.LBB1_3:
	cmp	w8, #8
	b.lt	.LBB1_2
	mov	w13, w11
	b	.LBB1_6
.LBB1_5:
	add	x0, x0, #8
	subs	w13, w13, #1
	b.eq	.LBB1_2
.LBB1_6:
	ldr	x14, [x1], #8
	ldr	x15, [x0]
	ldr	x16, [x2], #8
	cmp	x14, x15
	b.eq	.LBB1_5
	tst	x16, #0xff
	csel	x17, x12, xzr, eq
	tst	x16, #0xff00
	orr	x3, x17, #0xff00
	csel	x17, x3, x17, eq
	tst	x16, #0xff0000
	orr	x3, x17, #0xff0000
	csel	x17, x3, x17, eq
	tst	x16, #0xff000000
	orr	x3, x17, #0xff000000
	csel	x17, x3, x17, eq
	tst	x16, #0xff00000000
	orr	x3, x17, #0xff00000000
	csel	x17, x3, x17, eq
	tst	x16, #0xff0000000000
	orr	x3, x17, #0xff0000000000
	csel	x17, x3, x17, eq
	tst	x16, #0xff000000000000
	orr	x3, x17, #0xff000000000000
	lsr	x16, x16, #56
	csel	x17, x3, x17, eq
	cmp	x16, #0
	orr	x3, x17, #0xff00000000000000
	csel	x16, x3, x17, eq
	bic	x15, x15, x16
	and	x14, x16, x14
	orr	x14, x15, x14
	str	x14, [x0]
	b	.LBB1_5
.LBB1_8:
	ret
.Lfunc_end1:
	.size	refresh_new_image_auto, .Lfunc_end1-refresh_new_image_auto

	.section	.exit.text,"ax",@progbits
	.p2align	2
	.type	ebc_exit,@function
ebc_exit:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	adrp	x0, ebc_driver
	mov	x29, sp
	add	x0, x0, :lo12:ebc_driver
	bl	platform_driver_unregister
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end2:
	.size	ebc_exit, .Lfunc_end2-ebc_exit

	.section	.init.text,"ax",@progbits
	.p2align	2
	.type	ebc_init,@function
ebc_init:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	adrp	x0, ebc_driver
	mov	x1, xzr
	add	x0, x0, :lo12:ebc_driver
	mov	x29, sp
	bl	__platform_driver_register
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end3:
	.size	ebc_init, .Lfunc_end3-ebc_init

	.text
	.p2align	2
	.type	ebc_probe,@function
ebc_probe:
	sub	sp, sp, #208
	str	x30, [x18], #8
	stp	x29, x30, [sp, #112]
	adrp	x1, .L.str.1
	stp	x28, x27, [sp, #128]
	adrp	x2, .L.str.2
	stp	x26, x25, [sp, #144]
	add	x29, sp, #112
	stp	x24, x23, [sp, #160]
	add	x1, x1, :lo12:.L.str.1
	stp	x22, x21, [sp, #176]
	add	x2, x2, :lo12:.L.str.2
	stp	x20, x19, [sp, #192]
	mrs	x8, SP_EL0
	add	x19, x0, #16
	mov	x20, x0
	ldr	x8, [x8, #1584]
	mov	x0, x19
	stur	x8, [x29, #-8]
	str	xzr, [sp, #16]
	str	wzr, [sp, #12]
	str	xzr, [sp]
	bl	_dev_info
	adrp	x1, .L.str.3
	mov	x0, x19
	add	x1, x1, :lo12:.L.str.3
	bl	nvmem_cell_get
	cmn	x0, #4095
	b.hs	.LBB4_16
	mov	x1, sp
	mov	x21, x0
	bl	nvmem_cell_read
	mov	x22, x0
	mov	x0, x21
	bl	nvmem_cell_put
	cmn	x22, #4095
	b.hs	.LBB4_18
	ldr	x8, [sp]
	cmp	x8, #2
	b.ne	.LBB4_15
	ldrb	w8, [x22]
	cmp	w8, #53
	b.ne	.LBB4_15
	ldrb	w8, [x22, #1]
	cmp	w8, #102
	b.eq	.LBB4_7
	cmp	w8, #118
	b.ne	.LBB4_15
	mov	w25, #3576
	b	.LBB4_8
.LBB4_7:
	mov	w25, #3566
.LBB4_8:
	mov	x0, x22
	bl	kfree
	mov	x0, x19
	mov	w1, #1216
	mov	w2, #3520
	bl	devm_kmalloc
	cbz	x0, .LBB4_14
	adrp	x8, global_ebc
	adrp	x1, .L.str.7
	mov	x21, x0
	str	x19, [x0]
	add	x1, x1, :lo12:.L.str.7
	add	x5, sp, #24
	str	x0, [x8, :lo12:global_ebc]
	ldr	x0, [x20, #672]
	mov	x2, xzr
	mov	w3, wzr
	mov	w4, wzr
	stp	xzr, xzr, [sp, #88]
	stp	xzr, xzr, [sp, #72]
	stp	xzr, xzr, [sp, #56]
	stp	xzr, xzr, [sp, #40]
	stp	xzr, xzr, [sp, #24]
	bl	__of_parse_phandle_with_args
	cbnz	w0, .LBB4_20
	ldr	x0, [sp, #24]
	cbz	x0, .LBB4_20
	bl	of_find_device_by_node
	cbz	x0, .LBB4_13
	ldr	x8, [x0, #136]
	str	x8, [x21, #8]
	cbnz	x8, .LBB4_22
.LBB4_13:
	mov	w22, #-517
	b	.LBB4_24
.LBB4_14:
	mov	w22, #-12
	b	.LBB4_24
.LBB4_15:
	mov	x0, x22
	bl	kfree
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	b	.LBB4_17
.LBB4_16:
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
.LBB4_17:
	mov	x0, x19
	bl	_dev_err
	mov	w22, #-12
	b	.LBB4_24
.LBB4_18:
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
.LBB4_19:
	mov	x0, x19
	bl	_dev_err
	b	.LBB4_24
.LBB4_20:
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
.LBB4_21:
	mov	x0, x19
	bl	_dev_err
	mov	w22, #-19
	b	.LBB4_24
.LBB4_22:
	adrp	x9, frame_done_callback
	adrp	x1, .L.str.9
	add	x9, x9, :lo12:frame_done_callback
	add	x1, x1, :lo12:.L.str.9
	add	x2, sp, #12
	str	x9, [x8, #136]
	ldr	x0, [x20, #672]
	bl	of_get_property
	ldr	w8, [sp, #12]
	asr	w9, w8, #2
	cmp	w8, #3
	str	w9, [sp, #12]
	b.hi	.LBB4_26
	adrp	x1, .L.str.10
	mov	x0, x19
	add	x1, x1, :lo12:.L.str.10
	bl	_dev_err
	mov	w22, #-22
.LBB4_24:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB4_58
	mov	w0, w22
	ldp	x20, x19, [sp, #192]
	ldp	x22, x21, [sp, #176]
	ldp	x24, x23, [sp, #160]
	ldp	x26, x25, [sp, #144]
	ldp	x28, x27, [sp, #128]
	ldp	x29, x30, [sp, #112]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #208
	ret
.LBB4_26:
	cmp	w8, #4
	b.lt	.LBB4_53
	adrp	x24, .L.str.14
	adrp	x26, .L.str.16
	mov	x22, x0
	mov	w23, wzr
	mov	w27, wzr
	add	x24, x24, :lo12:.L.str.14
	add	x26, x26, :lo12:.L.str.16
	b	.LBB4_29
.LBB4_28:
	ldr	w8, [sp, #12]
	add	w23, w23, #1
	mov	w27, #1
	cmp	w23, w8
	b.ge	.LBB4_44
.LBB4_29:
	add	x22, x22, #4
.LBB4_30:
	ldur	w8, [x22, #-4]
	rev	w0, w8
	bl	of_find_node_by_phandle
	cbz	x0, .LBB4_40
	bl	of_find_i2c_device_by_node
	cbz	x0, .LBB4_41
	ldr	x8, [x0, #152]
	str	x8, [x21, #16]
	cbnz	x8, .LBB4_42
	add	x28, x0, #32
	mov	x1, x24
	mov	x0, x28
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #24]
	b.hs	.LBB4_38
	add	x2, sp, #16
	mov	x0, x28
	mov	x1, x26
	bl	device_property_read_string
	cbnz	w0, .LBB4_39
	ldr	x0, [sp, #16]
	bl	thermal_zone_get_zone_by_name
	cmn	x0, #4095
	str	x0, [x21, #32]
	b.lo	.LBB4_28
	adrp	x1, .L.str.18
	mov	x0, x19
	add	x1, x1, :lo12:.L.str.18
	bl	_dev_err
.LBB4_37:
	ldr	w8, [sp, #12]
	add	w23, w23, #1
	add	x22, x22, #4
	cmp	w23, w8
	b.lt	.LBB4_30
	b	.LBB4_43
.LBB4_38:
	adrp	x1, .L.str.15
	mov	x0, x19
	add	x1, x1, :lo12:.L.str.15
	bl	_dev_warn
	b	.LBB4_37
.LBB4_39:
	adrp	x1, .L.str.17
	mov	x0, x19
	add	x1, x1, :lo12:.L.str.17
	bl	_dev_warn
	b	.LBB4_37
.LBB4_40:
	adrp	x1, .L.str.11
	add	x1, x1, :lo12:.L.str.11
	b	.LBB4_21
.LBB4_41:
	adrp	x1, .L.str.12
	add	x1, x1, :lo12:.L.str.12
	b	.LBB4_21
.LBB4_42:
	adrp	x1, .L.str.13
	mov	x0, x19
	add	x1, x1, :lo12:.L.str.13
	mov	w2, w23
	bl	_dev_info
	b	.LBB4_44
.LBB4_43:
	tbz	w27, #0, .LBB4_53
.LBB4_44:
	mov	x23, x21
	adrp	x1, .L.str.20
	add	x1, x1, :lo12:.L.str.20
	mov	x0, x19
	str	x19, [x23, #40]!
	ldp	x8, x9, [x23, #-32]
	str	x19, [x23, #288]
	str	w25, [x23, #884]
	stp	x8, x9, [x23, #8]
	bl	device_property_present
	tbz	w0, #0, .LBB4_46
	mov	w8, #3576
	str	w8, [x21, #928]
.LBB4_46:
	adrp	x1, .L.str.21
	mov	x0, x19
	add	x1, x1, :lo12:.L.str.21
	bl	device_property_present
	tbz	w0, #0, .LBB4_48
	mov	w8, #1
	str	w8, [x21, #848]
.LBB4_48:
	mov	x0, x23
	bl	ebc_panel_probe
	cbnz	w0, .LBB4_54
	ldp	w9, w8, [x21, #116]
	mov	w10, #1
	mov	w11, #-1
	mov	x0, x21
	str	w8, [x21, #312]
	mul	w8, w9, w8
	str	w10, [x21, #912]
	strb	w10, [x21, #936]
	mov	x10, #-65486
	str	w9, [x21, #316]
	movk	x10, #0, lsl #16
	str	w9, [x21, #904]
	lsr	w9, w8, #2
	str	w11, [x21, #932]
	str	w11, [x21, #952]
	str	w8, [x21, #260]
	str	w9, [x21, #264]
	str	x10, [x21, #944]
	bl	ebc_buffer_manage_init
	cbnz	w0, .LBB4_55
	add	x24, x23, #192
	mov	x0, x24
	bl	ebc_lut_table_init
	cbnz	w0, .LBB4_56
	adrp	x8, nr_cpu_ids
	adrp	x0, __cpu_possible_mask
	add	x0, x0, :lo12:__cpu_possible_mask
	ldr	w1, [x8, :lo12:nr_cpu_ids]
	bl	__bitmap_weight
	str	w0, [x21, #844]
	mov	x0, x24
	bl	ebc_task_init
	mov	w22, w0
	cbnz	w0, .LBB4_57
	mov	x0, x24
	bl	ebc_other_init
	mov	x0, x21
	mov	x1, x23
	bl	ebc_logo_init
	mov	x0, x24
	str	x21, [x20, #136]
	bl	ebc_sysfs_init
	adrp	x1, .L.str.26
	adrp	x2, .L.str.2
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.26
	add	x2, x2, :lo12:.L.str.2
	bl	_dev_info
	b	.LBB4_24
.LBB4_53:
	adrp	x1, .L.str.19
	mov	x0, x19
	add	x1, x1, :lo12:.L.str.19
	bl	_dev_err
	b	.LBB4_13
.LBB4_54:
	mov	w22, w0
	adrp	x1, .L.str.22
	add	x1, x1, :lo12:.L.str.22
	mov	x0, x19
	mov	w2, w22
	bl	_dev_err
	b	.LBB4_24
.LBB4_55:
	adrp	x1, .L.str.23
	mov	w22, w0
	add	x1, x1, :lo12:.L.str.23
	b	.LBB4_19
.LBB4_56:
	adrp	x1, .L.str.24
	mov	w22, w0
	add	x1, x1, :lo12:.L.str.24
	b	.LBB4_19
.LBB4_57:
	adrp	x1, .L.str.25
	add	x1, x1, :lo12:.L.str.25
	b	.LBB4_19
.LBB4_58:
	bl	__stack_chk_fail
.Lfunc_end4:
	.size	ebc_probe, .Lfunc_end4-ebc_probe

	.p2align	2
	.type	ebc_remove,@function
ebc_remove:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!
	str	x19, [sp, #16]
	ldr	x19, [x0, #136]
	mov	x29, sp
	ldr	x0, [x19, #856]
	cbz	x0, .LBB5_2
	bl	dma_buf_put
	str	xzr, [x19, #856]
.LBB5_2:
	ldr	x0, [x19, #864]
	cbz	x0, .LBB5_4
	bl	dma_buf_put
	str	xzr, [x19, #864]
.LBB5_4:
	ldr	x0, [x19, #872]
	cbz	x0, .LBB5_6
	bl	dma_buf_put
	str	xzr, [x19, #872]
.LBB5_6:
	ldr	x0, [x19, #880]
	cbz	x0, .LBB5_8
	bl	dma_buf_put
	str	xzr, [x19, #880]
.LBB5_8:
	ldr	x0, [x19, #888]
	cbz	x0, .LBB5_10
	bl	dma_buf_put
	str	xzr, [x19, #888]
.LBB5_10:
	adrp	x0, ebc_misc
	add	x0, x0, :lo12:ebc_misc
	bl	misc_deregister
	ldr	x19, [sp, #16]
	mov	w0, wzr
	ldp	x29, x30, [sp], #32
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end5:
	.size	ebc_remove, .Lfunc_end5-ebc_remove

	.p2align	2
	.type	frame_done_callback,@function
frame_done_callback:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!
	stp	x20, x19, [sp, #16]
	adrp	x20, global_ebc
	mov	x29, sp
	ldr	x19, [x20, :lo12:global_ebc]
	ldr	w8, [x19, #472]
	sub	w8, w8, #1
	cmp	w8, #4
	b.hi	.LBB6_10
	adrp	x9, .LJTI6_0
	add	x9, x9, :lo12:.LJTI6_0
	adr	x10, .LBB6_2
	ldrb	w11, [x9, x8]
	add	x10, x10, x11, lsl #2
	br	x10
.LBB6_2:
	ldr	w9, [x19, #304]
	mov	x8, x19
	cbz	w9, .LBB6_9
	ldr	w8, [x19, #324]
	cbz	w8, .LBB6_5
	ldr	w8, [x19, #800]
	cbz	w8, .LBB6_8
.LBB6_5:
	ldr	w8, [x19, #828]
	cbz	w8, .LBB6_24
	ldr	x8, [x19, #448]
	ldr	w8, [x8, #40]
	sub	w8, w8, #12
	cmp	w8, #2
	b.hi	.LBB6_24
	ldr	w8, [x19, #320]
	cbz	w8, .LBB6_24
.LBB6_8:
	ldr	w9, [x19, #852]
	mov	x8, x19
	cmp	w9, #1
	b.ge	.LBB6_41
.LBB6_9:
	ldr	x0, [x8, #8]
	b	.LBB6_29
.LBB6_10:
	ldr	w8, [x19, #304]
	cbnz	w8, .LBB6_24
	ldr	w8, [x19, #912]
	cbz	w8, .LBB6_24
	ldr	x0, [x19, #8]
	mov	w1, wzr
	mov	w2, wzr
	ldr	x8, [x0, #144]
	blr	x8
	ldr	w8, [x19, #852]
	str	wzr, [x19, #284]
	cmp	w8, #1
	b.lt	.LBB6_34
	adrp	x1, .L.str.31
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.31
	bl	_dev_info
	b	.LBB6_34
.LBB6_14:
	ldr	w8, [x19, #324]
	cbz	w8, .LBB6_25
	ldr	w9, [x19, #852]
	mov	x8, x19
	cmp	w9, #1
	b.ge	.LBB6_40
.LBB6_16:
	ldr	x0, [x8, #8]
	mov	w1, wzr
	mov	w2, wzr
	ldr	x8, [x0, #144]
	blr	x8
.LBB6_17:
	adrp	x8, jiffies
	mov	w9, #335544320
	add	x0, x19, #760
	ldr	x8, [x8, :lo12:jiffies]
	add	x1, x8, x9
	bl	mod_timer
	str	wzr, [x19, #284]
	b	.LBB6_34
.LBB6_18:
	mov	w8, #1
	ldr	w9, [x19, #292]
	str	w8, [x19, #308]
	cbnz	w9, .LBB6_27
	ldr	w8, [x19, #296]
	cbnz	w8, .LBB6_27
	ldr	w8, [x19, #300]
	cbz	w8, .LBB6_27
	ldr	w9, [x19, #852]
	mov	x8, x19
	cmp	w9, #1
	b.ge	.LBB6_43
.LBB6_22:
	ldr	x0, [x8, #8]
	mov	w1, wzr
	mov	w2, wzr
	ldr	x8, [x0, #144]
	blr	x8
	ldr	w8, [x19, #316]
	mov	w1, wzr
	ldr	w9, [x19, #312]
	ldr	x0, [x19, #392]
	mul	w8, w9, w8
	sxtw	x2, w8
	bl	memset
	ldr	w8, [x19, #316]
	mov	w1, wzr
	ldr	w9, [x19, #312]
	ldr	x0, [x19, #400]
	mul	w8, w9, w8
	sxtw	x2, w8
	bl	memset
	adrp	x8, jiffies
	mov	w9, #335544320
	add	x0, x19, #760
	ldr	x8, [x8, :lo12:jiffies]
	add	x1, x8, x9
	bl	mod_timer
	str	wzr, [x19, #284]
	str	wzr, [x19, #308]
	b	.LBB6_34
.LBB6_23:
	ldr	w8, [x19, #304]
	cbz	w8, .LBB6_28
.LBB6_24:
	adrp	x8, ebc_auto_task
	mov	w9, #1
	ldr	x0, [x8, :lo12:ebc_auto_task]
	str	w9, [x19, #284]
	bl	wake_up_process
	b	.LBB6_35
.LBB6_25:
	ldr	w8, [x19, #292]
	cbnz	w8, .LBB6_27
	ldr	w8, [x19, #296]
	cbz	w8, .LBB6_37
.LBB6_27:
	adrp	x8, ebc_auto_task
	ldr	x0, [x8, :lo12:ebc_auto_task]
	bl	wake_up_process
	b	.LBB6_35
.LBB6_28:
	ldr	x0, [x19, #8]
.LBB6_29:
	ldr	x8, [x0, #144]
	mov	w1, wzr
	mov	w2, wzr
	blr	x8
	ldr	w8, [x19, #852]
	str	wzr, [x19, #284]
	cmp	w8, #1
	b.ge	.LBB6_36
	ldr	w3, [x19, #952]
	tbnz	w3, #31, .LBB6_34
.LBB6_31:
	ldr	w8, [x19, #312]
	cmp	w3, w8
	b.ge	.LBB6_34
	ldr	w2, [x19, #948]
	tbnz	w2, #31, .LBB6_34
	ldr	w8, [x19, #316]
	cmp	w2, w8
	b.lt	.LBB6_42
.LBB6_34:
	adrp	x0, ebc_thread_wq
	mov	w1, #1
	add	x0, x0, :lo12:ebc_thread_wq
	bl	__wake_up_sync
.LBB6_35:
	ldp	x20, x19, [sp, #16]
	ldp	x29, x30, [sp], #32
	ldr	x30, [x18, #-8]!
	ret
.LBB6_36:
	adrp	x1, .L.str.31
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.31
	bl	_dev_info
	ldr	w3, [x19, #952]
	tbz	w3, #31, .LBB6_31
	b	.LBB6_34
.LBB6_37:
	ldr	w8, [x19, #300]
	cbz	w8, .LBB6_27
	ldr	w9, [x19, #852]
	mov	x8, x19
	cmp	w9, #1
	b.ge	.LBB6_44
.LBB6_39:
	ldr	x0, [x8, #8]
	mov	w1, wzr
	mov	w2, wzr
	ldr	x8, [x0, #144]
	blr	x8
	ldr	w8, [x19, #316]
	mov	w1, wzr
	ldr	w9, [x19, #312]
	ldr	x0, [x19, #392]
	mul	w8, w9, w8
	sxtw	x2, w8
	bl	memset
	b	.LBB6_17
.LBB6_40:
	adrp	x1, .L.str.28
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.28
	bl	_dev_info
	ldr	x8, [x20, :lo12:global_ebc]
	b	.LBB6_16
.LBB6_41:
	adrp	x1, .L.str.30
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.30
	bl	_dev_info
	ldr	x8, [x20, :lo12:global_ebc]
	b	.LBB6_9
.LBB6_42:
	adrp	x1, .L.str.32
	ldrb	w8, [x19, #956]
	add	x4, x19, #957
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.32
	strb	wzr, [x4, x8]
	bl	_dev_info
	b	.LBB6_34
.LBB6_43:
	adrp	x1, .L.str.27
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.27
	bl	_dev_info
	ldr	x8, [x20, :lo12:global_ebc]
	b	.LBB6_22
.LBB6_44:
	adrp	x1, .L.str.29
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.29
	bl	_dev_info
	ldr	x8, [x20, :lo12:global_ebc]
	b	.LBB6_39
.Lfunc_end6:
	.size	frame_done_callback, .Lfunc_end6-frame_done_callback
	.section	.rodata,"a",@progbits
.LJTI6_0:
	.byte	(.LBB6_2-.LBB6_2)>>2
	.byte	(.LBB6_10-.LBB6_2)>>2
	.byte	(.LBB6_14-.LBB6_2)>>2
	.byte	(.LBB6_18-.LBB6_2)>>2
	.byte	(.LBB6_23-.LBB6_2)>>2

	.text
	.p2align	2
	.type	ebc_panel_probe,@function
ebc_panel_probe:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!
	mov	x2, x0
	stp	x20, x19, [sp, #32]
	adrp	x1, .L.str.33
	mov	x19, x0
	add	x1, x1, :lo12:.L.str.33
	mov	w3, #1
	ldr	x20, [x2], #76
	mov	x4, xzr
	str	x21, [sp, #16]
	mov	x29, sp
	ldr	x0, [x20, #656]
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	add	x21, x20, #656
	adrp	x1, .L.str.34
	add	x2, x19, #80
	add	x1, x1, :lo12:.L.str.34
	mov	w3, #1
	mov	x4, xzr
	ldr	x0, [x21]
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	adrp	x1, .L.str.35
	ldr	x0, [x21]
	add	x2, x19, #84
	add	x1, x1, :lo12:.L.str.35
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	adrp	x1, .L.str.36
	ldr	x0, [x21]
	add	x2, x19, #88
	add	x1, x1, :lo12:.L.str.36
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	adrp	x1, .L.str.37
	ldr	x0, [x21]
	add	x2, x19, #104
	add	x1, x1, :lo12:.L.str.37
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	adrp	x1, .L.str.38
	ldr	x0, [x21]
	add	x2, x19, #108
	add	x1, x1, :lo12:.L.str.38
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	adrp	x1, .L.str.39
	ldr	x0, [x21]
	add	x2, x19, #112
	add	x1, x1, :lo12:.L.str.39
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	adrp	x1, .L.str.40
	ldr	x0, [x21]
	add	x2, x19, #116
	add	x1, x1, :lo12:.L.str.40
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	adrp	x1, .L.str.41
	ldr	x0, [x21]
	add	x2, x19, #120
	add	x1, x1, :lo12:.L.str.41
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	adrp	x1, .L.str.42
	ldr	x0, [x21]
	add	x2, x19, #124
	add	x1, x1, :lo12:.L.str.42
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	adrp	x1, .L.str.43
	ldr	x0, [x21]
	add	x2, x19, #128
	add	x1, x1, :lo12:.L.str.43
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	adrp	x1, .L.str.44
	ldr	x0, [x21]
	add	x2, x19, #132
	add	x1, x1, :lo12:.L.str.44
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	adrp	x1, .L.str.45
	ldr	x0, [x21]
	add	x2, x19, #136
	add	x1, x1, :lo12:.L.str.45
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	adrp	x1, .L.str.46
	ldr	x0, [x21]
	add	x2, x19, #140
	add	x1, x1, :lo12:.L.str.46
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	adrp	x1, .L.str.47
	ldr	x0, [x21]
	add	x2, x19, #144
	add	x1, x1, :lo12:.L.str.47
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB7_38
	add	x20, x19, #148
	adrp	x1, .L.str.48
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.48
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_17
	str	wzr, [x20]
.LBB7_17:
	add	x20, x19, #152
	adrp	x1, .L.str.49
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.49
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_19
	str	wzr, [x20]
.LBB7_19:
	add	x20, x19, #156
	adrp	x1, .L.str.50
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.50
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_21
	str	wzr, [x20]
.LBB7_21:
	add	x20, x19, #92
	adrp	x1, .L.str.51
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.51
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_23
	str	wzr, [x20]
.LBB7_23:
	add	x20, x19, #96
	adrp	x1, .L.str.52
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.52
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_25
	str	wzr, [x20]
.LBB7_25:
	add	x20, x19, #160
	adrp	x1, .L.str.53
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.53
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_27
	str	wzr, [x20]
.LBB7_27:
	add	x20, x19, #164
	adrp	x1, .L.str.54
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.54
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_29
	str	wzr, [x20]
.LBB7_29:
	add	x20, x19, #176
	adrp	x1, .L.str.55
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.55
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_31
	str	wzr, [x20]
.LBB7_31:
	add	x20, x19, #180
	adrp	x1, .L.str.56
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.56
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_33
	str	wzr, [x20]
.LBB7_33:
	add	x20, x19, #168
	adrp	x1, .L.str.57
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.57
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_35
	str	wzr, [x20]
.LBB7_35:
	add	x20, x19, #172
	adrp	x1, .L.str.58
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.58
	mov	x2, x20
	mov	w3, #1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB7_37
	str	wzr, [x20]
.LBB7_37:
	adrp	x1, .L.str.59
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.59
	mov	x2, xzr
	bl	of_find_property
	cmp	x0, #0
	mov	w0, wzr
	cset	w8, ne
	strb	w8, [x19, #184]
	b	.LBB7_39
.LBB7_38:
	mov	w0, #-22
.LBB7_39:
	ldp	x20, x19, [sp, #32]
	ldr	x21, [sp, #16]
	ldp	x29, x30, [sp], #48
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end7:
	.size	ebc_panel_probe, .Lfunc_end7-ebc_panel_probe

	.p2align	2
	.type	ebc_buffer_manage_init,@function
ebc_buffer_manage_init:
	sub	sp, sp, #208
	str	x30, [x18], #8
	stp	x29, x30, [sp, #160]
	add	x29, sp, #160
	str	x21, [sp, #176]
	stp	x20, x19, [sp, #192]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	stur	x8, [x29, #-8]
	ldr	w8, [x0, #260]
	stp	xzr, xzr, [sp, #56]
	ldr	x20, [x0]
	stp	xzr, xzr, [sp, #40]
	stp	xzr, xzr, [sp, #24]
	cmp	w8, #1280, lsl #12
	stp	xzr, xzr, [sp, #8]
	b.gt	.LBB8_23
	adrp	x1, .L.str.61
	mov	x19, x0
	ldr	x0, [x20, #656]
	add	x1, x1, :lo12:.L.str.61
	add	x5, sp, #72
	mov	x2, xzr
	mov	w3, wzr
	mov	w4, wzr
	stp	xzr, xzr, [sp, #136]
	stp	xzr, xzr, [sp, #120]
	stp	xzr, xzr, [sp, #104]
	stp	xzr, xzr, [sp, #88]
	stp	xzr, xzr, [sp, #72]
	bl	__of_parse_phandle_with_args
	mov	w21, #-19
	cbnz	w0, .LBB8_26
	ldr	x0, [sp, #72]
	cbz	x0, .LBB8_26
	add	x2, sp, #8
	mov	w1, wzr
	bl	of_address_to_resource
	cbnz	w0, .LBB8_24
	ldp	x1, x8, [sp, #8]
	mov	w9, #58720255
	str	x1, [x19, #232]
	sub	x8, x8, x1
	add	x8, x8, #1
	cmp	w8, w9
	str	w8, [x19, #256]
	b.le	.LBB8_25
	sxtw	x2, w8
	mov	x0, x20
	mov	w3, #1
	bl	devm_memremap
	str	x0, [x19, #240]
	cbz	x0, .LBB8_28
	mov	x1, x0
	ldr	x0, [x19, #232]
	ldr	w2, [x19, #256]
	mov	w3, #5242880
	mov	w4, #4
	bl	ebc_buf_init
	cbz	w0, .LBB8_8
.LBB8_7:
	mov	w21, #-12
	b	.LBB8_26
.LBB8_8:
	ldr	x0, [x19, #232]
	mov	w1, #5242880
	str	xzr, [x19, #888]
	str	xzr, [x19, #880]
	str	xzr, [x19, #872]
	str	xzr, [x19, #864]
	str	xzr, [x19, #856]
	bl	ebc_get_dma_buf
	cmn	x0, #4095
	b.hs	.LBB8_13
	ldr	x8, [x19, #232]
	str	x0, [x19, #856]
	mov	w1, #5242880
	add	x8, x8, #1280, lsl #12
	mov	x0, x8
	bl	ebc_get_dma_buf
	cmn	x0, #1, lsl #12
	b.hi	.LBB8_13
	ldr	x8, [x19, #232]
	str	x0, [x19, #864]
	mov	w1, #5242880
	add	x8, x8, #2560, lsl #12
	mov	x0, x8
	bl	ebc_get_dma_buf
	cmn	x0, #1, lsl #12
	b.hi	.LBB8_13
	ldr	x8, [x19, #232]
	str	x0, [x19, #872]
	mov	w1, #5242880
	add	x8, x8, #3840, lsl #12
	mov	x0, x8
	bl	ebc_get_dma_buf
	cmn	x0, #1, lsl #12
	b.hi	.LBB8_13
	ldr	x8, [x19, #232]
	mov	w9, #20971520
	str	x0, [x19, #880]
	mov	w1, #5242880
	add	x8, x8, x9
	mov	x0, x8
	bl	ebc_get_dma_buf
	cmn	x0, #1, lsl #12
	b.ls	.LBB8_29
.LBB8_13:
	ldr	x0, [x19, #856]
	cbz	x0, .LBB8_15
	bl	dma_buf_put
	str	xzr, [x19, #856]
.LBB8_15:
	ldr	x0, [x19, #864]
	cbz	x0, .LBB8_17
	bl	dma_buf_put
	str	xzr, [x19, #864]
.LBB8_17:
	ldr	x0, [x19, #872]
	cbz	x0, .LBB8_19
	bl	dma_buf_put
	str	xzr, [x19, #872]
.LBB8_19:
	ldr	x0, [x19, #880]
	cbz	x0, .LBB8_21
	bl	dma_buf_put
	str	xzr, [x19, #880]
.LBB8_21:
	ldr	x0, [x19, #888]
	cbz	x0, .LBB8_7
	bl	dma_buf_put
	mov	w21, #-12
	str	xzr, [x19, #888]
	b	.LBB8_26
.LBB8_23:
	adrp	x1, .L.str.60
	mov	x0, x20
	add	x1, x1, :lo12:.L.str.60
	bl	_dev_err
	mov	w21, #-19
	b	.LBB8_26
.LBB8_24:
	adrp	x1, .L.str.62
	mov	w21, w0
	add	x1, x1, :lo12:.L.str.62
	mov	x0, x20
	bl	_dev_err
	b	.LBB8_26
.LBB8_25:
	adrp	x1, .L.str.63
	mov	x0, x20
	add	x1, x1, :lo12:.L.str.63
	mov	w2, #58720256
	bl	_dev_err
	mov	w21, #-19
.LBB8_26:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB8_30
	ldp	x20, x19, [sp, #192]
	mov	w0, w21
	ldp	x29, x30, [sp, #160]
	ldr	x21, [sp, #176]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #208
	ret
.LBB8_28:
	adrp	x1, .L.str.64
	mov	x0, x20
	add	x1, x1, :lo12:.L.str.64
	bl	_dev_err
	b	.LBB8_7
.LBB8_29:
	ldp	x10, x8, [x19, #232]
	mov	w9, #20971520
	mov	w11, #26214400
	mov	w14, #28311552
	mov	w13, #2097152
	str	x0, [x19, #888]
	mov	w1, wzr
	add	x9, x8, x9
	add	x12, x8, x11
	add	x11, x10, x11
	add	x10, x10, x14
	str	x9, [x19, #248]
	add	x9, x8, x14
	stp	x10, x13, [x19, #96]
	mov	w10, #35651584
	add	x10, x8, x10
	stp	x12, x11, [x19, #64]
	stp	x13, x9, [x19, #80]
	mov	w11, #40894464
	str	x9, [x19, #416]
	mov	w9, #30408704
	add	x9, x8, x9
	mov	w13, #46137344
	add	x11, x8, x11
	add	x13, x8, x13
	stp	x9, x10, [x19, #368]
	mov	w9, #51380224
	add	x0, x8, x9
	stp	x11, x13, [x19, #384]
	ldp	w10, w9, [x19, #116]
	mov	w11, #56623104
	mov	w13, #57671680
	add	x11, x8, x11
	add	x8, x8, x13
	stp	x0, x12, [x19, #400]
	mul	w2, w9, w10
	stp	x11, x8, [x19, #352]
	bl	memset
	ldp	w8, w9, [x19, #116]
	ldr	x0, [x19, #392]
	mov	w1, wzr
	mul	w2, w9, w8
	bl	memset
	ldr	x0, [x19, #384]
	mov	w1, #240
	ldrsw	x2, [x19, #260]
	bl	memset
	mov	w21, wzr
	b	.LBB8_26
.LBB8_30:
	bl	__stack_chk_fail
.Lfunc_end8:
	.size	ebc_buffer_manage_init, .Lfunc_end8-ebc_buffer_manage_init

	.p2align	2
	.type	ebc_lut_table_init,@function
ebc_lut_table_init:
	sub	sp, sp, #208
	str	x30, [x18], #8
	stp	x29, x30, [sp, #160]
	add	x29, sp, #160
	stp	x22, x21, [sp, #176]
	adrp	x1, .L.str.65
	stp	x20, x19, [sp, #192]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	mov	x19, x0
	add	x1, x1, :lo12:.L.str.65
	add	x5, sp, #72
	mov	x2, xzr
	mov	w3, wzr
	stur	x8, [x29, #-8]
	add	x8, sp, #72
	ldr	x20, [x0, #96]
	mov	w4, wzr
	stp	xzr, xzr, [sp, #56]
	stp	xzr, xzr, [sp, #40]
	ldr	x22, [x20, #656]
	stp	xzr, xzr, [sp, #24]
	stp	xzr, xzr, [sp, #8]
	str	wzr, [sp, #4]
	mov	x0, x22
	stp	xzr, xzr, [x8, #64]
	stp	xzr, xzr, [sp, #120]
	stp	xzr, xzr, [sp, #104]
	stp	xzr, xzr, [sp, #88]
	stp	xzr, xzr, [sp, #72]
	bl	__of_parse_phandle_with_args
	mov	w8, w0
	mov	w0, #-19
	cbnz	w8, .LBB9_9
	ldr	x21, [sp, #72]
	cbz	x21, .LBB9_9
	adrp	x1, .L.str.66
	add	x2, sp, #4
	add	x1, x1, :lo12:.L.str.66
	mov	x0, x22
	bl	of_get_property
	ldr	w1, [sp, #4]
	cmp	w1, #1
	b.lt	.LBB9_5
	bl	pvi_wf_add_custom_mode_table
	cbz	w0, .LBB9_5
	mov	w0, #-19
	b	.LBB9_9
.LBB9_5:
	add	x2, sp, #8
	mov	x0, x21
	mov	w1, wzr
	bl	of_address_to_resource
	cbnz	w0, .LBB9_9
	ldp	x1, x8, [sp, #8]
	mov	x0, x20
	mov	w3, #1
	str	x1, [x19, #40]
	sub	x8, x8, x1
	add	x21, x8, #1
	sxtw	x2, w21
	str	w21, [x19, #48]
	bl	devm_memremap
	str	x0, [x19, #200]
	cbz	x0, .LBB9_11
	bl	epd_lut_from_mem_init
	tbnz	w0, #31, .LBB9_12
.LBB9_8:
	mov	w0, wzr
.LBB9_9:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB9_14
	ldp	x20, x19, [sp, #192]
	ldp	x22, x21, [sp, #176]
	ldp	x29, x30, [sp, #160]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #208
	ret
.LBB9_11:
	adrp	x1, .L.str.67
	adrp	x2, .L__func__.ebc_lut_table_init
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:.L.str.67
	add	x2, x2, :lo12:.L__func__.ebc_lut_table_init
	mov	w3, #4173
	bl	_dev_err
	mov	w0, #-12
	b	.LBB9_9
.LBB9_12:
	adrp	x1, .L.str.68
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:.L.str.68
	bl	_dev_err
	ldr	x0, [x19, #96]
	mov	w2, w21
	ldr	x1, [x19, #200]
	bl	epd_lut_from_file_init
	tbz	w0, #31, .LBB9_8
	adrp	x1, .L.str.69
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:.L.str.69
	bl	_dev_err
	mov	w0, #-1
	b	.LBB9_9
.LBB9_14:
	bl	__stack_chk_fail
.Lfunc_end9:
	.size	ebc_lut_table_init, .Lfunc_end9-ebc_lut_table_init

	.p2align	2
	.type	ebc_task_init,@function
ebc_task_init:
	sub	sp, sp, #64
	str	x30, [x18], #8
	stp	x29, x30, [sp, #16]
	adrp	x3, .L.str.70
	str	x21, [sp, #32]
	mov	w9, #99
	stp	x20, x19, [sp, #48]
	mrs	x8, SP_EL0
	mov	x19, x0
	adrp	x0, ebc_auto_tast_function
	ldr	x8, [x8, #1584]
	add	x0, x0, :lo12:ebc_auto_tast_function
	add	x3, x3, :lo12:.L.str.70
	mov	x1, x19
	mov	w2, #-1
	add	x29, sp, #16
	str	x8, [sp, #8]
	str	w9, [sp]
	bl	kthread_create_on_node
	adrp	x20, ebc_auto_task
	cmn	x0, #4095
	str	x0, [x20, :lo12:ebc_auto_task]
	b.hs	.LBB10_21
	mov	x2, sp
	mov	w1, #1
	bl	sched_setscheduler_nocheck
	ldr	w8, [x19, #612]
	cmp	w8, #8
	b.lt	.LBB10_3
	adrp	x1, cpu_bit_bitmap+56
	ldr	x0, [x20, :lo12:ebc_auto_task]
	add	x1, x1, :lo12:cpu_bit_bitmap+56
	bl	set_cpus_allowed_ptr
.LBB10_3:
	ldr	x8, [x20, :lo12:ebc_auto_task]
	add	x0, x8, #64
	//APP
.Ltmp2:
	b	.Ltmp1
.Ltmp3:
	.section	.altinstructions,"a",@progbits
.Ltmp4:
	.word	.Ltmp2-.Ltmp4
.Ltmp5:
	.word	alt_cb_patch_nops-.Ltmp5
	.hword	32794
	.byte	.Ltmp3-.Ltmp2
	.byte	.Ltmp6-.Ltmp7
	.text

.Ltmp7:
.Ltmp6:

	//NO_APP
	mov	w8, #1
	//APP
	ldadd	w8, w8, [x0]
	//NO_APP
	cbz	w8, .LBB10_30
.LBB10_5:
	add	w9, w8, #1
	orr	w8, w9, w8
	tbnz	w8, #31, .LBB10_25
.LBB10_6:
	adrp	x0, ebc_auto_assist_tast_function
	adrp	x3, .L.str.72
	add	x0, x0, :lo12:ebc_auto_assist_tast_function
	add	x3, x3, :lo12:.L.str.72
	mov	x1, x19
	mov	w2, #-1
	bl	kthread_create_on_node
	adrp	x20, ebc_auto_assist_task
	cmn	x0, #4095
	str	x0, [x20, :lo12:ebc_auto_assist_task]
	b.hs	.LBB10_22
	mov	x2, sp
	mov	w1, #1
	bl	sched_setscheduler_nocheck
	ldr	w8, [x19, #612]
	cmp	w8, #8
	b.lt	.LBB10_9
	adrp	x1, cpu_bit_bitmap+64
	ldr	x0, [x20, :lo12:ebc_auto_assist_task]
	add	x1, x1, :lo12:cpu_bit_bitmap+64
	bl	set_cpus_allowed_ptr
.LBB10_9:
	ldr	x8, [x20, :lo12:ebc_auto_assist_task]
	add	x0, x8, #64
	//APP
.Ltmp9:
	b	.Ltmp8
.Ltmp10:
	.section	.altinstructions,"a",@progbits
.Ltmp11:
	.word	.Ltmp9-.Ltmp11
.Ltmp12:
	.word	alt_cb_patch_nops-.Ltmp12
	.hword	32794
	.byte	.Ltmp10-.Ltmp9
	.byte	.Ltmp13-.Ltmp14
	.text

.Ltmp14:
.Ltmp13:

	//NO_APP
	mov	w8, #1
	//APP
	ldadd	w8, w8, [x0]
	//NO_APP
	cbz	w8, .LBB10_33
.LBB10_11:
	add	w9, w8, #1
	orr	w8, w9, w8
	tbnz	w8, #31, .LBB10_26
.LBB10_12:
	adrp	x0, ebc_thread
	adrp	x3, .L.str.74
	mov	w8, #99
	add	x0, x0, :lo12:ebc_thread
	add	x3, x3, :lo12:.L.str.74
	mov	x1, x19
	mov	w2, #-1
	str	w8, [sp]
	bl	kthread_create_on_node
	mov	x20, x0
	cmn	x0, #4095
	b.hs	.LBB10_23
	mov	x0, x20
	bl	wake_up_process
	adrp	x21, ebc_task
	mov	x2, sp
	mov	x0, x20
	mov	w1, #1
	str	x20, [x21, :lo12:ebc_task]
	bl	sched_setscheduler_nocheck
	ldr	w8, [x19, #612]
	cmp	w8, #8
	b.lt	.LBB10_15
	adrp	x1, cpu_bit_bitmap+48
	ldr	x0, [x21, :lo12:ebc_task]
	add	x1, x1, :lo12:cpu_bit_bitmap+48
	bl	set_cpus_allowed_ptr
.LBB10_15:
	ldr	x8, [x21, :lo12:ebc_task]
	add	x0, x8, #64
	//APP
.Ltmp16:
	b	.Ltmp15
.Ltmp17:
	.section	.altinstructions,"a",@progbits
.Ltmp18:
	.word	.Ltmp16-.Ltmp18
.Ltmp19:
	.word	alt_cb_patch_nops-.Ltmp19
	.hword	32794
	.byte	.Ltmp17-.Ltmp16
	.byte	.Ltmp20-.Ltmp21
	.text

.Ltmp21:
.Ltmp20:

	//NO_APP
	mov	w8, #1
	//APP
	ldadd	w8, w8, [x0]
	//NO_APP
	cbz	w8, .LBB10_36
.LBB10_17:
	add	w9, w8, #1
	orr	w8, w9, w8
	tbnz	w8, #31, .LBB10_27
.LBB10_18:
	mov	w0, wzr
.LBB10_19:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldr	x9, [sp, #8]
	cmp	x8, x9
	b.ne	.LBB10_28
	ldp	x20, x19, [sp, #48]
	ldp	x29, x30, [sp, #16]
	ldr	x21, [sp, #32]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #64
	ret
.LBB10_21:
	adrp	x1, .L.str.71
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:.L.str.71
	b	.LBB10_24
.LBB10_22:
	ldr	x0, [x19, #96]
	adrp	x1, .L.str.73
	add	x1, x1, :lo12:.L.str.73
	b	.LBB10_24
.LBB10_23:
	adrp	x8, ebc_task
	ldr	x0, [x19, #96]
	adrp	x1, .L.str.75
	add	x1, x1, :lo12:.L.str.75
	str	x20, [x8, :lo12:ebc_task]
.LBB10_24:
	bl	_dev_err
	mov	w0, #-1
	b	.LBB10_19
.LBB10_25:
	mov	w1, #1
	b	.LBB10_31
.LBB10_26:
	mov	w1, #1
	b	.LBB10_34
.LBB10_27:
	mov	w1, #1
	b	.LBB10_37
.LBB10_28:
	bl	__stack_chk_fail
.Ltmp1:
.LBB10_29:
	//APP
	// atomic_fetch_add_relaxed
	prfm	pstl1strm, [x0]
.Ltmp22:
	ldxr	w8, [x0]
	add	w9, w8, #1
	stxr	w10, w9, [x0]
	cbnz	w10, .Ltmp22

	//NO_APP
	cbnz	w8, .LBB10_5
.LBB10_30:
	mov	w1, #2
.LBB10_31:
	bl	refcount_warn_saturate
	b	.LBB10_6
.Ltmp8:
.LBB10_32:
	//APP
	// atomic_fetch_add_relaxed
	prfm	pstl1strm, [x0]
.Ltmp23:
	ldxr	w8, [x0]
	add	w9, w8, #1
	stxr	w10, w9, [x0]
	cbnz	w10, .Ltmp23

	//NO_APP
	cbnz	w8, .LBB10_11
.LBB10_33:
	mov	w1, #2
.LBB10_34:
	bl	refcount_warn_saturate
	b	.LBB10_12
.Ltmp15:
.LBB10_35:
	//APP
	// atomic_fetch_add_relaxed
	prfm	pstl1strm, [x0]
.Ltmp24:
	ldxr	w8, [x0]
	add	w9, w8, #1
	stxr	w10, w9, [x0]
	cbnz	w10, .Ltmp24

	//NO_APP
	cbnz	w8, .LBB10_17
.LBB10_36:
	mov	w1, #2
.LBB10_37:
	bl	refcount_warn_saturate
	b	.LBB10_18
.Lfunc_end10:
	.size	ebc_task_init, .Lfunc_end10-ebc_task_init

	.p2align	2
	.type	ebc_other_init,@function
ebc_other_init:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!
	stp	x20, x19, [sp, #32]
	mov	w20, #1
	mov	x8, #4294967297
	add	x9, x0, #580
	add	x10, x0, #588
	stp	x22, x21, [sp, #16]
	mov	x29, sp
	mov	x19, x0
	str	wzr, [x0, #192]
	str	xzr, [x0, #568]
	str	xzr, [x0, #88]
	str	wzr, [x0, #52]
	str	wzr, [x0, #68]
	str	w20, [x0, #240]
	str	x8, [x9]
	str	xzr, [x10]
	str	wzr, [x0, #604]
	bl	ebc_get_init_log_level
	ldr	w9, [x19, #692]
	mov	w8, #1
	str	w0, [x19, #620]
	cmp	w9, #3576
	b.eq	.LBB11_2
	ldr	w8, [x19, #696]
	cmp	w8, #3576
	cset	w8, eq
.LBB11_2:
	adds	x0, x19, #248
	str	w8, [x19, #596]
	str	w20, [x19, #608]
	b.eq	.LBB11_4
	adrp	x8, .L.str.116
	stp	xzr, xzr, [x19, #424]
	add	x8, x8, :lo12:.L.str.116
	stp	xzr, xzr, [x19, #408]
	stp	xzr, xzr, [x19, #392]
	stp	xzr, xzr, [x19, #376]
	stp	xzr, xzr, [x19, #360]
	stp	xzr, xzr, [x19, #344]
	stp	xzr, xzr, [x19, #328]
	stp	xzr, xzr, [x19, #312]
	stp	xzr, xzr, [x19, #296]
	stp	xzr, xzr, [x19, #280]
	stp	xzr, xzr, [x19, #264]
	stp	x8, xzr, [x19, #248]
.LBB11_4:
	bl	wakeup_source_add
	add	x20, x19, #448
	adrp	x1, ebc_frame_control_timeout
	add	x1, x1, :lo12:ebc_frame_control_timeout
	mov	x0, x20
	mov	w2, wzr
	mov	x3, xzr
	mov	x4, xzr
	str	wzr, [x19, #440]
	bl	init_timer_key
	adrp	x21, jiffies
	mov	w22, #268435455
	mov	x0, x20
	ldr	x8, [x21, :lo12:jiffies]
	add	x1, x8, x22
	bl	mod_timer
	add	x20, x19, #488
	adrp	x1, ebc_overlay_enable_timeout
	add	x1, x1, :lo12:ebc_overlay_enable_timeout
	mov	x0, x20
	mov	w2, wzr
	mov	x3, xzr
	mov	x4, xzr
	bl	init_timer_key
	ldr	x8, [x21, :lo12:jiffies]
	mov	x0, x20
	add	x1, x8, x22
	bl	mod_timer
	add	x19, x19, #528
	adrp	x1, ebc_frame_timeout
	add	x1, x1, :lo12:ebc_frame_timeout
	mov	x0, x19
	mov	w2, wzr
	mov	x3, xzr
	mov	x4, xzr
	bl	init_timer_key
	ldr	x8, [x21, :lo12:jiffies]
	mov	x0, x19
	add	x1, x8, x22
	bl	mod_timer
	ldp	x20, x19, [sp, #32]
	ldp	x22, x21, [sp, #16]
	ldp	x29, x30, [sp], #48
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end11:
	.size	ebc_other_init, .Lfunc_end11-ebc_other_init

	.p2align	2
	.type	ebc_logo_init,@function
ebc_logo_init:
	sub	sp, sp, #80
	str	x30, [x18], #8
	stp	x29, x30, [sp, #16]
	adrp	x9, saved_command_line
	stp	x24, x23, [sp, #32]
	add	x29, sp, #16
	stp	x22, x21, [sp, #48]
	stp	x20, x19, [sp, #64]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	mov	x20, x1
	adrp	x1, .L.str.119
	mov	x19, x0
	add	x1, x1, :lo12:.L.str.119
	str	x8, [sp, #8]
	ldr	x22, [x9, :lo12:saved_command_line]
	str	xzr, [sp]
	mov	x0, x22
	bl	strstr
	adrp	x1, .L.str.120
	mov	x21, x0
	add	x1, x1, :lo12:.L.str.120
	mov	x0, x22
	bl	strstr
	mov	x22, x0
	cbz	x21, .LBB12_3
	adrp	x1, .L.str.121
	add	x2, sp, #4
	add	x1, x1, :lo12:.L.str.121
	mov	x0, x21
	bl	sscanf
	ldr	w2, [sp, #4]
	ldr	x8, [x19, #232]
	cmp	x8, x2
	b.ls	.LBB12_26
	mov	x21, xzr
.LBB12_3:
	mov	w23, #1
	cbz	x22, .LBB12_28
.LBB12_4:
	adrp	x1, .L.str.124
	mov	x2, sp
	add	x1, x1, :lo12:.L.str.124
	mov	x0, x22
	bl	sscanf
	ldr	w2, [sp]
	ldr	x8, [x19, #232]
	cmp	x8, x2
	b.ls	.LBB12_31
	mov	x22, xzr
	mov	w24, #1
	cbnz	w23, .LBB12_29
.LBB12_6:
	adrp	x0, .L.str.128
	add	x0, x0, :lo12:.L.str.128
	bl	ebc_empty_buf_get
	cbz	x0, .LBB12_12
	ldp	w8, w9, [x20, #76]
	mul	w8, w9, w8
	cmp	w8, #2
	b.lo	.LBB12_10
	lsr	w8, w8, #1
	ldr	x9, [x0, #16]
	mov	x10, x21
.LBB12_9:
	ldrb	w11, [x10], #1
	subs	w8, w8, #1
	lsl	w12, w11, #4
	and	w11, w11, #0xf0
	strb	w12, [x9]
	strb	w11, [x9, #1]
	add	x9, x9, #2
	b.ne	.LBB12_9
.LBB12_10:
	mov	w8, #7
	str	xzr, [x0, #48]
	mov	w9, #1
	str	w8, [x0, #40]
	ldr	w8, [x20, #76]
	str	w8, [x0, #56]
	ldr	w8, [x20, #80]
	stp	w8, w9, [x0, #60]
.LBB12_11:
	bl	ebc_add_to_dsp_buf_list
.LBB12_12:
	tbnz	w24, #0, .LBB12_18
	adrp	x0, .L.str.128
	add	x0, x0, :lo12:.L.str.128
	bl	ebc_empty_buf_get
	cbz	x0, .LBB12_18
	ldp	w8, w9, [x20, #76]
	mul	w8, w9, w8
	cmp	w8, #2
	b.lo	.LBB12_17
	lsr	w8, w8, #1
	ldr	x9, [x0, #16]
	mov	x10, x22
.LBB12_16:
	ldrb	w11, [x10], #1
	subs	w8, w8, #1
	lsl	w12, w11, #4
	and	w11, w11, #0xf0
	strb	w12, [x9]
	strb	w11, [x9, #1]
	add	x9, x9, #2
	b.ne	.LBB12_16
.LBB12_17:
	mov	w8, #7
	str	xzr, [x0, #48]
	mov	w9, #1
	str	w8, [x0, #40]
	ldr	w8, [x20, #76]
	str	w8, [x0, #56]
	ldr	w8, [x20, #80]
	stp	w8, w9, [x0, #60]
	bl	ebc_add_to_dsp_buf_list
.LBB12_18:
	ldr	w8, [x19, #320]
	cbnz	w8, .LBB12_20
	adrp	x0, ebc_thread_wq
	mov	w8, #1
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w1, #1
	str	w8, [x19, #320]
	bl	__wake_up_sync
.LBB12_20:
	cbz	x21, .LBB12_22
	mov	x0, x21
	bl	kfree
.LBB12_22:
	cbz	x22, .LBB12_24
	mov	x0, x22
	bl	kfree
.LBB12_24:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldr	x9, [sp, #8]
	cmp	x8, x9
	b.ne	.LBB12_37
	ldp	x20, x19, [sp, #64]
	ldp	x22, x21, [sp, #48]
	ldp	x24, x23, [sp, #32]
	ldp	x29, x30, [sp, #16]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #80
	ret
.LBB12_26:
	adrp	x1, .L.str.122
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.122
	bl	_dev_info
	ldp	w9, w8, [x20, #76]
	mov	w1, #3520
	mul	w8, w8, w9
	lsr	w0, w8, #1
	bl	__kmalloc
	cbz	x0, .LBB12_35
	ldp	w9, w8, [x20, #76]
	ldp	x11, x12, [x19, #232]
	mov	x21, x0
	ldr	w10, [sp, #4]
	mul	w8, w8, w9
	sub	x9, x10, x11
	lsr	w2, w8, #1
	add	x1, x12, x9
	bl	memcpy
	mov	w23, wzr
	cbnz	x22, .LBB12_4
.LBB12_28:
	mov	w24, #1
	cbz	w23, .LBB12_6
.LBB12_29:
	adrp	x1, .L.str.127
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.127
	bl	_dev_info
	ldr	x0, [x19, #16]
	cbz	x0, .LBB12_33
	bl	ebc_pmic_verity_vcom
	b	.LBB12_34
.LBB12_31:
	adrp	x1, .L.str.125
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.125
	bl	_dev_info
	ldp	w9, w8, [x20, #76]
	mov	w1, #3520
	mul	w8, w8, w9
	lsr	w0, w8, #1
	bl	__kmalloc
	cbz	x0, .LBB12_36
	ldp	w9, w8, [x20, #76]
	ldp	x11, x12, [x19, #232]
	mov	x22, x0
	ldr	w10, [sp]
	mul	w8, w8, w9
	sub	x9, x10, x11
	lsr	w2, w8, #1
	add	x1, x12, x9
	bl	memcpy
	mov	w24, wzr
	cbz	w23, .LBB12_6
	b	.LBB12_29
.LBB12_33:
	ldr	x0, [x19, #24]
	bl	ebc_regulator_verity_vcom
.LBB12_34:
	adrp	x0, .L.str.129
	add	x0, x0, :lo12:.L.str.129
	bl	ebc_empty_buf_get
	ldp	w8, w9, [x20, #76]
	mov	x23, x0
	ldr	x0, [x0, #16]
	mov	w1, #240
	mul	w2, w9, w8
	bl	memset
	mov	w8, #17
	str	xzr, [x23, #48]
	mov	w9, #1
	mov	x0, x23
	str	w8, [x23, #40]
	ldr	w8, [x20, #76]
	str	w8, [x23, #56]
	ldr	w8, [x20, #80]
	stp	w8, w9, [x23, #60]
	b	.LBB12_11
.LBB12_35:
	adrp	x1, .L.str.123
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.123
	bl	_dev_err
	b	.LBB12_24
.LBB12_36:
	adrp	x1, .L.str.126
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.126
	bl	_dev_err
	b	.LBB12_24
.LBB12_37:
	bl	__stack_chk_fail
.Lfunc_end12:
	.size	ebc_logo_init, .Lfunc_end12-ebc_logo_init

	.p2align	2
	.type	ebc_sysfs_init,@function
ebc_sysfs_init:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!
	str	x19, [sp, #16]
	mov	x19, x0
	adrp	x0, ebc_misc
	mov	x29, sp
	add	x0, x0, :lo12:ebc_misc
	bl	misc_register
	adrp	x0, waveform_misc
	add	x0, x0, :lo12:waveform_misc
	bl	misc_register
	adrp	x1, dev_attr_waveform_version
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:dev_attr_waveform_version
	bl	device_create_file
	adrp	x1, dev_attr_pmic_name
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:dev_attr_pmic_name
	bl	device_create_file
	adrp	x1, dev_attr_pmic_temp
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:dev_attr_pmic_temp
	bl	device_create_file
	adrp	x1, dev_attr_pmic_vcom
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:dev_attr_pmic_vcom
	bl	device_create_file
	adrp	x1, dev_attr_ebc_version
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:dev_attr_ebc_version
	bl	device_create_file
	adrp	x1, dev_attr_ebc_state
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:dev_attr_ebc_state
	bl	device_create_file
	adrp	x1, dev_attr_ebc_buf_state
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:dev_attr_ebc_buf_state
	bl	device_create_file
	adrp	x1, dev_attr_auto_frame_state
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:dev_attr_auto_frame_state
	bl	device_create_file
	adrp	x1, dev_attr_ebc_debug_level
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:dev_attr_ebc_debug_level
	bl	device_create_file
	adrp	x1, dev_attr_wf_data
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:dev_attr_wf_data
	bl	device_create_file
	adrp	x1, dev_attr_overlay_wf_data
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:dev_attr_overlay_wf_data
	bl	device_create_file
	adrp	x1, dev_attr_ori_wf_data
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:dev_attr_ori_wf_data
	bl	device_create_file
	adrp	x1, dev_attr_record_pix_wf
	ldr	x0, [x19, #96]
	add	x1, x1, :lo12:dev_attr_record_pix_wf
	bl	device_create_file
	ldr	x19, [sp, #16]
	ldp	x29, x30, [sp], #32
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end13:
	.size	ebc_sysfs_init, .Lfunc_end13-ebc_sysfs_init

	.p2align	2
	.type	ebc_auto_tast_function,@function
ebc_auto_tast_function:
	sub	sp, sp, #144
	str	x30, [x18], #8
	adrp	x8, global_ebc
	stp	x28, x27, [sp, #64]
	stp	x22, x21, [sp, #112]
	adrp	x21, ebc_assist_finished_flag_sem
	stp	x20, x19, [sp, #128]
	adrp	x20, ebc_auto_thread_sem
	ldr	x28, [x8, :lo12:global_ebc]
	stp	x26, x25, [sp, #80]
	stp	x24, x23, [sp, #96]
	add	x20, x20, :lo12:ebc_auto_thread_sem
	add	x21, x21, :lo12:ebc_assist_finished_flag_sem
	mov	w22, #2
	adrp	x23, ebc_auto_assist_task
	mov	w26, #1
	mov	w27, #255
	add	x24, x28, #40
	add	x25, x28, #232
	add	x8, x28, #760
	stp	x29, x30, [sp, #48]
	add	x29, sp, #48
	//APP
	mrs	x19, SP_EL0
	//NO_APP
	stp	x24, x19, [sp, #16]
	stp	x8, x25, [sp]
	b	.LBB14_3
.LBB14_1:
	ldr	w8, [x28, #304]
	mov	x0, x24
	mov	x1, x25
	sub	w8, w8, #1
	str	w8, [x28, #304]
	bl	flip
	ldr	x0, [x23, :lo12:ebc_auto_assist_task]
	bl	wake_up_process
.LBB14_2:
	mov	x0, x20
	bl	up
	bl	schedule
.LBB14_3:
	mov	x0, x20
	bl	down
	mov	x0, x21
	bl	down
	str	w22, [x19, #48]
	//APP
	dmb	ish
	//NO_APP
	ldr	w8, [x28, #472]
	sub	w8, w8, #1
	cmp	w8, #4
	b.hi	.LBB14_8
	adrp	x11, .LJTI14_0
	add	x11, x11, :lo12:.LJTI14_0
.Ltmp25:
	adr	x9, .Ltmp25
	ldrsw	x10, [x11, x8, lsl #2]
	add	x9, x9, x10
	br	x9
.LBB14_5:
	ldr	w8, [x28, #304]
	mov	x0, x24
	mov	x1, x25
	sub	w8, w8, #1
	str	w8, [x28, #304]
	bl	flip
	ldr	x0, [x23, :lo12:ebc_auto_assist_task]
	bl	wake_up_process
	ldr	w8, [x28, #304]
	cbz	w8, .LBB14_2
	ldrsw	x8, [x28, #112]
	mov	x3, x25
	ldp	x11, x9, [x28, #440]
	mov	w4, #2
	add	x8, x28, x8, lsl #3
	ldr	w10, [x28, #204]
	ldr	x2, [x11, #16]
	ldr	x1, [x9, #16]
	ldr	x0, [x8, #408]
	cbz	w10, .LBB14_28
	bl	direct_mode_data_change_part2
	b	.LBB14_2
.LBB14_8:
	ldr	x8, [x28, #448]
	ldr	w8, [x8, #40]
	cmp	w8, #21
	b.ne	.LBB14_20
	ldr	w8, [x28, #896]
	mov	x0, x24
	ldr	w9, [x28, #908]
	mov	x1, x25
	add	w8, w9, w8
	str	w8, [x28, #908]
	bl	flip
	ldr	x0, [x23, :lo12:ebc_auto_assist_task]
	bl	wake_up_process
	mov	x0, x25
	bl	is_full_refresh_done
	tbz	w0, #0, .LBB14_26
	str	w26, [x28, #912]
	b	.LBB14_2
.LBB14_11:
	ldr	w8, [x28, #292]
	str	wzr, [x28, #300]
	cbnz	w8, .LBB14_13
	ldr	w8, [x28, #296]
	cbz	w8, .LBB14_30
.LBB14_13:
	mov	x0, x24
	mov	x1, x25
	bl	flip
	ldr	x0, [x23, :lo12:ebc_auto_assist_task]
	bl	wake_up_process
	ldrsw	x8, [x28, #112]
	mov	x4, x25
	ldp	x1, x2, [x28, #368]
	mov	w5, #2
	add	x8, x28, x8, lsl #3
	ldr	w9, [x28, #204]
	ldr	x3, [x28, #392]
	ldr	x0, [x8, #408]
	cbz	w9, .LBB14_25
	bl	get_auto_image2
	b	.LBB14_2
.LBB14_15:
	ldr	w8, [x28, #308]
	cbz	w8, .LBB14_23
	ldr	w8, [x28, #292]
	str	wzr, [x28, #308]
	str	wzr, [x28, #300]
	cbnz	w8, .LBB14_18
	ldr	w8, [x28, #296]
	cbz	w8, .LBB14_44
.LBB14_18:
	mov	x0, x24
	mov	x1, x25
	bl	flip
	ldr	x0, [x23, :lo12:ebc_auto_assist_task]
	bl	wake_up_process
	ldrsw	x8, [x28, #112]
	mov	x5, x25
	ldp	x1, x2, [x28, #368]
	mov	w6, #2
	add	x8, x28, x8, lsl #3
	ldr	w9, [x28, #204]
	ldp	x3, x4, [x28, #392]
	ldr	x0, [x8, #408]
	cbz	w9, .LBB14_29
	bl	get_overlay_image2
	b	.LBB14_2
.LBB14_20:
	ldr	w8, [x28, #304]
	mov	x0, x24
	mov	x1, x25
	sub	w8, w8, #1
	str	w8, [x28, #304]
	bl	flip
	ldr	x0, [x23, :lo12:ebc_auto_assist_task]
	bl	wake_up_process
	ldr	w8, [x28, #304]
	cbz	w8, .LBB14_2
	ldrsw	x9, [x28, #112]
	ldp	x12, x10, [x28, #440]
	add	x9, x28, x9, lsl #3
	ldr	w11, [x28, #204]
	ldr	x24, [x12, #16]
	ldr	x25, [x10, #16]
	ldr	x0, [x9, #408]
	cbz	w11, .LBB14_35
	mov	x1, x25
	ldr	x25, [sp, #8]
	mov	x2, x24
	mov	w4, #2
	mov	x3, x25
	bl	direct_mode_data_change2
	ldr	x24, [sp, #16]
	b	.LBB14_2
.LBB14_23:
	ldr	w8, [x28, #112]
	mov	x0, x21
	sub	w19, w26, w8
	bl	up
	ldrsw	x8, [x28, #112]
	mov	x5, x25
	ldp	x1, x2, [x28, #368]
	add	x8, x28, x8, lsl #3
	ldr	w9, [x28, #204]
	ldp	x3, x4, [x28, #392]
	ldr	x0, [x8, #408]
	cbz	w9, .LBB14_33
	bl	get_overlay_image_area2
	b	.LBB14_34
.LBB14_25:
	bl	get_auto_image
	b	.LBB14_2
.LBB14_26:
	ldrsw	x8, [x28, #112]
	mov	x3, x25
	ldp	x11, x9, [x28, #440]
	mov	w4, #2
	add	x8, x28, x8, lsl #3
	ldr	w10, [x28, #204]
	ldr	x2, [x11, #16]
	ldr	x1, [x9, #16]
	ldr	x0, [x8, #408]
	cbz	w10, .LBB14_43
	bl	direct_mode_data_change_full2
	b	.LBB14_2
.LBB14_28:
	bl	direct_mode_data_change_part
	b	.LBB14_2
.LBB14_29:
	bl	get_overlay_image
	b	.LBB14_2
.LBB14_30:
	mov	x0, x21
	bl	up
	ldr	w8, [x28, #820]
	cbz	w8, .LBB14_48
.LBB14_31:
	ldrsw	x8, [x28, #112]
	mov	x4, x25
	ldp	x1, x2, [x28, #368]
	mov	w5, #1
	add	x8, x28, x8, lsl #3
	ldr	w9, [x28, #204]
	ldr	x3, [x28, #392]
	ldr	x0, [x8, #408]
	cbz	w9, .LBB14_56
	bl	get_auto_image2
	b	.LBB14_58
.LBB14_33:
	bl	get_overlay_image_area
.LBB14_34:
	ldrsw	x8, [x28, #112]
	add	x10, x28, #408
	ldrsw	x2, [x28, #264]
	sxtw	x19, w19
	sub	w9, w26, w8
	ldr	x1, [x10, x8, lsl #3]
	ldr	x0, [x10, w9, sxtw #3]
	bl	memcpy
	mov	x8, x28
	mov	w9, #24
	ldrsw	x2, [x28, #264]
	mov	w3, #1
	ldr	x0, [x8, #40]!
	madd	x8, x19, x9, x8
	ldr	x1, [x8, #32]
	bl	dma_sync_single_for_device
	b	.LBB14_42
.LBB14_35:
	adrp	x9, global_ebc
	mov	x15, #512
	movk	x15, #1540, lsl #16
	ldrb	w14, [x28, #288]
	movk	x15, #2568, lsl #32
	ldr	x10, [x9, :lo12:global_ebc]
	movk	x15, #3596, lsl #48
	ldp	w13, w9, [x10, #116]
	ldr	w12, [x10, #196]
	stur	x15, [x29, #-8]
	cmp	w9, #0
	lsr	w10, w13, #2
	cinc	w11, w9, lt
	cmp	w12, #0
	stur	w13, [x29, #-12]
	ldr	x13, [x28, #352]
	cneg	w10, w10, ne
	cmp	w9, #2
	b.lt	.LBB14_41
	sub	w8, w14, w8
	sub	w9, w9, #1
	cmp	w12, #0
	asr	w21, w11, #1
	ldur	w11, [x29, #-12]
	lsl	w8, w8, #10
	csel	w9, wzr, w9, eq
	mov	w23, wzr
	add	x26, x13, w8, sxtw
	sxtw	x19, w10
	lsr	w8, w11, #3
	mul	w9, w9, w11
	cmp	w8, #1
	lsr	w9, w9, #2
	csinc	w8, w8, wzr, hi
	add	x27, x0, x9
	lsl	x22, x8, #1
	b	.LBB14_38
.LBB14_37:
	add	w23, w23, #1
	add	x27, x27, x19
	cmp	w23, w21
	b.eq	.LBB14_41
.LBB14_38:
	ldur	w8, [x29, #-12]
	cmp	w8, #8
	b.lo	.LBB14_37
	mov	x20, xzr
.LBB14_40:
	ldr	x2, [x25], #8
	ldr	x1, [x24], #8
	sub	x3, x29, #8
	mov	x0, x26
	bl	ebc_get_8pix_wf_full
	strh	w0, [x27, x20]
	add	x20, x20, #2
	cmp	x22, x20
	b.ne	.LBB14_40
	b	.LBB14_37
.LBB14_41:
	ldp	x25, x24, [sp, #8]
	adrp	x20, ebc_auto_thread_sem
	adrp	x21, ebc_assist_finished_flag_sem
	add	x20, x20, :lo12:ebc_auto_thread_sem
	add	x21, x21, :lo12:ebc_assist_finished_flag_sem
	mov	w22, #2
	adrp	x23, ebc_auto_assist_task
	mov	w26, #1
	mov	w27, #255
.LBB14_42:
	ldr	x19, [sp, #24]
	b	.LBB14_2
.LBB14_43:
	bl	direct_mode_data_change_full
	b	.LBB14_2
.LBB14_44:
	mov	x0, x21
	bl	up
	ldr	w8, [x28, #820]
	cbnz	w8, .LBB14_46
	ldr	x8, [x28, #448]
	mov	x6, x25
	ldp	x0, x1, [x28, #368]
	ldp	x4, x5, [x28, #392]
	ldr	x2, [x28, #248]
	ldr	x3, [x8, #16]
	bl	refresh_new_image
.LBB14_46:
	ldrsw	x8, [x28, #112]
	mov	x5, x25
	ldp	x1, x2, [x28, #368]
	mov	w6, #1
	add	x8, x28, x8, lsl #3
	ldr	w9, [x28, #204]
	ldp	x3, x4, [x28, #392]
	ldr	x0, [x8, #408]
	cbz	w9, .LBB14_57
	bl	get_overlay_image2
	b	.LBB14_58
.LBB14_48:
	ldr	w8, [x28, #316]
	ldr	w9, [x28, #312]
	add	w10, w8, #7
	cmp	w8, #0
	csel	w13, w10, w8, lt
	cmp	w9, #1
	b.lt	.LBB14_31
	ldr	x12, [x28, #448]
	mov	w10, wzr
	ldr	x11, [x28, #392]
	asr	w13, w13, #3
	ldr	x14, [x28, #368]
	ldr	x12, [x12, #16]
	b	.LBB14_51
.LBB14_50:
	add	w10, w10, #1
	cmp	w10, w9
	b.eq	.LBB14_31
.LBB14_51:
	cmp	w8, #8
	b.lt	.LBB14_50
	mov	w15, w13
	b	.LBB14_54
.LBB14_53:
	add	x14, x14, #8
	subs	w15, w15, #1
	b.eq	.LBB14_50
.LBB14_54:
	ldr	x16, [x12], #8
	ldr	x17, [x14]
	ldr	x0, [x11], #8
	cmp	x16, x17
	b.eq	.LBB14_53
	tst	x0, #0xff
	csel	x1, x27, xzr, eq
	tst	x0, #0xff00
	orr	x2, x1, #0xff00
	csel	x1, x2, x1, eq
	tst	x0, #0xff0000
	orr	x2, x1, #0xff0000
	csel	x1, x2, x1, eq
	tst	x0, #0xff000000
	orr	x2, x1, #0xff000000
	csel	x1, x2, x1, eq
	tst	x0, #0xff00000000
	orr	x2, x1, #0xff00000000
	csel	x1, x2, x1, eq
	tst	x0, #0xff0000000000
	orr	x2, x1, #0xff0000000000
	csel	x1, x2, x1, eq
	tst	x0, #0xff000000000000
	orr	x2, x1, #0xff000000000000
	lsr	x0, x0, #56
	csel	x1, x2, x1, eq
	cmp	x0, #0
	orr	x2, x1, #0xff00000000000000
	csel	x0, x2, x1, eq
	bic	x17, x17, x0
	and	x16, x0, x16
	orr	x16, x17, x16
	str	x16, [x14]
	b	.LBB14_53
.LBB14_56:
	bl	get_auto_image
	b	.LBB14_58
.LBB14_57:
	bl	get_overlay_image
.LBB14_58:
	adrp	x8, jiffies
	str	w26, [x28, #300]
	ldr	x8, [x8, :lo12:jiffies]
	ldr	x0, [sp]
	add	x1, x8, #1
	bl	mod_timer
	b	.LBB14_2
.Lfunc_end14:
	.size	ebc_auto_tast_function, .Lfunc_end14-ebc_auto_tast_function
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI14_0:
	.word	.LBB14_5-.Ltmp25
	.word	.LBB14_8-.Ltmp25
	.word	.LBB14_11-.Ltmp25
	.word	.LBB14_15-.Ltmp25
	.word	.LBB14_1-.Ltmp25

	.text
	.p2align	2
	.type	ebc_auto_assist_tast_function,@function
ebc_auto_assist_tast_function:
	sub	sp, sp, #128
	str	x30, [x18], #8
	adrp	x8, global_ebc
	stp	x24, x23, [sp, #80]
	stp	x26, x25, [sp, #64]
	adrp	x23, ebc_assist_finished_flag_sem
	stp	x20, x19, [sp, #112]
	adrp	x19, ebc_auto_assist_thread_sem
	ldr	x24, [x8, :lo12:global_ebc]
	adrp	x25, .LJTI15_0
	stp	x22, x21, [sp, #96]
	add	x19, x19, :lo12:ebc_auto_assist_thread_sem
	mov	w22, #2
	add	x23, x23, :lo12:ebc_assist_finished_flag_sem
	add	x21, x24, #232
	add	x25, x25, :lo12:.LJTI15_0
	stp	x29, x30, [sp, #32]
	add	x29, sp, #32
	stp	x28, x27, [sp, #48]
	//APP
	mrs	x20, SP_EL0
	//NO_APP
	stp	x21, x20, [sp]
	b	.LBB15_4
.LBB15_1:
	ldrsw	x8, [x24, #112]
	mov	x4, x21
	ldp	x1, x2, [x24, #368]
	mov	w5, #3
	add	x8, x24, x8, lsl #3
	ldr	w9, [x24, #204]
	ldr	x3, [x24, #392]
	ldr	x0, [x8, #408]
	cbz	w9, .LBB15_18
	bl	get_auto_image2
.LBB15_3:
	mov	x0, x23
	bl	up
	mov	x0, x19
	bl	up
	bl	schedule
.LBB15_4:
	mov	x0, x19
	bl	down
	str	w22, [x20, #48]
	//APP
	dmb	ish
	//NO_APP
	ldr	w8, [x24, #472]
	sub	w8, w8, #1
	cmp	w8, #4
	b.hi	.LBB15_9
.Ltmp26:
	adr	x9, .Ltmp26
	ldrsw	x10, [x25, x8, lsl #2]
	add	x9, x9, x10
	br	x9
.LBB15_6:
	ldr	w8, [x24, #304]
	cbz	w8, .LBB15_3
	ldrsw	x8, [x24, #112]
	mov	x3, x21
	ldp	x11, x9, [x24, #440]
	mov	w4, #3
	add	x8, x24, x8, lsl #3
	ldr	w10, [x24, #204]
	ldr	x2, [x11, #16]
	ldr	x1, [x9, #16]
	ldr	x0, [x8, #408]
	cbz	w10, .LBB15_20
	bl	direct_mode_data_change_part2
	b	.LBB15_3
.LBB15_9:
	ldr	x9, [x24, #448]
	ldr	w8, [x9, #40]
	cmp	w8, #21
	b.ne	.LBB15_15
	mov	x0, x21
	bl	is_full_refresh_done
	tbnz	w0, #0, .LBB15_3
	ldrsw	x8, [x24, #112]
	mov	x3, x21
	ldp	x11, x9, [x24, #440]
	mov	w4, #3
	add	x8, x24, x8, lsl #3
	ldr	w10, [x24, #204]
	ldr	x2, [x11, #16]
	ldr	x1, [x9, #16]
	ldr	x0, [x8, #408]
	cbz	w10, .LBB15_23
	bl	direct_mode_data_change_full2
	b	.LBB15_3
.LBB15_13:
	ldrsw	x8, [x24, #112]
	mov	x5, x21
	ldp	x1, x2, [x24, #368]
	mov	w6, #3
	add	x8, x24, x8, lsl #3
	ldr	w9, [x24, #204]
	ldp	x3, x4, [x24, #392]
	ldr	x0, [x8, #408]
	cbz	w9, .LBB15_19
	bl	get_overlay_image2
	b	.LBB15_3
.LBB15_15:
	ldr	w8, [x24, #304]
	cbz	w8, .LBB15_3
	ldrsw	x10, [x24, #112]
	ldr	x12, [x24, #440]
	ldr	w11, [x24, #204]
	add	x10, x24, x10, lsl #3
	ldr	x1, [x9, #16]
	ldr	x2, [x12, #16]
	ldr	x0, [x10, #408]
	cbz	w11, .LBB15_21
	mov	x3, x21
	mov	w4, #3
	bl	direct_mode_data_change2
	b	.LBB15_3
.LBB15_18:
	bl	get_auto_image
	b	.LBB15_3
.LBB15_19:
	bl	get_overlay_image
	b	.LBB15_3
.LBB15_20:
	bl	direct_mode_data_change_part
	b	.LBB15_3
.LBB15_21:
	adrp	x9, global_ebc
	ldrb	w10, [x24, #288]
	ldr	x11, [x24, #352]
	ldr	x9, [x9, :lo12:global_ebc]
	ldp	w13, w26, [x9, #116]
	ldr	w9, [x9, #196]
	cmp	w26, #0
	cinc	w12, w26, lt
	asr	w28, w12, #1
	mov	x12, #512
	movk	x12, #1540, lsl #16
	movk	x12, #2568, lsl #32
	movk	x12, #3596, lsl #48
	stur	x12, [x29, #-8]
	cbz	w9, .LBB15_24
	mvn	w9, w28
	neg	w12, w13, lsr #2
	add	w9, w26, w9
	cmp	w28, w26
	b.lt	.LBB15_25
	b	.LBB15_30
.LBB15_23:
	bl	direct_mode_data_change_full
	b	.LBB15_3
.LBB15_24:
	lsr	w12, w13, #2
	mov	w9, w28
	cmp	w28, w26
	b.ge	.LBB15_30
.LBB15_25:
	sub	w8, w10, w8
	lsr	w10, w13, #3
	lsl	w8, w8, #10
	mul	w9, w9, w13
	cmp	w10, #1
	mov	w23, w13
	add	x22, x11, w8, sxtw
	mul	w8, w28, w10
	lsr	w9, w9, #2
	sxtw	x11, w12
	sbfiz	x8, x8, #3, #32
	add	x25, x0, x9
	add	x21, x1, x8
	add	x20, x2, x8
	csinc	w8, w10, wzr, hi
	str	x11, [sp, #16]
	lsl	x19, x8, #1
	b	.LBB15_27
.LBB15_26:
	ldr	x8, [sp, #16]
	add	w28, w28, #1
	mov	w13, w23
	cmp	w28, w26
	add	x25, x25, x8
	mov	w8, w26
	b.eq	.LBB15_30
.LBB15_27:
	cmp	w13, #8
	b.lo	.LBB15_26
	mov	x27, xzr
.LBB15_29:
	ldr	x2, [x21], #8
	ldr	x1, [x20], #8
	sub	x3, x29, #8
	mov	x0, x22
	bl	ebc_get_8pix_wf_full
	strh	w0, [x25, x27]
	add	x27, x27, #2
	cmp	x19, x27
	b.ne	.LBB15_29
	b	.LBB15_26
.LBB15_30:
	ldp	x21, x20, [sp]
	adrp	x19, ebc_auto_assist_thread_sem
	adrp	x23, ebc_assist_finished_flag_sem
	adrp	x25, .LJTI15_0
	add	x19, x19, :lo12:ebc_auto_assist_thread_sem
	mov	w22, #2
	add	x23, x23, :lo12:ebc_assist_finished_flag_sem
	add	x25, x25, :lo12:.LJTI15_0
	b	.LBB15_3
.Lfunc_end15:
	.size	ebc_auto_assist_tast_function, .Lfunc_end15-ebc_auto_assist_tast_function
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI15_0:
	.word	.LBB15_6-.Ltmp26
	.word	.LBB15_9-.Ltmp26
	.word	.LBB15_1-.Ltmp26
	.word	.LBB15_13-.Ltmp26
	.word	.LBB15_3-.Ltmp26

	.text
	.p2align	2
	.type	ebc_thread,@function
ebc_thread:
	sub	sp, sp, #224
	str	x30, [x18], #8
	adrp	x8, global_ebc
	stp	x20, x19, [sp, #208]
	stp	x29, x30, [sp, #128]
	add	x29, sp, #128
	stp	x28, x27, [sp, #144]
	mov	w28, #-268435456
	ldr	x19, [x8, :lo12:global_ebc]
	stp	x26, x25, [sp, #160]
	stp	x24, x23, [sp, #176]
	mov	x23, #1030792151040
	stp	x22, x21, [sp, #192]
	mov	w22, #1
	add	x8, x19, #852
	add	x9, x19, #232
	mov	x26, #263882790666240
	mov	x20, #67553994410557440
	str	x8, [sp, #64]
	add	x8, x19, #328
	stp	x9, x8, [sp, #32]
	add	x8, x19, #680
	str	x8, [sp, #16]
	add	x8, x19, #284
	stur	x8, [x29, #-48]
	add	x8, x19, #720
	str	x8, [sp, #24]
	add	x8, x19, #40
	str	x8, [sp, #8]
	add	x8, x19, #760
	str	x8, [sp, #48]
	b	.LBB16_3
.LBB16_1:
	bl	_dev_info
.LBB16_2:
	mov	x0, x24
	bl	ebc_buf_release
.LBB16_3:
	bl	ebc_osd_buf_get
	cbnz	x0, .LBB16_28
	ldr	w8, [x19, #816]
	str	wzr, [x19, #324]
	cbz	w8, .LBB16_7
	ldr	w8, [x19, #812]
	cbnz	w8, .LBB16_7
	ldr	w8, [x19, #820]
	cbz	w8, .LBB16_8
.LBB16_7:
	bl	ebc_dsp_buf_get
	cbnz	x0, .LBB16_38
.LBB16_8:
	ldr	w8, [x19, #320]
	cbnz	w8, .LBB16_260
	bl	ebc_get_power_off_delay
	bl	__msecs_to_jiffies
	ldr	w8, [x19, #320]
	cmp	w8, #0
	cset	w9, eq
	cmp	x0, #0
	cset	w10, eq
	cbnz	w8, .LBB16_17
	and	w9, w9, w10
	tbnz	w9, #0, .LBB16_17
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	ebc_get_power_off_delay
	bl	__msecs_to_jiffies
	mov	x24, x0
	sub	x0, x29, #40
	mov	w1, wzr
	bl	init_wait_entry
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w9, [x19, #320]
	cmp	x24, #0
	ccmp	w9, #0, #4, eq
	csinc	x8, x24, xzr, eq
	cbnz	w9, .LBB16_16
	cbz	x8, .LBB16_16
.LBB16_13:
	cbnz	x0, .LBB16_122
	mov	x0, x8
	bl	schedule_timeout
	mov	x24, x0
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w9, [x19, #320]
	cmp	x24, #0
	ccmp	w9, #0, #4, eq
	csinc	x8, x24, xzr, eq
	cbnz	w9, .LBB16_16
	cbnz	x8, .LBB16_13
.LBB16_16:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
	ldr	w8, [x19, #320]
.LBB16_17:
	cbnz	w8, .LBB16_3
.LBB16_18:
	ldur	x21, [x29, #-48]
	ldr	w8, [x21]
	cmp	w8, #1
	b.ne	.LBB16_66
	sub	x0, x29, #40
	mov	w1, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w8, [x21]
	cbz	w8, .LBB16_23
.LBB16_20:
	ldr	w8, [x19, #320]
	cbnz	w8, .LBB16_23
	cbnz	x0, .LBB16_24
	bl	schedule
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbnz	w8, .LBB16_20
.LBB16_23:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_24:
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .LBB16_3
	bl	ebc_get_osd_list_enum_num
	cbnz	w0, .LBB16_3
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_68
	ldr	w8, [x19, #320]
	cbz	w8, .LBB16_69
	b	.LBB16_260
.LBB16_28:
	mov	x24, x0
	ldr	w8, [x19, #800]
	cbnz	w8, .LBB16_36
	ldr	w8, [x19, #804]
	cbnz	w8, .LBB16_36
	ldp	w8, w9, [x24, #48]
	orr	w8, w9, w8
	cbnz	w8, .LBB16_48
	ldr	w8, [x24, #56]
	ldr	w9, [x19, #316]
	cmp	w9, w8
	b.ne	.LBB16_48
	ldr	w8, [x24, #60]
	ldr	w9, [x19, #312]
	cmp	w9, w8
	b.ne	.LBB16_48
	ldr	w8, [x19, #472]
	cmp	w8, #4
	b.eq	.LBB16_152
	ldr	x8, [sp, #64]
	ldr	w8, [x8]
	cmp	w8, #1
	b.lt	.LBB16_2
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.77
	add	x1, x1, :lo12:.L.str.77
	ldr	x0, [x8]
	b	.LBB16_1
.LBB16_36:
	ldr	x8, [sp, #64]
	ldr	w8, [x8]
	cmp	w8, #1
	b.lt	.LBB16_2
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.76
	add	x1, x1, :lo12:.L.str.76
	ldr	x0, [x8]
	b	.LBB16_1
.LBB16_38:
	ldr	w2, [x0, #40]
	stur	x0, [x29, #-56]
	cmp	w2, #21
	b.eq	.LBB16_42
	ldr	w9, [x19, #808]
	ldr	w8, [x19, #472]
	cbnz	w9, .LBB16_59
	cmp	w8, #4
	b.ne	.LBB16_42
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbnz	w8, .LBB16_405
.LBB16_42:
	ldr	w8, [x19, #676]
	cbnz	w8, .LBB16_44
	ldur	x8, [x29, #-56]
	str	x8, [x19, #440]
	ldr	w2, [x8, #40]
.LBB16_44:
	cmp	w2, #23
	b.hi	.LBB16_141
	lsl	w8, w22, w2
	tst	w8, #0x1ff80
	b.ne	.LBB16_51
	mov	w9, #124
	movk	w9, #34, lsl #16
	tst	w8, w9
	b.eq	.LBB16_114
	mov	w21, #2
	b	.LBB16_52
.LBB16_48:
	ldr	w8, [x19, #472]
	cmp	w8, #1
	b.eq	.LBB16_62
	cmp	w8, #5
	b.eq	.LBB16_62
	cmp	w8, #2
	b.eq	.LBB16_65
	b	.LBB16_152
.LBB16_51:
	mov	w21, #1
.LBB16_52:
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_76
	ldr	x8, [sp, #64]
	ldr	w8, [x8]
	cmp	w8, #1
	b.lt	.LBB16_55
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.85
	add	x1, x1, :lo12:.L.str.85
	ldr	x0, [x8]
	bl	_dev_info
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_74
.LBB16_55:
	sub	x0, x29, #40
	mov	w1, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
.LBB16_56:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_73
	cbnz	x0, .LBB16_74
	bl	schedule
	b	.LBB16_56
.LBB16_59:
	cmp	w8, #1
	b.eq	.LBB16_107
	cmp	w8, #5
	b.eq	.LBB16_107
	cmp	w8, #2
	b.eq	.LBB16_110
	b	.LBB16_405
.LBB16_62:
	ldr	w2, [x19, #304]
	cbnz	w2, .LBB16_111
	ldr	w8, [x19, #828]
	cbz	w8, .LBB16_65
	ldr	w8, [x19, #824]
	cbnz	w8, .LBB16_143
.LBB16_65:
	ldr	x8, [x19, #440]
	ldr	x0, [x19, #376]
	ldrsw	x2, [x19, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
	ldr	x8, [x19, #448]
	ldr	x0, [x19, #368]
	ldrsw	x2, [x19, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
	b	.LBB16_152
.LBB16_66:
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .LBB16_3
	bl	ebc_get_osd_list_enum_num
	cbnz	w0, .LBB16_3
.LBB16_68:
	mov	x0, x19
	mov	w1, wzr
	bl	ebc_power_set
	ldr	w8, [x19, #320]
	cbnz	w8, .LBB16_260
.LBB16_69:
	sub	x0, x29, #40
	mov	w1, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
.LBB16_70:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w8, [x19, #320]
	cbnz	w8, .LBB16_259
	cbnz	x0, .LBB16_260
	bl	schedule
	b	.LBB16_70
.LBB16_73:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_74:
	ldr	x8, [sp, #64]
	ldr	w8, [x8]
	cmp	w8, #1
	b.lt	.LBB16_76
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.86
	add	x1, x1, :lo12:.L.str.86
	ldr	x0, [x8]
	bl	_dev_info
.LBB16_76:
	ldr	w8, [x19, #472]
	sub	w9, w8, #3
	cmp	w9, #2
	b.hs	.LBB16_78
	ldr	x8, [x19, #440]
	str	wzr, [x19, #824]
	str	wzr, [x19, #836]
	ldr	x1, [x19, #376]
	ldrsw	x2, [x19, #260]
	ldr	x0, [x8, #16]
	bl	memcpy
	b	.LBB16_80
.LBB16_78:
	cmp	w8, #1
	b.ne	.LBB16_80
	ldr	w2, [x19, #304]
	cbnz	w2, .LBB16_123
.LBB16_80:
	ldur	x8, [x29, #-56]
	ldr	w8, [x8, #40]
	sub	w9, w8, #6
	cmp	w9, #6
	b.lo	.LBB16_82
	sub	w9, w8, #2
	cmp	w9, #1
	b.hi	.LBB16_94
.LBB16_82:
	ldr	w9, [x19, #260]
	add	w10, w9, #7
	cmp	w9, #0
	csel	w10, w10, w9, lt
	cmp	w9, #8
	b.lt	.LBB16_104
	ldr	x9, [x19, #440]
	asr	w10, w10, #3
	ldur	x11, [x29, #-56]
	ldr	x9, [x9, #16]
	ldr	x11, [x11, #16]
	b	.LBB16_85
.LBB16_84:
	subs	w10, w10, #1
	b.eq	.LBB16_104
.LBB16_85:
	ldr	x12, [x11], #8
	ldr	x13, [x9], #8
	eor	x14, x13, x12
	tst	x14, #0xf8f8f8f8f8f8f8f8
	b.eq	.LBB16_84
	and	w14, w12, #0xf8
	and	w15, w13, #0xf8
	subs	w14, w14, w15
	cneg	w14, w14, mi
	cmp	w14, #8
	b.hi	.LBB16_94
	ubfx	x14, x12, #8, #24
	ubfx	x15, x13, #8, #24
	and	w14, w14, #0xf8
	and	w15, w15, #0xf8
	subs	w14, w14, w15
	cneg	w14, w14, mi
	cmp	w14, #8
	b.hi	.LBB16_94
	ubfx	x14, x12, #16, #16
	ubfx	x15, x13, #16, #16
	and	w14, w14, #0xf8
	and	w15, w15, #0xf8
	subs	w14, w14, w15
	cneg	w14, w14, mi
	cmp	w14, #8
	b.hi	.LBB16_94
	and	x14, x12, #0xf8f8f8f8f8f8f8f8
	and	x15, x13, #0xf8f8f8f8f8f8f8f8
	ubfx	x16, x14, #24, #8
	ubfx	x17, x15, #24, #8
	subs	w16, w16, w17
	cneg	w16, w16, mi
	cmp	w16, #8
	b.hi	.LBB16_94
	lsr	x16, x12, #32
	lsr	x17, x13, #32
	and	w16, w16, #0xf8
	and	w17, w17, #0xf8
	subs	w16, w16, w17
	cneg	w16, w16, mi
	cmp	w16, #8
	b.hi	.LBB16_94
	lsr	x16, x12, #40
	lsr	x17, x13, #40
	and	w16, w16, #0xf8
	and	w17, w17, #0xf8
	subs	w16, w16, w17
	cneg	w16, w16, mi
	cmp	w16, #8
	b.hi	.LBB16_94
	lsr	x12, x12, #48
	lsr	x13, x13, #48
	and	w12, w12, #0xf8
	and	w13, w13, #0xf8
	subs	w12, w12, w13
	cneg	w12, w12, mi
	cmp	w12, #8
	b.hi	.LBB16_94
	lsr	x12, x14, #56
	lsr	x13, x15, #56
	subs	w12, w12, w13
	cneg	w12, w12, mi
	cmp	w12, #8
	b.ls	.LBB16_84
.LBB16_94:
	ldr	w9, [x19, #828]
	cbz	w9, .LBB16_126
	sub	w10, w8, #12
	cmp	w10, #2
	b.hi	.LBB16_126
	ldr	w8, [x19, #824]
	cbnz	w8, .LBB16_140
	ldr	w8, [x19, #836]
	cbnz	w8, .LBB16_261
	ldr	w8, [x19, #260]
	add	w9, w8, #7
	cmp	w8, #0
	csel	w9, w9, w8, lt
	cmp	w8, #8
	b.lt	.LBB16_102
	ldr	x10, [x19, #440]
	asr	w9, w9, #3
	ldr	x1, [x10, #16]
	ldur	x10, [x29, #-56]
	mov	x11, x1
	ldr	x10, [x10, #16]
.LBB16_100:
	ldr	x12, [x10]
	ldr	x13, [x11]
	cmp	x12, x13
	b.ne	.LBB16_262
	add	x11, x11, #8
	add	x10, x10, #8
	subs	w9, w9, #1
	b.ne	.LBB16_100
.LBB16_102:
	ldr	x8, [sp, #64]
	ldr	w8, [x8]
	cmp	w8, #1
	b.lt	.LBB16_142
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.90
	add	x1, x1, :lo12:.L.str.90
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_142
.LBB16_104:
	ldr	x8, [sp, #64]
	ldr	w8, [x8]
	cmp	w8, #1
	b.lt	.LBB16_106
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.89
	add	x1, x1, :lo12:.L.str.89
	ldr	x0, [x8]
	bl	_dev_info
.LBB16_106:
	ldur	x8, [x29, #-56]
	str	x8, [x19, #448]
	b	.LBB16_472
.LBB16_107:
	ldr	w2, [x19, #304]
	cbnz	w2, .LBB16_136
	ldr	w8, [x19, #828]
	cbz	w8, .LBB16_110
	ldr	w8, [x19, #824]
	cbnz	w8, .LBB16_398
.LBB16_110:
	ldr	x8, [x19, #440]
	ldr	x0, [x19, #376]
	ldrsw	x2, [x19, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
	ldr	x8, [x19, #448]
	ldr	x0, [x19, #368]
	ldrsw	x2, [x19, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
	b	.LBB16_405
.LBB16_111:
	ldr	x8, [sp, #64]
	ldr	w8, [x8]
	cmp	w8, #0
	b.le	.LBB16_138
	adrp	x1, .L.str.78
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.78
	bl	_dev_info
	ldr	w8, [x19, #852]
	str	wzr, [x19, #812]
	cmp	w8, #1
	b.lt	.LBB16_139
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.79
	add	x1, x1, :lo12:.L.str.79
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_139
.LBB16_114:
	mov	w9, #1
	movk	w9, #192, lsl #16
	tst	w8, w9
	b.eq	.LBB16_141
	ldr	w8, [x19, #472]
	ldur	x9, [x29, #-56]
	sub	w8, w8, #1
	cmp	w8, #4
	str	x9, [x19, #448]
	b.hi	.LBB16_381
	adrp	x11, .LJTI16_0
	add	x11, x11, :lo12:.LJTI16_0
	adr	x9, .LBB16_117
	ldrh	w10, [x11, x8, lsl #1]
	add	x9, x9, x10, lsl #2
	br	x9
.LBB16_117:
	ldr	w2, [x19, #304]
	cbnz	w2, .LBB16_391
	ldr	w8, [x19, #828]
	cbz	w8, .LBB16_120
	ldr	w8, [x19, #824]
	cbnz	w8, .LBB16_447
.LBB16_120:
	ldr	x8, [x19, #440]
	ldr	x0, [x19, #376]
	ldrsw	x2, [x19, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
.LBB16_121:
	ldr	x8, [x19, #448]
	ldr	x0, [x19, #368]
	ldrsw	x2, [x19, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
	b	.LBB16_394
.LBB16_122:
	mov	w8, wzr
	cbnz	w8, .LBB16_3
	b	.LBB16_18
.LBB16_123:
	ldr	x8, [sp, #64]
	ldr	w8, [x8]
	cmp	w8, #1
	b.lt	.LBB16_125
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.88
	add	x1, x1, :lo12:.L.str.88
	ldr	x0, [x8]
	bl	_dev_info
.LBB16_125:
	mov	w8, #21
	ldur	x9, [x29, #-56]
	str	wzr, [x19, #304]
	mov	w21, #2
	str	w8, [x9, #40]
	ldr	w9, [x19, #828]
.LBB16_126:
	cbz	w9, .LBB16_267
	ldr	w9, [x19, #824]
	cbz	w9, .LBB16_267
	cmp	w8, #21
	b.eq	.LBB16_267
	ldr	x8, [sp, #64]
	ldr	w8, [x8]
	cmp	w8, #1
	b.lt	.LBB16_131
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.91
	add	x1, x1, :lo12:.L.str.91
	ldr	x0, [x8]
	bl	_dev_info
.LBB16_131:
	ldr	w8, [x19, #260]
	cmp	w8, #1
	b.lt	.LBB16_266
	ldr	x10, [x19, #448]
	ldur	x11, [x29, #-56]
	ldr	x9, [x19, #384]
	ldr	x10, [x10, #16]
	ldr	x11, [x11, #16]
	b	.LBB16_134
.LBB16_133:
	subs	x8, x8, #1
	add	x10, x10, #1
	add	x11, x11, #1
	add	x9, x9, #1
	b.eq	.LBB16_266
.LBB16_134:
	ldrb	w12, [x9]
	cbz	w12, .LBB16_133
	ldrb	w12, [x11]
	mvn	w12, w12
	and	w12, w12, #0xf0
	strb	w12, [x10]
	b	.LBB16_133
.LBB16_136:
	ldr	x8, [sp, #64]
	ldr	w8, [x8]
	cmp	w8, #1
	b.lt	.LBB16_405
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.78
	add	x1, x1, :lo12:.L.str.78
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_405
.LBB16_138:
	str	wzr, [x19, #812]
.LBB16_139:
	adrp	x8, jiffies
	ldr	x21, [x8, :lo12:jiffies]
	ldr	w8, [x19, #304]
	lsl	w9, w8, #4
	sub	w0, w9, w8
	bl	__msecs_to_jiffies
	add	x1, x0, x21
	ldr	x0, [sp, #16]
	bl	mod_timer
	str	wzr, [x19, #304]
	b	.LBB16_152
.LBB16_140:
	ldr	x8, [x19, #440]
	ldr	x1, [x19, #376]
	ldrsw	x2, [x19, #260]
	ldr	x0, [x8, #16]
	b	.LBB16_263
.LBB16_141:
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.102
	add	x1, x1, :lo12:.L.str.102
	ldr	x0, [x8]
	bl	_dev_err
.LBB16_142:
	ldur	x0, [x29, #-56]
	bl	ebc_buf_release
	b	.LBB16_3
.LBB16_143:
	ldr	x8, [sp, #64]
	ldr	w8, [x8]
	cmp	w8, #1
	b.lt	.LBB16_145
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.80
	add	x1, x1, :lo12:.L.str.80
	ldr	x0, [x8]
	bl	_dev_info
.LBB16_145:
	ldr	w8, [x19, #260]
	ldr	x1, [x19, #384]
	cmp	w8, #1
	b.lt	.LBB16_149
	ldr	x9, [x19, #448]
	ldr	x9, [x9, #16]
.LBB16_147:
	ldrb	w10, [x9], #1
	ldrb	w11, [x1]
	mvn	w12, w10
	and	w12, w12, #0xf0
	cmp	w11, #0
	csel	w10, w10, w12, eq
	subs	x8, x8, #1
	strb	w10, [x1], #1
	b.ne	.LBB16_147
	ldr	x1, [x19, #384]
	ldr	w8, [x19, #260]
.LBB16_149:
	ldr	x0, [x19, #376]
	sxtw	x2, w8
	bl	memcpy
	ldr	x8, [x19, #448]
	ldr	x0, [x19, #368]
	ldrsw	x2, [x19, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
	ldr	w8, [x19, #852]
	str	wzr, [x19, #836]
	str	wzr, [x19, #824]
	str	wzr, [x19, #812]
	cmp	w8, #1
	b.lt	.LBB16_151
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.79
	add	x1, x1, :lo12:.L.str.79
	ldr	x0, [x8]
	bl	_dev_info
.LBB16_151:
	adrp	x8, jiffies
	ldr	x21, [x8, :lo12:jiffies]
	ldrb	w8, [x19, #336]
	lsl	w9, w8, #4
	sub	w0, w9, w8
	bl	__msecs_to_jiffies
	add	x1, x0, x21
	ldr	x0, [sp, #16]
	bl	mod_timer
.LBB16_152:
	mov	w8, #4
	str	x24, [x19, #464]
	ldr	w9, [x19, #316]
	str	w8, [x19, #472]
	ldp	w10, w8, [x24, #48]
	ldp	w12, w14, [x24, #56]
	add	w11, w10, #7
	cmp	w10, #0
	add	w13, w12, #7
	csel	w11, w11, w10, lt
	cmp	w12, #0
	add	w10, w9, #7
	csel	w12, w13, w12, lt
	cmp	w9, #0
	asr	w15, w12, #3
	csel	w13, w10, w9, lt
	ldr	w10, [x19, #312]
	add	w9, w15, #1
	asr	w12, w13, #3
	sub	w16, w12, #1
	cmp	w9, w12
	csinc	w9, w16, w15, ge
	sub	w15, w10, #1
	cmp	w14, w10
	csel	w10, w14, w15, lt
	cmp	w8, w10
	stur	w9, [x29, #-56]
	b.le	.LBB16_157
.LBB16_153:
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbnz	w8, .LBB16_254
	mov	x0, x19
	mov	w1, #1
	mov	w2, wzr
	str	w22, [x19, #284]
	bl	ebc_lut_update
	ldr	w9, [x19, #852]
	ldr	w8, [x19, #336]
	cmp	w9, #1
	strh	w8, [x19, #288]
	b.lt	.LBB16_156
	ldr	x9, [sp, #40]
	adrp	x1, .L.str.81
	and	w2, w8, #0xff
	ubfx	w3, w8, #8, #8
	add	x1, x1, :lo12:.L.str.81
	ldr	x0, [x9]
	bl	_dev_info
.LBB16_156:
	mov	x0, x19
	bl	ebc_frame_start
	bl	ebc_overlay_enable_control
	cbnz	w0, .LBB16_255
	b	.LBB16_256
.LBB16_157:
	asr	w11, w11, #3
	ldr	x14, [x19, #448]
	sxtw	x9, w11
	mul	w12, w12, w8
	ldp	x16, x15, [x19, #392]
	sbfx	x3, x13, #3, #29
	ldr	x17, [x14, #16]
	sxtw	x14, w12
	ldr	x0, [x24, #16]
	str	x9, [sp, #56]
	ldp	x2, x12, [x19, #368]
	lsl	x1, x14, #3
	ldur	w9, [x29, #-56]
	add	x14, x16, x1
	add	x16, x0, x1
	add	x13, x15, x1
	add	x15, x17, x1
	add	x17, x2, x1
	add	w0, w9, #1
	lsl	x2, x3, #3
	sxtw	x1, w0
	b	.LBB16_159
.LBB16_158:
	add	w8, w8, #1
	add	x13, x13, x2
	add	x14, x14, x2
	add	x15, x15, x2
	add	x16, x16, x2
	add	x17, x17, x2
	cmp	w8, w10
	b.gt	.LBB16_153
.LBB16_159:
	ldur	w9, [x29, #-56]
	cmp	w11, w9
	b.gt	.LBB16_158
	ldr	x3, [sp, #56]
	b	.LBB16_164
.LBB16_161:
	and	x24, x24, #0xffffffffffffff
.LBB16_162:
	orr	x6, x6, #0x100000000000000
.LBB16_163:
	bic	x9, x24, x27
	and	x0, x27, x7
	add	x3, x3, #1
	orr	x9, x9, x0
	cmp	x1, x3
	str	x6, [x13, x4]
	str	x9, [x17, x4]
	str	x5, [x14, x4]
	b.eq	.LBB16_158
.LBB16_164:
	lsl	x4, x3, #3
	ldr	x5, [x14, x4]
	ldr	x24, [x17, x4]
	ldr	x0, [x12, x4]
	ldr	x30, [x16, x4]
	ldr	x7, [x15, x4]
	tst	x5, #0xff
	ldr	x6, [x13, x4]
	b.eq	.LBB16_168
	mvn	w21, w0
	mov	w9, #232
	tst	x21, #0xf0
	cset	w27, ne
	tst	x21, x9
	cset	w21, ne
	and	w21, w27, w21
	mov	x27, xzr
	tbnz	w21, #0, .LBB16_170
	and	x21, x24, #0xf0
	cmp	x21, #240
	b.ne	.LBB16_170
	and	x21, x30, #0xff
	cbnz	x21, .LBB16_170
.LBB16_168:
	and	x6, x6, #0xffffffffffffff00
	and	x5, x5, #0xffffffffffffff00
	and	x21, x30, #0xf0
	cmp	w21, #240
	b.ne	.LBB16_219
	mvn	w21, w7
	tst	x21, #0xf0
	cset	w21, eq
	tst	x7, #0xf8
	cset	w27, eq
	orr	w21, w21, w27
	mov	w27, #255
	orr	x6, x6, x21
.LBB16_170:
	tst	x5, #0xff00
	b.eq	.LBB16_174
	mvn	w21, w0
	mov	w25, #59392
	tst	x21, #0xf000
	cset	w9, ne
	tst	x21, x25
	cset	w21, ne
	and	w9, w9, w21
	tbnz	w9, #0, .LBB16_176
	and	x9, x24, #0xf000
	cmp	x9, #15, lsl #12
	b.ne	.LBB16_176
	and	x9, x30, #0xff00
	cbnz	x9, .LBB16_176
.LBB16_174:
	and	x6, x6, #0xffffffffffff00ff
	and	x5, x5, #0xffffffffffff00ff
	and	x21, x30, #0xf000
	cmp	w21, #15, lsl #12
	b.ne	.LBB16_221
	mvn	w9, w7
	tst	x7, #0xf800
	and	x9, x9, #0xf000
	orr	x27, x27, #0xff00
	ccmp	x9, #0, #4, ne
	orr	x9, x6, #0x100
	csel	x6, x9, x6, eq
.LBB16_176:
	tst	x5, #0xff0000
	b.eq	.LBB16_180
	mvn	w9, w0
	mov	w25, #15204352
	tst	x9, #0xf00000
	cset	w21, ne
	tst	x9, x25
	cset	w9, ne
	and	w9, w21, w9
	tbnz	w9, #0, .LBB16_182
	and	x9, x24, #0xf00000
	cmp	x9, #3840, lsl #12
	b.ne	.LBB16_182
	and	x9, x30, #0xff0000
	cbnz	x9, .LBB16_182
.LBB16_180:
	and	x6, x6, #0xffffffffff00ffff
	and	x5, x5, #0xffffffffff00ffff
	and	x21, x30, #0xf00000
	cmp	x21, #3840, lsl #12
	b.ne	.LBB16_223
	mvn	w9, w7
	tst	x7, #0xf80000
	and	x9, x9, #0xf00000
	orr	x27, x27, #0xff0000
	ccmp	x9, #0, #4, ne
	orr	x9, x6, #0x10000
	csel	x6, x9, x6, eq
.LBB16_182:
	tst	x5, #0xff000000
	b.eq	.LBB16_186
	mvn	w9, w0
	mov	w25, #-402653184
	tst	x9, #0xf0000000
	cset	w21, ne
	tst	x9, x25
	cset	w9, ne
	and	w9, w21, w9
	tbnz	w9, #0, .LBB16_188
	and	x9, x24, #0xf0000000
	cmp	x9, x28
	b.ne	.LBB16_188
	and	x9, x30, #0xff000000
	cbnz	x9, .LBB16_188
.LBB16_186:
	and	x6, x6, #0xffffffff00ffffff
	and	x5, x5, #0xffffffff00ffffff
	and	x21, x30, #0xf0000000
	cmp	w21, w28
	b.ne	.LBB16_225
	mvn	w9, w7
	tst	x7, #0xf8000000
	and	x9, x9, #0xf0000000
	orr	x27, x27, #0xff000000
	ccmp	x9, #0, #4, ne
	orr	x9, x6, #0x1000000
	csel	x6, x9, x6, eq
.LBB16_188:
	tst	x5, #0xff00000000
	b.eq	.LBB16_192
	bics	xzr, x23, x0
	mov	x21, #996432412672
	cset	w9, ne
	bics	xzr, x21, x0
	cset	w21, ne
	and	w9, w9, w21
	tbnz	w9, #0, .LBB16_194
	and	x9, x24, #0xf000000000
	cmp	x9, x23
	b.ne	.LBB16_194
	and	x9, x30, #0xff00000000
	cbnz	x9, .LBB16_194
.LBB16_192:
	and	x6, x6, #0xffffff00ffffffff
	and	x5, x5, #0xffffff00ffffffff
	and	x21, x30, #0xf000000000
	cmp	x21, x23
	b.ne	.LBB16_227
	mvn	x9, x7
	tst	x7, #0xf800000000
	and	x9, x9, #0xf000000000
	orr	x27, x27, #0xff00000000
	ccmp	x9, #0, #4, ne
	orr	x9, x6, #0x100000000
	csel	x6, x9, x6, eq
.LBB16_194:
	tst	x5, #0xff0000000000
	b.eq	.LBB16_198
	bics	xzr, x26, x0
	mov	x21, #255086697644032
	cset	w9, ne
	bics	xzr, x21, x0
	cset	w21, ne
	and	w9, w9, w21
	tbnz	w9, #0, .LBB16_200
	and	x9, x24, #0xf00000000000
	cmp	x9, x26
	b.ne	.LBB16_200
	and	x9, x30, #0xff0000000000
	cbnz	x9, .LBB16_200
.LBB16_198:
	and	x6, x6, #0xffff00ffffffffff
	and	x5, x5, #0xffff00ffffffffff
	and	x21, x30, #0xf00000000000
	cmp	x21, x26
	b.ne	.LBB16_229
	mvn	x9, x7
	tst	x7, #0xf80000000000
	and	x9, x9, #0xf00000000000
	orr	x27, x27, #0xff0000000000
	ccmp	x9, #0, #4, ne
	orr	x9, x6, #0x10000000000
	csel	x6, x9, x6, eq
.LBB16_200:
	tst	x5, #0xff000000000000
	b.eq	.LBB16_204
	bics	xzr, x20, x0
	mov	x21, #65302194596872192
	cset	w9, ne
	bics	xzr, x21, x0
	cset	w21, ne
	and	w9, w9, w21
	tbnz	w9, #0, .LBB16_206
	and	x9, x24, #0xf0000000000000
	cmp	x9, x20
	b.ne	.LBB16_206
	and	x9, x30, #0xff000000000000
	cbnz	x9, .LBB16_206
.LBB16_204:
	and	x6, x6, #0xff00ffffffffffff
	and	x5, x5, #0xff00ffffffffffff
	and	x21, x30, #0xf0000000000000
	cmp	x21, x20
	b.ne	.LBB16_231
	mvn	x9, x7
	tst	x7, #0xf8000000000000
	and	x9, x9, #0xf0000000000000
	orr	x27, x27, #0xff000000000000
	ccmp	x9, #0, #4, ne
	orr	x9, x6, #0x1000000000000
	csel	x6, x9, x6, eq
.LBB16_206:
	lsr	x9, x5, #56
	cbnz	x9, .LBB16_211
	and	x6, x6, #0xffffffffffffff
	lsr	x9, x30, #60
	cmp	x9, #15
	b.lo	.LBB16_215
	orr	x27, x27, #0xff00000000000000
	lsr	x9, x7, #59
	cmp	x9, #30
	b.hi	.LBB16_162
	and	x0, x7, #0xf800000000000000
	cbz	x0, .LBB16_162
	mov	x9, #-1152921504606846976
	cmp	x0, x9
	b.eq	.LBB16_162
	b	.LBB16_163
.LBB16_211:
	lsr	x9, x0, #60
	mov	x21, #-1729382256910270464
	cmp	x9, #15
	cset	w9, lo
	bics	xzr, x21, x0
	cset	w0, ne
	and	w9, w9, w0
	tbnz	w9, #0, .LBB16_163
	lsr	x9, x24, #60
	cmp	x9, #15
	b.lo	.LBB16_163
	lsr	x9, x30, #56
	cbnz	x9, .LBB16_163
	and	x6, x6, #0xffffffffffffff
	and	x5, x5, #0xffffffffffffff
.LBB16_215:
	and	x0, x30, #0xf000000000000000
	mov	x9, #-2305843009213693952
	cmp	x0, x9
	b.eq	.LBB16_218
	cbz	x0, .LBB16_161
	and	x9, x24, #0xffffffffffffff
	orr	x24, x9, x0
	b	.LBB16_163
.LBB16_218:
	mov	x9, #-1152921504606846976
	orr	x6, x6, #0x100000000000000
	bfxil	x9, x24, #0, #56
	mov	x24, x9
	b	.LBB16_163
.LBB16_219:
	cbnz	w21, .LBB16_233
	mov	x27, xzr
	and	x24, x24, #0xffffffffffffff00
	orr	x6, x6, #0x1
	b	.LBB16_170
.LBB16_221:
	cbnz	w21, .LBB16_235
	and	x24, x24, #0xffffffffffff00ff
	orr	x6, x6, #0x100
	b	.LBB16_176
.LBB16_223:
	cbnz	x21, .LBB16_237
	and	x24, x24, #0xffffffffff00ffff
	orr	x6, x6, #0x10000
	b	.LBB16_182
.LBB16_225:
	cbnz	w21, .LBB16_239
	and	x24, x24, #0xffffffff00ffffff
	orr	x6, x6, #0x1000000
	b	.LBB16_188
.LBB16_227:
	cbnz	x21, .LBB16_241
	and	x24, x24, #0xffffff00ffffffff
	orr	x6, x6, #0x100000000
	b	.LBB16_194
.LBB16_229:
	cbnz	x21, .LBB16_243
	and	x24, x24, #0xffff00ffffffffff
	orr	x6, x6, #0x10000000000
	b	.LBB16_200
.LBB16_231:
	cbnz	x21, .LBB16_245
	and	x24, x24, #0xff00ffffffffffff
	orr	x6, x6, #0x1000000000000
	b	.LBB16_206
.LBB16_233:
	cmp	w21, #224
	b.ne	.LBB16_247
	and	x21, x24, #0xffffffffffffff00
	mov	x27, xzr
	orr	x24, x21, #0xf0
	orr	x6, x6, #0x1
	b	.LBB16_170
.LBB16_235:
	and	x9, x24, #0xffffffffffff00ff
	cmp	w21, #14, lsl #12
	b.ne	.LBB16_248
	orr	x24, x9, #0xf000
	orr	x6, x6, #0x100
	b	.LBB16_176
.LBB16_237:
	and	x9, x24, #0xffffffffff00ffff
	cmp	x21, #3584, lsl #12
	b.ne	.LBB16_249
	orr	x24, x9, #0xf00000
	orr	x6, x6, #0x10000
	b	.LBB16_182
.LBB16_239:
	mov	w9, #-536870912
	cmp	w21, w9
	b.ne	.LBB16_250
	and	x9, x24, #0xffffffff00ffffff
	orr	x6, x6, #0x1000000
	orr	x24, x9, #0xf0000000
	b	.LBB16_188
.LBB16_241:
	mov	x9, #962072674304
	cmp	x21, x9
	b.ne	.LBB16_251
	and	x9, x24, #0xffffff00ffffffff
	orr	x6, x6, #0x100000000
	orr	x24, x9, #0xf000000000
	b	.LBB16_194
.LBB16_243:
	mov	x9, #246290604621824
	cmp	x21, x9
	b.ne	.LBB16_252
	and	x9, x24, #0xffff00ffffffffff
	orr	x6, x6, #0x10000000000
	orr	x24, x9, #0xf00000000000
	b	.LBB16_200
.LBB16_245:
	mov	x9, #63050394783186944
	cmp	x21, x9
	b.ne	.LBB16_253
	and	x9, x24, #0xff00ffffffffffff
	orr	x6, x6, #0x1000000000000
	orr	x24, x9, #0xf0000000000000
	b	.LBB16_206
.LBB16_247:
	and	x24, x24, #0xffffffffffffff00
	mov	x27, xzr
	orr	x24, x21, x24
	b	.LBB16_170
.LBB16_248:
	orr	x24, x9, x21
	b	.LBB16_176
.LBB16_249:
	orr	x24, x9, x21
	b	.LBB16_182
.LBB16_250:
	and	x9, x24, #0xffffffff00ffffff
	orr	x24, x9, x21
	b	.LBB16_188
.LBB16_251:
	and	x9, x24, #0xffffff00ffffffff
	orr	x24, x9, x21
	b	.LBB16_194
.LBB16_252:
	and	x9, x24, #0xffff00ffffffffff
	orr	x24, x9, x21
	b	.LBB16_200
.LBB16_253:
	and	x9, x24, #0xff00ffffffffffff
	orr	x24, x9, x21
	b	.LBB16_206
.LBB16_254:
	adrp	x8, ebc_auto_task
	ldr	x0, [x8, :lo12:ebc_auto_task]
	bl	wake_up_process
	bl	ebc_overlay_enable_control
	cbz	w0, .LBB16_256
.LBB16_255:
	adrp	x8, jiffies
	str	w22, [x19, #808]
	ldr	x21, [x8, :lo12:jiffies]
	bl	ebc_overlay_enable_timeout_ms
	bl	__msecs_to_jiffies
	add	x1, x0, x21
	ldr	x0, [sp, #24]
	bl	mod_timer
.LBB16_256:
	ldr	x0, [x19, #456]
	cbz	x0, .LBB16_258
	bl	ebc_buf_release
.LBB16_258:
	ldr	x8, [x19, #464]
	str	x8, [x19, #456]
	b	.LBB16_3
.LBB16_259:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_260:
	str	wzr, [x19, #320]
	b	.LBB16_3
.LBB16_261:
	ldr	x8, [x19, #440]
	ldr	x1, [x8, #16]
	ldr	w8, [x19, #260]
.LBB16_262:
	ldr	x0, [x19, #376]
	sxtw	x2, w8
.LBB16_263:
	bl	memcpy
	ldr	w8, [x19, #836]
	cbnz	w8, .LBB16_265
	ldr	x0, [x19, #384]
	mov	w1, wzr
	ldrsw	x2, [x19, #260]
	bl	memset
.LBB16_265:
	mov	w21, #5
	str	w22, [x19, #836]
	b	.LBB16_268
.LBB16_266:
	mov	w8, #9
	ldur	x9, [x29, #-56]
	str	w8, [x9, #40]
.LBB16_267:
	str	wzr, [x19, #836]
	str	wzr, [x19, #824]
.LBB16_268:
	ldur	x8, [x29, #-56]
	cmp	w21, #2
	cset	w2, eq
	mov	x0, x19
	str	w21, [sp, #56]
	str	x8, [x19, #448]
	mov	x21, x8
	ldr	w1, [x8, #40]
	bl	ebc_lut_update
	ldr	w8, [x21, #40]
	cmp	w8, #12
	b.eq	.LBB16_271
	cmp	w8, #13
	b.eq	.LBB16_273
	cmp	w8, #14
	b.ne	.LBB16_276
.LBB16_271:
	ldr	w8, [x19, #828]
	cbz	w8, .LBB16_277
	ldrb	w8, [x19, #336]
	lsr	w9, w8, #1
	mov	w8, #1
	strb	w9, [x19, #288]
	mov	w9, #2
	b	.LBB16_275
.LBB16_273:
	ldr	w8, [x19, #828]
	cbz	w8, .LBB16_277
	ldrb	w8, [x19, #336]
	mov	w10, #2
	lsr	w9, w8, #1
	mov	w8, #1
	strb	w10, [x19, #288]
.LBB16_275:
	strb	w9, [x19, #920]
	cbnz	w8, .LBB16_278
	b	.LBB16_287
.LBB16_276:
	ldr	w8, [x19, #828]
.LBB16_277:
	ldr	w9, [x19, #336]
	strb	w9, [x19, #288]
	cbz	w8, .LBB16_287
.LBB16_278:
	ldur	x8, [x29, #-56]
	ldr	w8, [x8, #40]
	sub	w8, w8, #12
	cmp	w8, #2
	b.hi	.LBB16_287
	ldr	w8, [x19, #824]
	cbnz	w8, .LBB16_287
	ldr	x0, [x19, #368]
	mov	w1, wzr
	ldrsw	x2, [x19, #260]
	bl	memset
	ldr	w8, [x19, #260]
	cmp	w8, #1
	b.lt	.LBB16_287
	ldr	x10, [x19, #440]
	ldr	x9, [x19, #368]
	ldrb	w11, [x19, #920]
	ldr	x10, [x10, #16]
	b	.LBB16_283
.LBB16_282:
	add	x9, x9, #1
	subs	x8, x8, #1
	add	x10, x10, #1
	b.eq	.LBB16_287
.LBB16_283:
	ldrb	w12, [x10]
	cmp	w12, #240
	b.ne	.LBB16_282
	strb	w11, [x9]
	b	.LBB16_282
.LBB16_285:
	ldr	x8, [sp, #64]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_345
.LBB16_286:
	ldr	x8, [x19, #440]
	ldr	x1, [x19, #376]
	ldrsw	x2, [x19, #260]
	ldr	x0, [x8, #16]
	bl	memcpy
.LBB16_287:
	ldr	x8, [sp, #64]
	ldr	w8, [x8]
	cmp	w8, #1
	ldr	w8, [sp, #56]
	b.ge	.LBB16_342
.LBB16_288:
	mov	x0, x19
	str	w22, [x19, #284]
	str	w8, [x19, #472]
	bl	ebc_frame_start
	adrp	x8, jiffies
	ldr	x8, [x8, :lo12:jiffies]
	ldr	x0, [sp, #48]
	add	x1, x8, #750
	bl	mod_timer
	ldr	w8, [x19, #828]
	cbz	w8, .LBB16_318
	ldur	x8, [x29, #-56]
	ldr	w8, [x8, #40]
	sub	w8, w8, #12
	cmp	w8, #2
	b.hi	.LBB16_318
	ldr	w8, [x19, #836]
	cbz	w8, .LBB16_318
	ldr	x8, [sp, #64]
	ldr	w8, [x8]
	cmp	w8, #1
	b.ge	.LBB16_347
.LBB16_292:
	ldr	w8, [x19, #832]
	ldr	w9, [x19, #312]
	cmp	w8, #0
	cset	w10, ne
	cset	w11, eq
	csetm	w12, ne
	cmp	w9, #1
	b.lt	.LBB16_316
	ldr	x0, [x19, #448]
	mov	w13, wzr
	ldrsb	w17, [x19, #920]
	mov	w14, wzr
	ldp	x2, x1, [x19, #376]
	mov	w16, wzr
	ldr	w15, [x19, #316]
	neg	w3, w17
	ldr	x0, [x0, #16]
	ldr	x4, [x19, #368]
	b	.LBB16_295
.LBB16_294:
	add	w14, w14, #1
	add	w13, w13, w15
	cmp	w14, w9
	b.eq	.LBB16_317
.LBB16_295:
	cmp	w15, #1
	b.lt	.LBB16_294
	mov	w6, w13
	mov	x5, x15
	b	.LBB16_298
.LBB16_297:
	subs	x5, x5, #1
	add	w6, w6, #1
	b.eq	.LBB16_294
.LBB16_298:
	sxtw	x6, w6
	ldrb	w30, [x0, x6]
	ldrb	w24, [x2, x6]
	cmp	w24, w30
	b.eq	.LBB16_297
	cbz	w8, .LBB16_301
	ldrb	w7, [x4, x6]
	b	.LBB16_302
.LBB16_301:
	mov	w7, wzr
.LBB16_302:
	ldrsb	w27, [x1, x6]
	and	w21, w24, #0xf
	cmp	w30, #240
	b.ne	.LBB16_307
	add	w7, w7, w10
	cmp	w27, #0
	sxtb	w7, w7
	csinc	w27, w22, w27, lt
	cmp	w7, w17
	sxtb	w27, w27
	cset	w30, lt
	orr	w30, w11, w30
	cmp	w30, #1
	b.ne	.LBB16_306
	cbnz	w8, .LBB16_311
	cmp	w27, w17
	b.lt	.LBB16_311
.LBB16_306:
	mov	w30, #240
	b	.LBB16_314
.LBB16_307:
	add	w7, w7, w12
	sub	w25, w27, #1
	cmp	w27, #0
	sxtb	w7, w7
	csinv	w27, w25, wzr, le
	cbz	w8, .LBB16_309
	cmp	w7, #1
	b.lt	.LBB16_314
.LBB16_309:
	cbnz	w8, .LBB16_311
	sxtb	w25, w27
	cmp	w25, w3
	b.le	.LBB16_314
.LBB16_311:
	cbz	w21, .LBB16_313
	mov	w16, #1
	strb	w27, [x1, x6]
	cbnz	w8, .LBB16_315
	b	.LBB16_297
.LBB16_313:
	orr	w30, w24, #0x1
	mov	w16, #1
.LBB16_314:
	strb	w30, [x2, x6]
	strb	w27, [x1, x6]
	cbz	w8, .LBB16_297
.LBB16_315:
	strb	w7, [x4, x6]
	b	.LBB16_297
.LBB16_316:
	mov	w16, wzr
.LBB16_317:
	str	w16, [x19, #824]
.LBB16_318:
	ldur	x8, [x29, #-48]
	ldr	w9, [x8]
	ldr	x8, [sp, #64]
	ldr	w8, [x8]
	cbz	w9, .LBB16_325
	cmp	w8, #1
	b.ge	.LBB16_343
.LBB16_320:
	sub	x0, x29, #40
	mov	w1, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
.LBB16_321:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_324
	cbnz	x0, .LBB16_326
	bl	schedule
	b	.LBB16_321
.LBB16_324:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
	b	.LBB16_326
.LBB16_325:
	tbz	w8, #31, .LBB16_344
.LBB16_326:
	ldr	w8, [x19, #304]
	cbnz	w8, .LBB16_348
	ldr	w8, [x19, #828]
	cbz	w8, .LBB16_470
	ldur	x8, [x29, #-56]
	ldr	w8, [x8, #40]
	sub	w8, w8, #12
	cmp	w8, #2
	b.hi	.LBB16_470
	ldr	w8, [x19, #824]
	cbz	w8, .LBB16_355
	bl	ebc_get_dsp_list_enum_num
	cbz	w0, .LBB16_334
	bl	ebc_dsp_buf_next_mode
	ldur	x8, [x29, #-56]
	ldr	w8, [x8, #40]
	cmp	w0, w8
	b.eq	.LBB16_470
	ldr	x8, [sp, #64]
	ldr	w8, [x8]
	cmp	w8, #0
	b.le	.LBB16_286
	adrp	x1, .L.str.98
	add	x1, x1, :lo12:.L.str.98
	b	.LBB16_346
.LBB16_334:
	sub	x0, x29, #40
	mov	w1, wzr
	str	wzr, [x19, #320]
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w8, [x19, #320]
	cbz	w8, .LBB16_338
.LBB16_335:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_336:
	bl	ebc_get_dsp_list_enum_num
	cbz	w0, .LBB16_285
	bl	ebc_dsp_buf_next_mode
	ldur	x8, [x29, #-56]
	ldr	w8, [x8, #40]
	cmp	w0, w8
	b.ne	.LBB16_285
	b	.LBB16_470
.LBB16_338:
	mov	w8, #3
.LBB16_339:
	cbnz	x0, .LBB16_336
	mov	x0, x8
	bl	schedule_timeout
	mov	x27, x0
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w9, [x19, #320]
	cmp	x27, #0
	ccmp	w9, #0, #4, eq
	csinc	x8, x27, xzr, eq
	cbnz	w9, .LBB16_335
	cbnz	x8, .LBB16_339
	b	.LBB16_335
.LBB16_342:
	ldr	x8, [x19, #448]
	adrp	x1, .L.str.92
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.92
	ldrb	w3, [x19, #288]
	ldr	w2, [x8, #40]
	ldrb	w4, [x19, #336]
	bl	_dev_info
	ldr	w8, [sp, #56]
	b	.LBB16_288
.LBB16_343:
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.94
	add	x1, x1, :lo12:.L.str.94
	ldr	x0, [x8]
	bl	_dev_info
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbnz	w8, .LBB16_320
	b	.LBB16_326
.LBB16_344:
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.95
	add	x1, x1, :lo12:.L.str.95
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_326
.LBB16_345:
	adrp	x1, .L.str.97
	add	x1, x1, :lo12:.L.str.97
.LBB16_346:
	ldr	x8, [sp, #40]
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_286
.LBB16_347:
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.93
	add	x1, x1, :lo12:.L.str.93
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_292
.LBB16_348:
	ldr	x8, [sp, #64]
	ldr	w8, [x8]
	cmp	w8, #1
	b.lt	.LBB16_350
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.96
	add	x1, x1, :lo12:.L.str.96
	ldr	x0, [x8]
	bl	_dev_info
.LBB16_350:
	ldr	x8, [x19, #440]
	ldr	x0, [x19, #376]
	ldrsw	x2, [x19, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
	ldr	x8, [x19, #448]
	ldr	x0, [x19, #368]
	ldrsw	x2, [x19, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
	ldr	x0, [x19, #392]
	mov	w1, wzr
	ldrsw	x2, [x19, #260]
	bl	memset
	ldr	x0, [x19, #400]
	mov	w1, wzr
	ldrsw	x2, [x19, #260]
	bl	memset
	ldr	w8, [x19, #260]
	cmp	w8, #1
	b.lt	.LBB16_470
	ldrb	w11, [x19, #288]
	ldrb	w12, [x19, #304]
	ldr	x9, [x19, #392]
	sub	w11, w11, w12
	ldp	x12, x10, [x19, #368]
	b	.LBB16_353
.LBB16_352:
	add	x9, x9, #1
	add	x10, x10, #1
	add	x12, x12, #1
	subs	w8, w8, #1
	b.eq	.LBB16_470
.LBB16_353:
	ldrb	w13, [x10]
	ldrb	w14, [x12]
	cmp	w13, w14
	b.eq	.LBB16_352
	strb	w11, [x9]
	b	.LBB16_352
.LBB16_355:
	ldr	w8, [x19, #836]
	cbz	w8, .LBB16_470
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .LBB16_470
	sub	x0, x29, #40
	mov	w1, wzr
	str	wzr, [x19, #320]
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w8, [x19, #320]
	cbnz	w8, .LBB16_362
	mov	w8, #3
.LBB16_359:
	cbnz	x0, .LBB16_363
	mov	x0, x8
	bl	schedule_timeout
	mov	x24, x0
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldr	w9, [x19, #320]
	cmp	x24, #0
	ccmp	w9, #0, #4, eq
	csinc	x8, x24, xzr, eq
	cbnz	w9, .LBB16_362
	cbnz	x8, .LBB16_359
.LBB16_362:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_363:
	bl	ebc_get_dsp_list_enum_num
	cbnz	w0, .LBB16_470
	ldr	x8, [sp, #64]
	ldr	w8, [x8]
	cmp	w8, #1
	b.lt	.LBB16_366
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.99
	add	x1, x1, :lo12:.L.str.99
	ldr	x0, [x8]
	bl	_dev_info
.LBB16_366:
	ldr	w8, [x19, #312]
	ldr	x1, [x19, #376]
	sub	w8, w8, #1
	cmp	w8, #1
	b.le	.LBB16_455
	ldr	w10, [x19, #316]
	mov	x9, xzr
	ldr	x11, [x19, #384]
	mov	w15, #1
	sub	w12, w10, #1
	lsl	w14, w10, #1
	sub	x13, x12, #1
	orr	x14, x14, #0x1
	mov	x16, x10
	b	.LBB16_369
.LBB16_368:
	add	w15, w15, #1
	add	x16, x16, x10
	add	x14, x14, x10
	add	x9, x9, x10
	cmp	w15, w8
	b.eq	.LBB16_454
.LBB16_369:
	cmp	w12, #2
	b.lt	.LBB16_368
	mov	x17, xzr
.LBB16_371:
	add	w0, w16, w17
	add	w0, w0, #1
	sxtw	x0, w0
	ldrb	w2, [x11, x0]
	cbz	w2, .LBB16_373
	mov	w2, #248
	b	.LBB16_378
.LBB16_373:
	add	w2, w9, w17
	add	w2, w2, #1
	ldrb	w2, [x11, w2, sxtw]
	cbnz	w2, .LBB16_377
	add	w2, w14, w17
	ldrb	w2, [x11, w2, sxtw]
	cbnz	w2, .LBB16_377
	add	w2, w16, w17
	ldrb	w2, [x11, w2, sxtw]
	cbnz	w2, .LBB16_377
	add	w2, w16, w17
	add	w2, w2, #2
	ldrb	w2, [x11, w2, sxtw]
	cbz	w2, .LBB16_379
.LBB16_377:
	mov	w2, #232
.LBB16_378:
	strb	w2, [x1, x0]
.LBB16_379:
	add	x17, x17, #1
	cmp	x13, x17
	b.ne	.LBB16_371
	b	.LBB16_368
.LBB16_380:
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbnz	w8, .LBB16_432
.LBB16_381:
	ldr	x8, [x19, #440]
	ldur	x9, [x29, #-56]
	ldr	w8, [x8, #40]
	ldr	w9, [x9, #40]
	cmp	w9, w8
	b.eq	.LBB16_383
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbnz	w8, .LBB16_438
.LBB16_383:
	ldr	w8, [x19, #316]
	mov	w3, #255
	ldr	w9, [x19, #312]
	add	w10, w8, #7
	cmp	w8, #0
	csel	w13, w10, w8, lt
	cmp	w9, #1
	b.lt	.LBB16_394
	ldur	x12, [x29, #-56]
	mov	w10, wzr
	ldr	x11, [x19, #392]
	asr	w13, w13, #3
	ldr	x14, [x19, #368]
	ldr	x12, [x12, #16]
	b	.LBB16_386
.LBB16_385:
	add	w10, w10, #1
	cmp	w10, w9
	b.eq	.LBB16_394
.LBB16_386:
	cmp	w8, #8
	b.lt	.LBB16_385
	mov	w15, w13
	b	.LBB16_389
.LBB16_388:
	add	x14, x14, #8
	subs	w15, w15, #1
	b.eq	.LBB16_385
.LBB16_389:
	ldr	x16, [x12], #8
	ldr	x17, [x14]
	ldr	x0, [x11], #8
	cmp	x16, x17
	b.eq	.LBB16_388
	tst	x0, #0xff
	csel	x1, x3, xzr, eq
	tst	x0, #0xff00
	orr	x2, x1, #0xff00
	csel	x1, x2, x1, eq
	tst	x0, #0xff0000
	orr	x2, x1, #0xff0000
	csel	x1, x2, x1, eq
	tst	x0, #0xff000000
	orr	x2, x1, #0xff000000
	csel	x1, x2, x1, eq
	tst	x0, #0xff00000000
	orr	x2, x1, #0xff00000000
	csel	x1, x2, x1, eq
	tst	x0, #0xff0000000000
	orr	x2, x1, #0xff0000000000
	csel	x1, x2, x1, eq
	tst	x0, #0xff000000000000
	orr	x2, x1, #0xff000000000000
	lsr	x0, x0, #56
	csel	x1, x2, x1, eq
	cmp	x0, #0
	orr	x2, x1, #0xff00000000000000
	csel	x0, x2, x1, eq
	bic	x17, x17, x0
	and	x16, x0, x16
	orr	x16, x17, x16
	str	x16, [x14]
	b	.LBB16_388
.LBB16_391:
	ldr	x8, [sp, #64]
	ldr	w8, [x8]
	cmp	w8, #1
	b.lt	.LBB16_393
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.78
	add	x1, x1, :lo12:.L.str.78
	ldr	x0, [x8]
	bl	_dev_info
.LBB16_393:
	str	wzr, [x19, #304]
.LBB16_394:
	ldr	w8, [x19, #284]
	mov	w9, #3
	str	w9, [x19, #472]
	cbnz	w8, .LBB16_472
	ldur	x8, [x29, #-56]
	str	w22, [x19, #284]
	mov	x0, x19
	mov	w2, wzr
	ldr	w1, [x8, #40]
	bl	ebc_lut_update
	ldr	w9, [x19, #852]
	ldr	w8, [x19, #336]
	cmp	w9, #1
	strh	w8, [x19, #288]
	b.lt	.LBB16_397
	ldr	x9, [sp, #40]
	adrp	x1, .L.str.87
	and	w2, w8, #0xff
	add	x1, x1, :lo12:.L.str.87
	ldr	x0, [x9]
	bl	_dev_info
.LBB16_397:
	mov	x0, x19
	bl	ebc_frame_start
	b	.LBB16_472
.LBB16_398:
	ldr	x8, [sp, #64]
	ldr	w8, [x8]
	cmp	w8, #1
	b.lt	.LBB16_400
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.80
	add	x1, x1, :lo12:.L.str.80
	ldr	x0, [x8]
	bl	_dev_info
.LBB16_400:
	ldr	w8, [x19, #260]
	ldr	x1, [x19, #384]
	cmp	w8, #1
	b.lt	.LBB16_404
	ldr	x9, [x19, #448]
	ldr	x9, [x9, #16]
.LBB16_402:
	ldrb	w10, [x9], #1
	ldrb	w11, [x1]
	mvn	w12, w10
	and	w12, w12, #0xf0
	cmp	w11, #0
	csel	w10, w10, w12, eq
	subs	x8, x8, #1
	strb	w10, [x1], #1
	b.ne	.LBB16_402
	ldr	x1, [x19, #384]
	ldr	w8, [x19, #260]
.LBB16_404:
	ldr	x0, [x19, #376]
	sxtw	x2, w8
	bl	memcpy
	ldr	x8, [x19, #448]
	ldr	x0, [x19, #368]
	ldrsw	x2, [x19, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
	str	wzr, [x19, #836]
	str	wzr, [x19, #824]
.LBB16_405:
	mov	w8, #4
	ldur	x21, [x29, #-56]
	ldp	x0, x1, [x19, #368]
	ldp	x4, x5, [x19, #392]
	str	w8, [x19, #472]
	str	x21, [x19, #448]
	ldr	x2, [x19, #248]
	ldr	x3, [x21, #16]
	ldr	x6, [sp, #32]
	bl	refresh_new_image
	ldr	w8, [x19, #284]
	cbnz	w8, .LBB16_408
	ldr	w8, [x19, #304]
	str	w22, [x19, #284]
	cbnz	w8, .LBB16_411
	ldur	x8, [x29, #-56]
	mov	x0, x19
	mov	w2, wzr
	ldr	w1, [x8, #40]
	bl	ebc_lut_update
	b	.LBB16_412
.LBB16_408:
	ldr	x8, [x19, #440]
	ldr	w1, [x21, #40]
	ldr	w8, [x8, #40]
	cmp	w1, w8
	b.ne	.LBB16_418
	ldr	x8, [sp, #64]
	ldr	w8, [x8]
	cmp	w8, #1
	b.lt	.LBB16_426
	ldr	x8, [x19, #448]
	adrp	x1, .L.str.84
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.84
	ldrb	w3, [x19, #288]
	ldr	w2, [x8, #40]
	b	.LBB16_420
.LBB16_411:
	str	wzr, [x19, #304]
.LBB16_412:
	ldr	w9, [x19, #852]
	ldr	w8, [x19, #336]
	cmp	w9, #1
	strh	w8, [x19, #288]
	b.lt	.LBB16_414
	ldr	x9, [x19, #448]
	adrp	x1, .L.str.82
	ldr	x0, [x19, #328]
	and	w3, w8, #0xff
	add	x1, x1, :lo12:.L.str.82
	ldr	w2, [x9, #40]
	bl	_dev_info
.LBB16_414:
	ldp	x4, x0, [x19, #400]
	mov	w6, #1
	ldp	x1, x2, [x19, #368]
	ldr	w8, [x19, #204]
	ldr	x3, [x19, #392]
	ldr	x5, [sp, #32]
	cbnz	w8, .LBB16_421
	bl	get_overlay_image
	ldr	w8, [x19, #292]
	cbz	w8, .LBB16_422
.LBB16_416:
	ldp	x1, x2, [x19, #368]
	ldp	x3, x4, [x19, #392]
	ldr	w8, [x19, #204]
	ldr	x0, [x19, #416]
	cbnz	w8, .LBB16_424
	ldr	x21, [sp, #32]
	mov	w6, #1
	mov	x5, x21
	bl	get_overlay_image
	b	.LBB16_425
.LBB16_418:
	mov	x0, x19
	mov	w2, wzr
	bl	ebc_lut_update
	ldr	w9, [x19, #852]
	ldr	w8, [x19, #336]
	cmp	w9, #1
	strb	w8, [x19, #288]
	b.lt	.LBB16_426
	ldr	x9, [x19, #448]
	adrp	x1, .L.str.83
	ldr	x0, [x19, #328]
	and	w3, w8, #0xff
	add	x1, x1, :lo12:.L.str.83
	ldr	w2, [x9, #40]
.LBB16_420:
	bl	_dev_info
	b	.LBB16_426
.LBB16_421:
	bl	get_overlay_image2
	ldr	w8, [x19, #292]
	cbnz	w8, .LBB16_416
.LBB16_422:
	ldr	w8, [x19, #852]
	str	wzr, [x19, #284]
	str	w22, [x19, #812]
	cmp	w8, #1
	b.lt	.LBB16_426
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.113
	adrp	x2, .L__func__.ebc_overlay_bg_frame_start
	add	x1, x1, :lo12:.L.str.113
	add	x2, x2, :lo12:.L__func__.ebc_overlay_bg_frame_start
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_426
.LBB16_424:
	ldr	x21, [sp, #32]
	mov	w6, #1
	mov	x5, x21
	bl	get_overlay_image2
.LBB16_425:
	ldr	x0, [sp, #8]
	mov	x1, x21
	str	wzr, [x19, #112]
	bl	flip
.LBB16_426:
	ldr	x8, [x19, #448]
	ldr	w8, [x8, #40]
	cmp	w8, #23
	b.hi	.LBB16_428
	mov	w9, #1
	lsl	w8, w22, w8
	movk	w9, #192, lsl #16
	tst	w8, w9
	b.ne	.LBB16_472
.LBB16_428:
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_472
	ldr	w8, [x19, #852]
	str	wzr, [x19, #812]
	cmp	w8, #1
	b.lt	.LBB16_431
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.79
	add	x1, x1, :lo12:.L.str.79
	ldr	x0, [x8]
	bl	_dev_info
.LBB16_431:
	adrp	x8, jiffies
	ldr	x21, [x8, :lo12:jiffies]
	ldrb	w8, [x19, #288]
	lsl	w9, w8, #4
	sub	w0, w9, w8
	bl	__msecs_to_jiffies
	add	x1, x0, x21
	ldr	x0, [sp, #16]
	b	.LBB16_471
.LBB16_432:
	ldr	x8, [sp, #64]
	ldr	w8, [x8]
	cmp	w8, #1
	b.lt	.LBB16_434
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.85
	add	x1, x1, :lo12:.L.str.85
	ldr	x0, [x8]
	bl	_dev_info
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_445
.LBB16_434:
	sub	x0, x29, #40
	mov	w1, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
.LBB16_435:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_444
	cbnz	x0, .LBB16_445
	bl	schedule
	b	.LBB16_435
.LBB16_438:
	ldr	x8, [sp, #64]
	ldr	w8, [x8]
	cmp	w8, #1
	b.lt	.LBB16_440
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.85
	add	x1, x1, :lo12:.L.str.85
	ldr	x0, [x8]
	bl	_dev_info
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_445
.LBB16_440:
	sub	x0, x29, #40
	mov	w1, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
.LBB16_441:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_444
	cbnz	x0, .LBB16_445
	bl	schedule
	b	.LBB16_441
.LBB16_444:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_445:
	ldr	x8, [sp, #64]
	ldr	w8, [x8]
	cmp	w8, #1
	b.lt	.LBB16_121
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.86
	add	x1, x1, :lo12:.L.str.86
	ldr	x0, [x8]
	bl	_dev_info
	b	.LBB16_121
.LBB16_447:
	ldr	x8, [sp, #64]
	ldur	x9, [x29, #-56]
	ldr	w8, [x8]
	cmp	w8, #1
	b.lt	.LBB16_449
	adrp	x1, .L.str.80
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.80
	bl	_dev_info
	ldr	x9, [x19, #448]
.LBB16_449:
	ldr	w8, [x19, #260]
	ldr	x1, [x19, #384]
	cmp	w8, #1
	b.lt	.LBB16_453
	ldr	x9, [x9, #16]
.LBB16_451:
	ldrb	w10, [x9], #1
	ldrb	w11, [x1]
	mvn	w12, w10
	and	w12, w12, #0xf0
	cmp	w11, #0
	csel	w10, w10, w12, eq
	subs	x8, x8, #1
	strb	w10, [x1], #1
	b.ne	.LBB16_451
	ldr	x1, [x19, #384]
	ldr	w8, [x19, #260]
.LBB16_453:
	ldr	x0, [x19, #376]
	sxtw	x2, w8
	bl	memcpy
	ldr	x8, [x19, #448]
	ldr	x0, [x19, #368]
	ldrsw	x2, [x19, #260]
	ldr	x1, [x8, #16]
	bl	memcpy
	str	wzr, [x19, #836]
	str	wzr, [x19, #824]
	b	.LBB16_394
.LBB16_454:
	ldr	x1, [x19, #376]
.LBB16_455:
	ldr	x8, [x19, #440]
	ldrsw	x2, [x19, #260]
	ldr	x0, [x8, #16]
	bl	memcpy
	ldr	w8, [x19, #828]
	mov	w9, #10
	orr	w10, wzr, #0x2
	mov	w22, #1
	madd	w9, w8, w9, w10
	cmp	w8, #7
	ldr	w10, [x19, #852]
	mov	w8, #72
	csel	w8, w8, w9, gt
	mov	w9, #1
	cmp	w10, #1
	str	w9, [x19, #284]
	strb	w8, [x19, #288]
	str	w9, [x19, #472]
	b.lt	.LBB16_457
	ldr	x9, [x19, #448]
	adrp	x1, .L.str.100
	ldr	x0, [x19, #328]
	and	w3, w8, #0xff
	add	x1, x1, :lo12:.L.str.100
	ldr	w2, [x9, #40]
	bl	_dev_info
.LBB16_457:
	mov	x0, x19
	bl	ebc_frame_start
	adrp	x8, jiffies
	ldr	x8, [x8, :lo12:jiffies]
	ldr	x0, [sp, #48]
	add	x1, x8, #750
	bl	mod_timer
	ldr	w8, [x19, #852]
	cmp	w8, #1
	b.lt	.LBB16_459
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.94
	add	x1, x1, :lo12:.L.str.94
	ldr	x0, [x8]
	bl	_dev_info
.LBB16_459:
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_465
	sub	x0, x29, #40
	mov	w1, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
.LBB16_461:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w2, #1
	bl	prepare_to_wait_event
	ldur	x8, [x29, #-48]
	ldr	w8, [x8]
	cbz	w8, .LBB16_464
	cbnz	x0, .LBB16_465
	bl	schedule
	b	.LBB16_461
.LBB16_464:
	adrp	x0, ebc_thread_wq
	sub	x1, x29, #40
	add	x0, x0, :lo12:ebc_thread_wq
	bl	finish_wait
.LBB16_465:
	ldr	w2, [x19, #304]
	cmp	w2, #10
	b.gt	.LBB16_467
	str	wzr, [x19, #836]
	b	.LBB16_469
.LBB16_467:
	ldr	x8, [sp, #64]
	ldr	w8, [x8]
	cmp	w8, #1
	b.lt	.LBB16_469
	ldr	x8, [sp, #40]
	adrp	x1, .L.str.101
	add	x1, x1, :lo12:.L.str.101
	ldr	x0, [x8]
	bl	_dev_info
.LBB16_469:
	str	wzr, [x19, #304]
.LBB16_470:
	adrp	x8, jiffies
	mov	w9, #335544320
	ldr	x8, [x8, :lo12:jiffies]
	ldr	x0, [sp, #48]
	add	x1, x8, x9
.LBB16_471:
	bl	mod_timer
.LBB16_472:
	ldr	w8, [x19, #676]
	cbnz	w8, .LBB16_474
	str	w22, [x19, #676]
	b	.LBB16_475
.LBB16_474:
	ldr	x0, [x19, #440]
	bl	ebc_buf_release
.LBB16_475:
	ldr	x8, [x19, #448]
	str	x8, [x19, #440]
	b	.LBB16_3
.Lfunc_end16:
	.size	ebc_thread, .Lfunc_end16-ebc_thread
	.section	.rodata,"a",@progbits
	.p2align	1
.LJTI16_0:
	.hword	(.LBB16_117-.LBB16_117)>>2
	.hword	(.LBB16_120-.LBB16_117)>>2
	.hword	(.LBB16_381-.LBB16_117)>>2
	.hword	(.LBB16_380-.LBB16_117)>>2
	.hword	(.LBB16_117-.LBB16_117)>>2

	.text
	.p2align	2
	.type	flip,@function
flip:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-96]!
	stp	x22, x21, [sp, #64]
	ldrsw	x22, [x0, #72]
	mov	w8, #24
	stp	x24, x23, [sp, #48]
	ldp	w23, w24, [x0, #132]
	madd	x9, x22, x8, x0
	stp	x26, x25, [sp, #32]
	stp	x20, x19, [sp, #80]
	mov	x20, x1
	mov	x19, x0
	ldr	w8, [x0, #172]
	add	x26, x9, #24
	ldr	w25, [x0, #140]
	str	x27, [sp, #16]
	mov	x29, sp
	cbz	w8, .LBB17_2
	ldp	w9, w10, [x19, #76]
	ldr	w11, [x19, #168]
	mul	w12, w9, w8
	add	w8, w11, w8
	sub	w10, w10, w11
	mul	w13, w11, w9
	ldr	x11, [x26]
	mul	w8, w8, w9
	mul	w10, w10, w9
	lsr	w27, w13, #2
	lsr	w8, w8, #2
	lsr	w21, w12, #2
	lsr	w2, w10, #2
	add	x0, x11, x8
	add	x1, x11, x27
	bl	memmove
	ldr	x8, [x26]
	mov	w1, wzr
	mov	x2, x21
	add	x0, x8, x27
	bl	memset
.LBB17_2:
	ldr	w8, [x20, #720]
	tbnz	w8, #31, .LBB17_7
	ldr	w9, [x20, #80]
	cmp	w8, w9
	b.ge	.LBB17_7
	ldr	w9, [x20, #716]
	tbnz	w9, #31, .LBB17_7
	ldr	w10, [x20, #84]
	cmp	w9, w10
	b.ge	.LBB17_7
	mul	w8, w10, w8
	ldr	x10, [x26]
	lsr	x8, x8, #2
	add	x8, x8, x9, lsr #2
	ubfiz	w9, w9, #1, #2
	ldrb	w8, [x10, x8]
	ldrb	w10, [x20, #724]
	lsr	w8, w8, w9
	mov	w9, #48
	add	w11, w10, #1
	bfxil	w9, w8, #0, #2
	add	x8, x20, x10
	strb	w11, [x20, #724]
	strb	w9, [x8, #725]
.LBB17_7:
	mov	w8, #24
	ldr	x0, [x19]
	ldrsw	x2, [x20, #32]
	mov	w3, #1
	madd	x22, x22, x8, x19
	add	w8, w24, w23
	add	w21, w8, w25
	mov	w20, #1
	ldr	x1, [x22, #32]
	bl	dma_sync_single_for_device
	ldr	x0, [x19, #8]
	mov	w1, wzr
	mov	w2, wzr
	mov	w3, wzr
	mov	w4, wzr
	ldr	x8, [x0, #88]
	blr	x8
	ldr	x0, [x19, #8]
	mov	w2, wzr
	ldr	w1, [x22, #32]
	ldr	x8, [x0, #96]
	blr	x8
	ldr	x0, [x19, #8]
	mov	w1, w21
	mov	w2, wzr
	ldr	x8, [x0, #144]
	blr	x8
	ldr	x0, [x19, #8]
	mov	w1, #1
	ldr	x8, [x0, #128]
	blr	x8
	ldr	w8, [x19, #72]
	ldp	x22, x21, [sp, #64]
	sub	w8, w20, w8
	ldr	x27, [sp, #16]
	ldp	x24, x23, [sp, #48]
	str	w8, [x19, #72]
	ldp	x20, x19, [sp, #80]
	ldp	x26, x25, [sp, #32]
	ldp	x29, x30, [sp], #96
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end17:
	.size	flip, .Lfunc_end17-flip

	.p2align	2
	.type	get_overlay_image2,@function
get_overlay_image2:
	sub	sp, sp, #128
	str	x30, [x18], #8
	adrp	x8, global_ebc
	stp	x26, x25, [sp, #64]
	stp	x29, x30, [sp, #32]
	add	x29, sp, #32
	stp	x24, x23, [sp, #80]
	mov	x23, x2
	ldr	x8, [x8, :lo12:global_ebc]
	stp	x22, x21, [sp, #96]
	stp	x20, x19, [sp, #112]
	mov	x19, x5
	mov	x22, x4
	mov	x21, x3
	ldp	w25, w10, [x8, #116]
	mov	x24, x1
	cmp	w6, #3
	stp	x28, x27, [sp, #48]
	stur	x0, [x29, #-8]
	lsr	w20, w25, #3
	b.eq	.LBB18_3
	add	x8, x19, #60
	cmp	w6, #2
	str	x8, [sp, #8]
	b.ne	.LBB18_4
	cmp	w10, #0
	mov	w27, wzr
	cinc	w8, w10, lt
	asr	w10, w8, #1
	b	.LBB18_5
.LBB18_3:
	cmp	w10, #0
	cinc	w8, w10, lt
	asr	w27, w8, #1
	mul	w8, w27, w20
	mul	w9, w27, w25
	sbfiz	x8, x8, #3, #32
	add	x21, x21, x9
	add	x24, x24, x8
	add	x23, x23, x8
	add	x22, x22, x9
	add	x8, x19, #64
	str	x8, [sp, #8]
	b	.LBB18_5
.LBB18_4:
	mov	w27, wzr
.LBB18_5:
	lsr	w26, w25, #2
	subs	w8, w10, w27
	ldur	x9, [x29, #-8]
	mov	w1, wzr
	mul	w28, w27, w26
	stur	w10, [x29, #-12]
	mul	w8, w8, w26
	add	x0, x9, w28, sxtw
	sxtw	x2, w8
	bl	memset
	ldur	w11, [x29, #-12]
	mov	w2, wzr
	cmp	w11, w27
	b.le	.LBB18_59
	cmp	w20, #1
	mov	w2, wzr
	csinc	w9, w20, wzr, hi
	lsl	w8, w26, #1
	lsl	x9, x9, #3
	mov	w10, #56
	b	.LBB18_10
.LBB18_7:
	add	x12, x24, x11
	add	x13, x23, x11
	add	x24, x12, x17
	add	x12, x22, x11
	add	x11, x21, x11
	add	x23, x13, x17
	add	x22, x12, x17
	add	x21, x11, x17
.LBB18_8:
	ldur	w11, [x29, #-12]
.LBB18_9:
	add	w27, w27, #2
	add	w28, w28, w8
	cmp	w27, w11
	b.ge	.LBB18_59
.LBB18_10:
	cmp	w25, #8
	b.lo	.LBB18_9
	ldur	x12, [x29, #-8]
	mov	x11, xzr
	add	x12, x12, w28, sxtw
	mov	x13, x12
	b	.LBB18_15
.LBB18_12:
	str	x14, [x23, x11]
.LBB18_13:
	mov	w2, #1
	str	w16, [x13]
.LBB18_14:
	add	x13, x13, #4
	add	x11, x11, #8
	cmp	x9, x11
	b.eq	.LBB18_34
.LBB18_15:
	ldr	x15, [x24, x11]
	ldr	x14, [x23, x11]
	eor	x17, x14, x15
	cbz	x17, .LBB18_14
	tst	x17, #0xff
	b.eq	.LBB18_18
	ldrb	w16, [x22, x11]
	lsl	w2, w14, #2
	ldrb	w1, [x21, x11]
	and	x2, x2, #0x3e0
	bfxil	x2, x15, #3, #5
	mov	x3, x14
	bfxil	x3, x15, #0, #8
	add	x0, x19, x16, lsl #3
	cmp	w16, #0
	cinc	x16, x10, ne
	add	w4, w1, #1
	ldr	x0, [x0, #120]
	ldrb	w16, [x19, x16]
	add	x0, x0, x1, lsl #10
	cmp	w16, w4, uxtb
	ldrb	w16, [x0, x2]
	cset	w0, eq
	csel	x14, x3, x14, eq
	csinc	w1, wzr, w1, eq
	strb	w1, [x21, x11]
	b	.LBB18_19
.LBB18_18:
	mov	w16, wzr
	mov	w0, wzr
.LBB18_19:
	add	x1, x21, x11
	tst	x17, #0xff00
	b.eq	.LBB18_21
	add	x2, x22, x11
	ldrb	w4, [x1, #1]
	lsr	x5, x14, #6
	lsr	x6, x15, #8
	and	x5, x5, #0x3e0
	ldrb	w2, [x2, #1]
	bfxil	x5, x15, #11, #5
	add	x3, x19, x2, lsl #3
	cmp	w2, #0
	cinc	x2, x10, ne
	ldr	x3, [x3, #120]
	ldrb	w2, [x19, x2]
	add	x3, x3, x4, lsl #10
	ldrb	w3, [x3, x5]
	add	w5, w4, #1
	cmp	w2, w5, uxtb
	mov	x2, x14
	bfi	x2, x6, #8, #8
	cset	w5, eq
	csinc	w4, wzr, w4, eq
	orr	w0, w5, w0
	orr	w16, w16, w3, lsl #4
	csel	x14, x2, x14, eq
	strb	w4, [x1, #1]
.LBB18_21:
	tst	x17, #0xff0000
	b.eq	.LBB18_23
	add	x2, x22, x11
	ldrb	w4, [x1, #2]
	lsr	x5, x14, #14
	lsr	x6, x15, #16
	and	x5, x5, #0x3e0
	ldrb	w2, [x2, #2]
	bfxil	x5, x15, #19, #5
	add	x3, x19, x2, lsl #3
	cmp	w2, #0
	cinc	x2, x10, ne
	ldr	x3, [x3, #120]
	ldrb	w2, [x19, x2]
	add	x3, x3, x4, lsl #10
	ldrb	w3, [x3, x5]
	add	w5, w4, #1
	cmp	w2, w5, uxtb
	mov	x2, x14
	bfi	x2, x6, #16, #8
	cset	w5, eq
	csinc	w4, wzr, w4, eq
	orr	w0, w5, w0
	orr	w16, w16, w3, lsl #8
	csel	x14, x2, x14, eq
	strb	w4, [x1, #2]
.LBB18_23:
	add	x1, x21, x11
	tst	x17, #0xff000000
	b.eq	.LBB18_25
	add	x2, x22, x11
	ldrb	w4, [x1, #3]
	lsr	x5, x14, #22
	lsr	x6, x15, #24
	and	x5, x5, #0x3e0
	ldrb	w2, [x2, #3]
	bfxil	x5, x15, #27, #5
	add	x3, x19, x2, lsl #3
	cmp	w2, #0
	cinc	x2, x10, ne
	ldr	x3, [x3, #120]
	ldrb	w2, [x19, x2]
	add	x3, x3, x4, lsl #10
	ldrb	w3, [x3, x5]
	add	w5, w4, #1
	cmp	w2, w5, uxtb
	mov	x2, x14
	bfi	x2, x6, #24, #8
	cset	w5, eq
	csinc	w4, wzr, w4, eq
	orr	w0, w5, w0
	orr	w16, w16, w3, lsl #12
	csel	x14, x2, x14, eq
	strb	w4, [x1, #3]
.LBB18_25:
	tst	x17, #0xff00000000
	b.eq	.LBB18_27
	add	x2, x22, x11
	ldrb	w4, [x1, #4]
	lsr	x5, x14, #30
	lsr	x6, x15, #32
	and	x5, x5, #0x3e0
	ldrb	w2, [x2, #4]
	bfxil	x5, x15, #35, #5
	add	x3, x19, x2, lsl #3
	cmp	w2, #0
	cinc	x2, x10, ne
	ldr	x3, [x3, #120]
	ldrb	w2, [x19, x2]
	add	x3, x3, x4, lsl #10
	ldrb	w3, [x3, x5]
	add	w5, w4, #1
	cmp	w2, w5, uxtb
	mov	x2, x14
	bfi	x2, x6, #32, #8
	cset	w5, eq
	csinc	w4, wzr, w4, eq
	orr	w0, w5, w0
	orr	w16, w16, w3, lsl #16
	csel	x14, x2, x14, eq
	strb	w4, [x1, #4]
.LBB18_27:
	add	x1, x21, x11
	tst	x17, #0xff0000000000
	b.eq	.LBB18_29
	add	x2, x22, x11
	ldrb	w4, [x1, #5]
	lsr	x5, x14, #38
	lsr	x6, x15, #40
	and	x5, x5, #0x3e0
	ldrb	w2, [x2, #5]
	bfxil	x5, x15, #43, #5
	add	x3, x19, x2, lsl #3
	cmp	w2, #0
	cinc	x2, x10, ne
	ldr	x3, [x3, #120]
	ldrb	w2, [x19, x2]
	add	x3, x3, x4, lsl #10
	ldrb	w3, [x3, x5]
	add	w5, w4, #1
	cmp	w2, w5, uxtb
	mov	x2, x14
	bfi	x2, x6, #40, #8
	cset	w5, eq
	csinc	w4, wzr, w4, eq
	orr	w0, w5, w0
	orr	w16, w16, w3, lsl #20
	csel	x14, x2, x14, eq
	strb	w4, [x1, #5]
.LBB18_29:
	tst	x17, #0xff000000000000
	b.eq	.LBB18_31
	add	x2, x22, x11
	ldrb	w4, [x1, #6]
	lsr	x5, x14, #46
	lsr	x6, x15, #48
	and	x5, x5, #0x3e0
	ldrb	w2, [x2, #6]
	bfxil	x5, x15, #51, #5
	add	x3, x19, x2, lsl #3
	cmp	w2, #0
	cinc	x2, x10, ne
	ldr	x3, [x3, #120]
	ldrb	w2, [x19, x2]
	add	x3, x3, x4, lsl #10
	ldrb	w3, [x3, x5]
	add	w5, w4, #1
	cmp	w2, w5, uxtb
	mov	x2, x14
	bfi	x2, x6, #48, #8
	cset	w5, eq
	csinc	w4, wzr, w4, eq
	orr	w0, w5, w0
	orr	w16, w16, w3, lsl #24
	csel	x14, x2, x14, eq
	strb	w4, [x1, #6]
.LBB18_31:
	lsr	x17, x17, #56
	cbnz	x17, .LBB18_33
	cbnz	w0, .LBB18_12
	b	.LBB18_13
.LBB18_33:
	add	x17, x22, x11
	add	x1, x21, x11
	lsr	x4, x14, #54
	and	x4, x4, #0x3e0
	ldrb	w17, [x17, #7]
	bfxil	x4, x15, #59, #5
	bfxil	x15, x14, #0, #56
	add	x2, x19, x17, lsl #3
	cmp	w17, #0
	ldrb	w17, [x1, #7]
	cinc	x3, x10, ne
	ldr	x2, [x2, #120]
	ldrb	w3, [x19, x3]
	add	x2, x2, x17, lsl #10
	ldrb	w2, [x2, x4]
	add	w4, w17, #1
	cmp	w3, w4, uxtb
	cset	w3, eq
	csinc	w17, wzr, w17, eq
	orr	w0, w3, w0
	csel	x14, x15, x14, eq
	orr	w16, w16, w2, lsl #28
	strb	w17, [x1, #7]
	tbnz	w0, #0, .LBB18_12
	b	.LBB18_13
.LBB18_34:
	add	x13, x24, x11
	add	x14, x23, x11
	add	x15, x22, x11
	add	x16, x21, x11
	cmp	w25, #8
	b.hs	.LBB18_36
	mov	x22, x15
	mov	x21, x16
	mov	x23, x14
	mov	x24, x13
	b	.LBB18_8
.LBB18_36:
	mov	x17, xzr
	b	.LBB18_40
.LBB18_37:
	str	x0, [x14, x17]
.LBB18_38:
	ldr	w0, [x12]
	orr	w0, w0, w2
	mov	w2, #1
	str	w0, [x12]
.LBB18_39:
	add	x12, x12, #4
	add	x17, x17, #8
	cmp	x9, x17
	b.eq	.LBB18_7
.LBB18_40:
	ldr	x1, [x13, x17]
	ldr	x0, [x14, x17]
	eor	x3, x0, x1
	cbz	x3, .LBB18_39
	tst	x3, #0xff
	b.eq	.LBB18_43
	ldrb	w2, [x15, x17]
	lsl	w6, w0, #2
	ldrb	w5, [x16, x17]
	mov	x7, x0
	bfxil	x7, x1, #0, #8
	add	x4, x19, x2, lsl #3
	cmp	w2, #0
	ldr	x2, [x4, #120]
	and	x4, x6, #0x3e0
	cinc	x6, x10, ne
	bfxil	x4, x1, #3, #5
	add	x2, x2, x5, lsl #10
	ldrb	w6, [x19, x6]
	ldrb	w2, [x2, x4]
	add	w4, w5, #1
	cmp	w6, w4, uxtb
	cset	w4, eq
	lsl	w2, w2, #2
	csel	x0, x7, x0, eq
	csinc	w5, wzr, w5, eq
	strb	w5, [x16, x17]
	b	.LBB18_44
.LBB18_43:
	mov	w4, wzr
	mov	w2, wzr
.LBB18_44:
	add	x5, x16, x17
	tst	x3, #0xff00
	b.eq	.LBB18_46
	add	x6, x15, x17
	ldrb	w20, [x5, #1]
	lsr	x26, x0, #6
	lsr	x30, x1, #8
	and	x26, x26, #0x3e0
	ldrb	w6, [x6, #1]
	bfxil	x26, x1, #11, #5
	add	x7, x19, x6, lsl #3
	cmp	w6, #0
	cinc	x6, x10, ne
	ldr	x7, [x7, #120]
	ldrb	w6, [x19, x6]
	add	x7, x7, x20, lsl #10
	ldrb	w7, [x7, x26]
	add	w26, w20, #1
	cmp	w6, w26, uxtb
	mov	x6, x0
	bfi	x6, x30, #8, #8
	cset	w26, eq
	csinc	w20, wzr, w20, eq
	csel	x0, x6, x0, eq
	orr	w2, w2, w7, lsl #6
	orr	w4, w26, w4
	strb	w20, [x5, #1]
.LBB18_46:
	tst	x3, #0xff0000
	b.eq	.LBB18_48
	add	x6, x15, x17
	ldrb	w20, [x5, #2]
	lsr	x26, x0, #14
	lsr	x30, x1, #16
	and	x26, x26, #0x3e0
	ldrb	w6, [x6, #2]
	bfxil	x26, x1, #19, #5
	add	x7, x19, x6, lsl #3
	cmp	w6, #0
	cinc	x6, x10, ne
	ldr	x7, [x7, #120]
	ldrb	w6, [x19, x6]
	add	x7, x7, x20, lsl #10
	ldrb	w7, [x7, x26]
	add	w26, w20, #1
	cmp	w6, w26, uxtb
	mov	x6, x0
	bfi	x6, x30, #16, #8
	cset	w26, eq
	csinc	w20, wzr, w20, eq
	csel	x0, x6, x0, eq
	orr	w2, w2, w7, lsl #10
	orr	w4, w26, w4
	strb	w20, [x5, #2]
.LBB18_48:
	add	x5, x16, x17
	tst	x3, #0xff000000
	b.eq	.LBB18_50
	add	x6, x15, x17
	ldrb	w20, [x5, #3]
	lsr	x26, x0, #22
	lsr	x30, x1, #24
	and	x26, x26, #0x3e0
	ldrb	w6, [x6, #3]
	bfxil	x26, x1, #27, #5
	add	x7, x19, x6, lsl #3
	cmp	w6, #0
	cinc	x6, x10, ne
	ldr	x7, [x7, #120]
	ldrb	w6, [x19, x6]
	add	x7, x7, x20, lsl #10
	ldrb	w7, [x7, x26]
	add	w26, w20, #1
	cmp	w6, w26, uxtb
	mov	x6, x0
	bfi	x6, x30, #24, #8
	cset	w26, eq
	csinc	w20, wzr, w20, eq
	csel	x0, x6, x0, eq
	orr	w2, w2, w7, lsl #14
	orr	w4, w26, w4
	strb	w20, [x5, #3]
.LBB18_50:
	tst	x3, #0xff00000000
	b.eq	.LBB18_52
	add	x6, x15, x17
	ldrb	w20, [x5, #4]
	lsr	x26, x0, #30
	lsr	x30, x1, #32
	and	x26, x26, #0x3e0
	ldrb	w6, [x6, #4]
	bfxil	x26, x1, #35, #5
	add	x7, x19, x6, lsl #3
	cmp	w6, #0
	cinc	x6, x10, ne
	ldr	x7, [x7, #120]
	ldrb	w6, [x19, x6]
	add	x7, x7, x20, lsl #10
	ldrb	w7, [x7, x26]
	add	w26, w20, #1
	cmp	w6, w26, uxtb
	mov	x6, x0
	bfi	x6, x30, #32, #8
	cset	w26, eq
	csinc	w20, wzr, w20, eq
	csel	x0, x6, x0, eq
	orr	w2, w2, w7, lsl #18
	orr	w4, w26, w4
	strb	w20, [x5, #4]
.LBB18_52:
	add	x5, x16, x17
	tst	x3, #0xff0000000000
	b.eq	.LBB18_54
	add	x6, x15, x17
	ldrb	w20, [x5, #5]
	lsr	x26, x0, #38
	lsr	x30, x1, #40
	and	x26, x26, #0x3e0
	ldrb	w6, [x6, #5]
	bfxil	x26, x1, #43, #5
	add	x7, x19, x6, lsl #3
	cmp	w6, #0
	cinc	x6, x10, ne
	ldr	x7, [x7, #120]
	ldrb	w6, [x19, x6]
	add	x7, x7, x20, lsl #10
	ldrb	w7, [x7, x26]
	add	w26, w20, #1
	cmp	w6, w26, uxtb
	mov	x6, x0
	bfi	x6, x30, #40, #8
	cset	w26, eq
	csinc	w20, wzr, w20, eq
	csel	x0, x6, x0, eq
	orr	w2, w2, w7, lsl #22
	orr	w4, w26, w4
	strb	w20, [x5, #5]
.LBB18_54:
	tst	x3, #0xff000000000000
	b.eq	.LBB18_56
	add	x6, x15, x17
	ldrb	w20, [x5, #6]
	lsr	x26, x0, #46
	lsr	x30, x1, #48
	and	x26, x26, #0x3e0
	ldrb	w6, [x6, #6]
	bfxil	x26, x1, #51, #5
	add	x7, x19, x6, lsl #3
	cmp	w6, #0
	cinc	x6, x10, ne
	ldr	x7, [x7, #120]
	ldrb	w6, [x19, x6]
	add	x7, x7, x20, lsl #10
	ldrb	w7, [x7, x26]
	add	w26, w20, #1
	cmp	w6, w26, uxtb
	mov	x6, x0
	bfi	x6, x30, #48, #8
	cset	w26, eq
	csinc	w20, wzr, w20, eq
	csel	x0, x6, x0, eq
	orr	w2, w2, w7, lsl #26
	orr	w4, w26, w4
	strb	w20, [x5, #6]
.LBB18_56:
	lsr	x3, x3, #56
	cbnz	x3, .LBB18_58
	cbnz	w4, .LBB18_37
	b	.LBB18_38
.LBB18_58:
	add	x3, x15, x17
	add	x5, x16, x17
	lsr	x20, x0, #54
	and	x20, x20, #0x3e0
	ldrb	w3, [x3, #7]
	bfxil	x20, x1, #59, #5
	bfxil	x1, x0, #0, #56
	add	x6, x19, x3, lsl #3
	cmp	w3, #0
	ldrb	w3, [x5, #7]
	cinc	x7, x10, ne
	ldr	x6, [x6, #120]
	ldrb	w7, [x19, x7]
	add	x6, x6, x3, lsl #10
	ldrb	w6, [x6, x20]
	add	w20, w3, #1
	cmp	w7, w20, uxtb
	cset	w7, eq
	csinc	w3, wzr, w3, eq
	orr	w4, w7, w4
	csel	x0, x1, x0, eq
	orr	w2, w2, w6, lsl #30
	strb	w3, [x5, #7]
	tbnz	w4, #0, .LBB18_37
	b	.LBB18_38
.LBB18_59:
	ldr	x8, [sp, #8]
	ldp	x20, x19, [sp, #112]
	ldp	x22, x21, [sp, #96]
	str	w2, [x8]
	ldp	x24, x23, [sp, #80]
	ldp	x26, x25, [sp, #64]
	ldp	x28, x27, [sp, #48]
	ldp	x29, x30, [sp, #32]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #128
	ret
.Lfunc_end18:
	.size	get_overlay_image2, .Lfunc_end18-get_overlay_image2

	.p2align	2
	.type	get_overlay_image,@function
get_overlay_image:
	sub	sp, sp, #112
	str	x30, [x18], #8
	adrp	x8, global_ebc
	stp	x28, x27, [sp, #32]
	stp	x24, x23, [sp, #64]
	mov	x23, x1
	stp	x22, x21, [sp, #80]
	mov	x21, x3
	ldr	x27, [x8, :lo12:global_ebc]
	stp	x20, x19, [sp, #96]
	mov	x19, x5
	mov	x20, x4
	mov	x22, x2
	mov	x24, x0
	ldp	w11, w8, [x27, #116]
	cmp	w6, #3
	stp	x29, x30, [sp, #16]
	stp	x26, x25, [sp, #48]
	add	x29, sp, #16
	lsr	w12, w11, #3
	b.eq	.LBB19_3
	add	x9, x19, #60
	cmp	w6, #2
	str	x9, [sp, #8]
	b.ne	.LBB19_4
	cmp	w8, #0
	mov	w26, wzr
	cinc	w9, w8, lt
	asr	w28, w9, #1
	b	.LBB19_6
.LBB19_3:
	cmp	w8, #0
	cinc	w9, w8, lt
	asr	w26, w9, #1
	mul	w9, w26, w12
	mul	w10, w26, w11
	sbfiz	x9, x9, #3, #32
	add	x21, x21, x10
	add	x20, x20, x10
	add	x23, x23, x9
	add	x22, x22, x9
	add	x9, x19, #64
	str	x9, [sp, #8]
	b	.LBB19_5
.LBB19_4:
	mov	w26, wzr
.LBB19_5:
	mov	w28, w8
.LBB19_6:
	ldr	w9, [x27, #196]
	lsr	w25, w11, #2
	stp	w12, w11, [sp]
	cbz	w9, .LBB19_36
	sub	w8, w8, w28
	sub	w9, w28, w26
	mov	w1, wzr
	mul	w8, w8, w25
	mul	w9, w9, w25
	add	x0, x24, x8
	sxtw	x2, w9
	bl	memset
	ldr	w8, [x27, #120]
	mvn	w9, w26
	add	w8, w8, w9
	mul	w8, w8, w25
	neg	w25, w25
	add	x24, x24, x8
	cmp	w28, w26
	b.le	.LBB19_37
.LBB19_8:
	ldp	w9, w7, [sp]
	mov	w17, wzr
	sxtw	x8, w25
	mov	w11, #56
	cmp	w9, #1
	csinc	w10, w9, wzr, hi
	add	x9, x24, #1
	lsl	x10, x10, #3
	b	.LBB19_11
.LBB19_9:
	add	x20, x20, x12
	add	x23, x23, x12
	add	x22, x22, x12
	add	x21, x21, x12
.LBB19_10:
	add	w26, w26, #1
	add	x9, x9, x8
	cmp	w26, w28
	b.eq	.LBB19_38
.LBB19_11:
	cmp	w7, #8
	b.lo	.LBB19_10
	mov	x12, xzr
	mov	x13, x9
	b	.LBB19_16
.LBB19_13:
	str	x14, [x22, x12]
.LBB19_14:
	mov	w17, #1
	strb	w0, [x13]
.LBB19_15:
	add	x12, x12, #8
	add	x13, x13, #2
	cmp	x10, x12
	b.eq	.LBB19_9
.LBB19_16:
	ldr	x15, [x23, x12]
	ldr	x14, [x22, x12]
	eor	x16, x14, x15
	cbz	x16, .LBB19_15
	tst	x16, #0xff
	b.eq	.LBB19_19
	ldrb	w17, [x20, x12]
	lsl	w2, w14, #2
	ldrb	w1, [x21, x12]
	and	x2, x2, #0x3e0
	bfxil	x2, x15, #3, #5
	mov	x3, x14
	bfxil	x3, x15, #0, #8
	add	x0, x19, x17, lsl #3
	cmp	w17, #0
	cinc	x17, x11, ne
	add	w4, w1, #1
	ldr	x0, [x0, #120]
	ldrb	w17, [x19, x17]
	add	x0, x0, x1, lsl #10
	cmp	w17, w4, uxtb
	ldrb	w0, [x0, x2]
	cset	w17, eq
	csel	x14, x3, x14, eq
	csinc	w1, wzr, w1, eq
	strb	w1, [x21, x12]
	b	.LBB19_20
.LBB19_19:
	mov	w0, wzr
	mov	w17, wzr
.LBB19_20:
	add	x1, x21, x12
	tst	x16, #0xff00
	b.eq	.LBB19_22
	add	x2, x20, x12
	ldrb	w4, [x1, #1]
	lsr	x5, x14, #6
	lsr	x6, x15, #8
	and	x5, x5, #0x3e0
	ldrb	w2, [x2, #1]
	bfxil	x5, x15, #11, #5
	add	x3, x19, x2, lsl #3
	cmp	w2, #0
	cinc	x2, x11, ne
	ldr	x3, [x3, #120]
	ldrb	w2, [x19, x2]
	add	x3, x3, x4, lsl #10
	ldrb	w3, [x3, x5]
	add	w5, w4, #1
	cmp	w2, w5, uxtb
	mov	x2, x14
	bfi	x2, x6, #8, #8
	cset	w5, eq
	csinc	w4, wzr, w4, eq
	orr	w17, w5, w17
	orr	w0, w0, w3, lsl #2
	csel	x14, x2, x14, eq
	strb	w4, [x1, #1]
.LBB19_22:
	tst	x16, #0xff0000
	b.eq	.LBB19_24
	add	x2, x20, x12
	ldrb	w4, [x1, #2]
	lsr	x5, x14, #14
	lsr	x6, x15, #16
	and	x5, x5, #0x3e0
	ldrb	w2, [x2, #2]
	bfxil	x5, x15, #19, #5
	add	x3, x19, x2, lsl #3
	cmp	w2, #0
	cinc	x2, x11, ne
	ldr	x3, [x3, #120]
	ldrb	w2, [x19, x2]
	add	x3, x3, x4, lsl #10
	ldrb	w3, [x3, x5]
	add	w5, w4, #1
	cmp	w2, w5, uxtb
	mov	x2, x14
	bfi	x2, x6, #16, #8
	cset	w5, eq
	csinc	w4, wzr, w4, eq
	orr	w17, w5, w17
	orr	w0, w0, w3, lsl #4
	csel	x14, x2, x14, eq
	strb	w4, [x1, #2]
.LBB19_24:
	add	x1, x21, x12
	tst	x16, #0xff000000
	b.eq	.LBB19_26
	add	x2, x20, x12
	ldrb	w4, [x1, #3]
	lsr	x5, x14, #22
	lsr	x6, x15, #24
	and	x5, x5, #0x3e0
	ldrb	w2, [x2, #3]
	bfxil	x5, x15, #27, #5
	add	x3, x19, x2, lsl #3
	cmp	w2, #0
	cinc	x2, x11, ne
	ldr	x3, [x3, #120]
	ldrb	w2, [x19, x2]
	add	x3, x3, x4, lsl #10
	ldrb	w3, [x3, x5]
	add	w5, w4, #1
	cmp	w2, w5, uxtb
	mov	x2, x14
	bfi	x2, x6, #24, #8
	cset	w5, eq
	csinc	w4, wzr, w4, eq
	orr	w17, w5, w17
	orr	w0, w0, w3, lsl #6
	csel	x14, x2, x14, eq
	strb	w4, [x1, #3]
.LBB19_26:
	tst	x16, #0xff00000000
	sturb	w0, [x13, #-1]
	b.eq	.LBB19_28
	add	x0, x20, x12
	ldrb	w3, [x1, #4]
	lsr	x4, x14, #30
	lsr	x5, x15, #32
	and	x4, x4, #0x3e0
	ldrb	w0, [x0, #4]
	bfxil	x4, x15, #35, #5
	add	w6, w3, #1
	cmp	w0, #0
	add	x2, x19, x0, lsl #3
	cinc	x0, x11, ne
	ldr	x2, [x2, #120]
	ldrb	w0, [x19, x0]
	add	x2, x2, x3, lsl #10
	cmp	w0, w6, uxtb
	mov	x6, x14
	ldrb	w0, [x2, x4]
	cset	w2, eq
	bfi	x6, x5, #32, #8
	csinc	w3, wzr, w3, eq
	orr	w17, w2, w17
	csel	x14, x6, x14, eq
	strb	w3, [x1, #4]
	b	.LBB19_29
.LBB19_28:
	mov	w0, wzr
.LBB19_29:
	add	x1, x21, x12
	tst	x16, #0xff0000000000
	b.eq	.LBB19_31
	add	x2, x20, x12
	ldrb	w4, [x1, #5]
	lsr	x5, x14, #38
	lsr	x6, x15, #40
	and	x5, x5, #0x3e0
	ldrb	w2, [x2, #5]
	bfxil	x5, x15, #43, #5
	add	x3, x19, x2, lsl #3
	cmp	w2, #0
	cinc	x2, x11, ne
	ldr	x3, [x3, #120]
	ldrb	w2, [x19, x2]
	add	x3, x3, x4, lsl #10
	ldrb	w3, [x3, x5]
	add	w5, w4, #1
	cmp	w2, w5, uxtb
	mov	x2, x14
	bfi	x2, x6, #40, #8
	cset	w5, eq
	csinc	w4, wzr, w4, eq
	orr	w17, w5, w17
	orr	w0, w0, w3, lsl #2
	csel	x14, x2, x14, eq
	strb	w4, [x1, #5]
.LBB19_31:
	tst	x16, #0xff000000000000
	b.eq	.LBB19_33
	add	x2, x20, x12
	ldrb	w4, [x1, #6]
	lsr	x5, x14, #46
	lsr	x6, x15, #48
	and	x5, x5, #0x3e0
	ldrb	w2, [x2, #6]
	bfxil	x5, x15, #51, #5
	add	x3, x19, x2, lsl #3
	cmp	w2, #0
	cinc	x2, x11, ne
	ldr	x3, [x3, #120]
	ldrb	w2, [x19, x2]
	add	x3, x3, x4, lsl #10
	ldrb	w3, [x3, x5]
	add	w5, w4, #1
	cmp	w2, w5, uxtb
	mov	x2, x14
	bfi	x2, x6, #48, #8
	cset	w5, eq
	csinc	w4, wzr, w4, eq
	orr	w17, w5, w17
	orr	w0, w0, w3, lsl #4
	csel	x14, x2, x14, eq
	strb	w4, [x1, #6]
.LBB19_33:
	lsr	x16, x16, #56
	cbnz	x16, .LBB19_35
	cbnz	w17, .LBB19_13
	b	.LBB19_14
.LBB19_35:
	add	x16, x20, x12
	add	x1, x21, x12
	lsr	x4, x14, #54
	and	x4, x4, #0x3e0
	ldrb	w16, [x16, #7]
	bfxil	x4, x15, #59, #5
	bfxil	x15, x14, #0, #56
	add	x2, x19, x16, lsl #3
	cmp	w16, #0
	ldrb	w16, [x1, #7]
	cinc	x3, x11, ne
	ldr	x2, [x2, #120]
	ldrb	w3, [x19, x3]
	add	x2, x2, x16, lsl #10
	ldrb	w2, [x2, x4]
	add	w4, w16, #1
	cmp	w3, w4, uxtb
	cset	w3, eq
	csinc	w16, wzr, w16, eq
	orr	w17, w3, w17
	csel	x14, x15, x14, eq
	orr	w0, w0, w2, lsl #6
	strb	w16, [x1, #7]
	tbnz	w17, #0, .LBB19_13
	b	.LBB19_14
.LBB19_36:
	sub	w8, w28, w26
	mul	w9, w26, w25
	mov	w1, wzr
	mul	w8, w8, w25
	add	x24, x24, w9, sxtw
	sxtw	x2, w8
	mov	x0, x24
	bl	memset
	cmp	w28, w26
	b.gt	.LBB19_8
.LBB19_37:
	mov	w17, wzr
.LBB19_38:
	ldr	x8, [sp, #8]
	ldp	x20, x19, [sp, #96]
	ldp	x22, x21, [sp, #80]
	str	w17, [x8]
	ldp	x24, x23, [sp, #64]
	ldp	x26, x25, [sp, #48]
	ldp	x28, x27, [sp, #32]
	ldp	x29, x30, [sp, #16]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #112
	ret
.Lfunc_end19:
	.size	get_overlay_image, .Lfunc_end19-get_overlay_image

	.p2align	2
	.type	get_overlay_image_area2,@function
get_overlay_image_area2:
	sub	sp, sp, #144
	str	x30, [x18], #8
	ldr	x9, [x5, #232]
	stp	x29, x30, [sp, #48]
	ldp	w11, w15, [x5, #80]
	stp	x28, x27, [sp, #64]
	ldp	w10, w8, [x9, #48]
	ldp	w13, w14, [x9, #56]
	add	w9, w15, #7
	stp	x26, x25, [sp, #80]
	stp	x24, x23, [sp, #96]
	add	w12, w10, #7
	cmp	w10, #0
	add	w16, w13, #7
	csel	w12, w12, w10, lt
	cmp	w13, #0
	stp	x22, x21, [sp, #112]
	csel	w10, w16, w13, lt
	cmp	w15, #0
	asr	w10, w10, #3
	csel	w9, w9, w15, lt
	add	w13, w10, #1
	asr	w9, w9, #3
	sub	w16, w9, #1
	cmp	w13, w9
	csinc	w10, w16, w10, ge
	sub	w13, w11, #1
	cmp	w14, w11
	stp	x20, x19, [sp, #128]
	csel	w11, w14, w13, lt
	cmp	w8, w11
	b.le	.LBB20_2
.LBB20_1:
	ldp	x20, x19, [sp, #128]
	ldp	x22, x21, [sp, #112]
	ldp	x24, x23, [sp, #96]
	ldp	x26, x25, [sp, #80]
	ldp	x28, x27, [sp, #64]
	ldp	x29, x30, [sp, #48]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #144
	ret
.LBB20_2:
	adrp	x13, global_ebc
	asr	w14, w12, #3
	sbfx	x12, x12, #3, #29
	sbfiz	x6, x14, #3, #32
	add	w17, w10, #1
	lsl	x7, x12, #3
	ldr	x13, [x13, :lo12:global_ebc]
	sxtw	x17, w17
	add	x3, x6, x3
	ldr	w16, [x13, #116]
	mul	w13, w8, w9
	lsr	w14, w16, #2
	lsl	x16, x12, #2
	str	x16, [sp, #40]
	sub	x16, x17, x12
	mul	w17, w14, w8
	str	x16, [sp, #32]
	add	x16, x1, x7
	str	x16, [sp, #24]
	add	x16, x2, x7
	mov	w7, #56
	str	x16, [sp, #16]
	add	x16, x4, x6
	add	x4, x0, w17, sxtw
	mov	w6, #1
	str	x16, [sp, #8]
	add	x16, x3, #3
	str	x16, [sp]
.LBB20_3:
	mul	w17, w8, w14
	tst	w8, #0x1
	add	x17, x0, w17, sxtw
	csel	x4, x17, x4, eq
	cmp	w12, w10
	b.le	.LBB20_6
.LBB20_4:
	add	w8, w8, #1
	cmp	w8, w11
	b.gt	.LBB20_1
	ldr	w15, [x5, #84]
	add	w13, w13, w9
	b	.LBB20_3
.LBB20_6:
	ldp	x25, x16, [sp, #32]
	sbfiz	x17, x13, #3, #32
	mul	w15, w15, w8
	mov	x19, xzr
	sxtw	x15, w15
	add	x20, x4, x16
	ldr	x16, [sp, #24]
	add	x21, x16, x17
	ldr	x16, [sp, #16]
	add	x22, x16, x17
	ldr	x16, [sp, #8]
	add	x23, x16, x15
	ldr	x16, [sp]
	add	x24, x16, x15
	b	.LBB20_11
.LBB20_7:
	cbz	w30, .LBB20_9
.LBB20_8:
	str	x1, [x22, x19]
.LBB20_9:
	ldr	w15, [x20]
	orr	w15, w15, w28
	str	w15, [x20]
.LBB20_10:
	add	x20, x20, #4
	subs	x25, x25, #1
	add	x19, x19, #8
	b.eq	.LBB20_4
.LBB20_11:
	ldr	x16, [x21, x19]
	ldr	x1, [x22, x19]
	eor	x29, x1, x16
	cbz	x29, .LBB20_10
	add	x15, x24, x19
	and	x17, x29, #0xff
	str	w6, [x5, #60]
	tbnz	w8, #0, .LBB20_16
	cbz	x17, .LBB20_15
	ldurb	w17, [x15, #-3]
	cbz	w17, .LBB20_19
.LBB20_15:
	mov	w28, wzr
	mov	w30, wzr
	b	.LBB20_20
.LBB20_16:
	cbz	x17, .LBB20_18
	ldurb	w17, [x15, #-3]
	cbz	w17, .LBB20_25
.LBB20_18:
	mov	w28, wzr
	mov	w30, wzr
	b	.LBB20_26
.LBB20_19:
	ldrb	w17, [x23, x19]
	lsl	w3, w1, #2
	and	x3, x3, #0x3e0
	bfxil	x3, x16, #3, #5
	cmp	w17, #0
	add	x17, x5, x17, lsl #3
	cinc	x2, x7, ne
	ldr	x17, [x17, #120]
	ldrb	w2, [x5, x2]
	ldrb	w28, [x17, x3]
	mov	x17, x1
	bfxil	x17, x16, #0, #8
	cmp	w2, #1
	cset	w2, ne
	cset	w30, eq
	csel	x1, x17, x1, eq
	sturb	w2, [x15, #-3]
.LBB20_20:
	add	x15, x24, x19
	add	x17, x23, x19
	tst	x29, #0xff00
	b.eq	.LBB20_22
	ldurb	w2, [x15, #-2]
	cbz	w2, .LBB20_31
.LBB20_22:
	tst	x29, #0xff0000
	b.eq	.LBB20_32
.LBB20_23:
	ldurb	w2, [x15, #-1]
	cbnz	w2, .LBB20_32
	ldrb	w17, [x17, #2]
	lsr	x2, x1, #14
	mov	x26, x1
	cmp	w17, #0
	add	x3, x5, x17, lsl #3
	and	x17, x2, #0x3e0
	cinc	x2, x7, ne
	bfxil	x17, x16, #19, #5
	ldr	x3, [x3, #120]
	ldrb	w2, [x5, x2]
	ldrb	w17, [x3, x17]
	lsr	x3, x16, #16
	cmp	w2, #1
	bfi	x26, x3, #16, #8
	cset	w2, eq
	orr	w28, w28, w17, lsl #8
	cset	w17, ne
	orr	w30, w2, w30
	csel	x1, x26, x1, eq
	sturb	w17, [x15, #-1]
	b	.LBB20_32
.LBB20_25:
	ldrb	w17, [x23, x19]
	lsl	w28, w1, #2
	mov	x26, x1
	bfxil	x26, x16, #0, #8
	add	x30, x5, x17, lsl #3
	cmp	w17, #0
	and	x17, x28, #0x3e0
	cinc	x28, x7, ne
	bfxil	x17, x16, #3, #5
	ldr	x30, [x30, #120]
	ldrb	w28, [x5, x28]
	ldrb	w17, [x30, x17]
	cmp	w28, #1
	lsl	w28, w17, #2
	cset	w17, ne
	cset	w30, eq
	csel	x1, x26, x1, eq
	sturb	w17, [x15, #-3]
.LBB20_26:
	add	x15, x24, x19
	add	x17, x23, x19
	tst	x29, #0xff00
	b.eq	.LBB20_28
	ldurb	w26, [x15, #-2]
	cbz	w26, .LBB20_46
.LBB20_28:
	tst	x29, #0xff0000
	b.eq	.LBB20_47
.LBB20_29:
	ldurb	w2, [x15, #-1]
	cbnz	w2, .LBB20_47
	ldrb	w17, [x17, #2]
	lsr	x2, x1, #14
	cmp	w17, #0
	add	x3, x5, x17, lsl #3
	and	x17, x2, #0x3e0
	cinc	x2, x7, ne
	bfxil	x17, x16, #19, #5
	ldr	x3, [x3, #120]
	ldrb	w2, [x5, x2]
	ldrb	w17, [x3, x17]
	lsr	x3, x16, #16
	cmp	w2, #1
	mov	x2, x1
	bfi	x2, x3, #16, #8
	orr	w28, w28, w17, lsl #10
	cset	w17, ne
	csinc	w30, w30, wzr, ne
	csel	x1, x2, x1, eq
	sturb	w17, [x15, #-1]
	b	.LBB20_47
.LBB20_31:
	ldrb	w2, [x17, #1]
	lsr	x3, x1, #6
	mov	x27, x1
	cmp	w2, #0
	add	x26, x5, x2, lsl #3
	and	x2, x3, #0x3e0
	cinc	x3, x7, ne
	bfxil	x2, x16, #11, #5
	ldr	x26, [x26, #120]
	ldrb	w3, [x5, x3]
	ldrb	w2, [x26, x2]
	lsr	x26, x16, #8
	cmp	w3, #1
	bfi	x27, x26, #8, #8
	cset	w3, eq
	orr	w28, w28, w2, lsl #4
	cset	w2, ne
	orr	w30, w3, w30
	csel	x1, x27, x1, eq
	sturb	w2, [x15, #-2]
	tst	x29, #0xff0000
	b.ne	.LBB20_23
.LBB20_32:
	add	x17, x23, x19
	tst	x29, #0xff000000
	b.eq	.LBB20_35
	ldrb	w15, [x24, x19]
	cbnz	w15, .LBB20_35
	ldrb	w15, [x17, #3]
	lsr	x2, x1, #22
	mov	x26, x1
	cmp	w15, #0
	add	x3, x5, x15, lsl #3
	and	x15, x2, #0x3e0
	cinc	x2, x7, ne
	bfxil	x15, x16, #27, #5
	ldr	x3, [x3, #120]
	ldrb	w2, [x5, x2]
	ldrb	w15, [x3, x15]
	lsr	x3, x16, #24
	cmp	w2, #1
	bfi	x26, x3, #24, #8
	cset	w2, eq
	orr	w28, w28, w15, lsl #12
	orr	w30, w2, w30
	csel	x1, x26, x1, eq
	cset	w15, ne
	strb	w15, [x24, x19]
.LBB20_35:
	add	x15, x24, x19
	tst	x29, #0xff00000000
	b.eq	.LBB20_38
	ldrb	w2, [x15, #1]
	cbnz	w2, .LBB20_38
	ldrb	w17, [x17, #4]
	lsr	x2, x1, #30
	mov	x26, x1
	cmp	w17, #0
	add	x3, x5, x17, lsl #3
	and	x17, x2, #0x3e0
	cinc	x2, x7, ne
	bfxil	x17, x16, #35, #5
	ldr	x3, [x3, #120]
	ldrb	w2, [x5, x2]
	ldrb	w17, [x3, x17]
	lsr	x3, x16, #32
	cmp	w2, #1
	bfi	x26, x3, #32, #8
	cset	w2, eq
	orr	w28, w28, w17, lsl #16
	cset	w17, ne
	orr	w30, w2, w30
	csel	x1, x26, x1, eq
	strb	w17, [x15, #1]
.LBB20_38:
	add	x17, x23, x19
	tst	x29, #0xff0000000000
	b.eq	.LBB20_41
	ldrb	w2, [x15, #2]
	cbnz	w2, .LBB20_41
	ldrb	w2, [x17, #5]
	lsr	x3, x1, #38
	mov	x27, x1
	cmp	w2, #0
	add	x26, x5, x2, lsl #3
	and	x2, x3, #0x3e0
	cinc	x3, x7, ne
	bfxil	x2, x16, #43, #5
	ldr	x26, [x26, #120]
	ldrb	w3, [x5, x3]
	ldrb	w2, [x26, x2]
	lsr	x26, x16, #40
	cmp	w3, #1
	bfi	x27, x26, #40, #8
	cset	w3, eq
	orr	w28, w28, w2, lsl #20
	cset	w2, ne
	orr	w30, w3, w30
	csel	x1, x27, x1, eq
	strb	w2, [x15, #2]
.LBB20_41:
	add	x15, x24, x19
	tst	x29, #0xff000000000000
	b.eq	.LBB20_43
	ldrb	w2, [x15, #3]
	cbz	w2, .LBB20_62
.LBB20_43:
	lsr	x17, x29, #56
	cbz	x17, .LBB20_7
.LBB20_44:
	ldrb	w17, [x15, #4]
	cbnz	w17, .LBB20_7
	add	x17, x23, x19
	lsr	x3, x1, #54
	and	x3, x3, #0x3e0
	bfxil	x3, x16, #59, #5
	bfxil	x16, x1, #0, #56
	ldrb	w17, [x17, #7]
	cmp	w17, #0
	add	x17, x5, x17, lsl #3
	cinc	x2, x7, ne
	ldr	x17, [x17, #120]
	ldrb	w2, [x5, x2]
	ldrb	w17, [x17, x3]
	cmp	w2, #1
	cset	w3, eq
	cset	w2, ne
	orr	w3, w3, w30
	orr	w28, w28, w17, lsl #28
	csel	x1, x16, x1, eq
	strb	w2, [x15, #4]
	tbnz	w3, #0, .LBB20_8
	b	.LBB20_9
.LBB20_46:
	ldrb	w26, [x17, #1]
	lsr	x2, x1, #6
	and	x2, x2, #0x3e0
	bfxil	x2, x16, #11, #5
	cmp	w26, #0
	add	x3, x5, x26, lsl #3
	cinc	x26, x7, ne
	ldr	x3, [x3, #120]
	ldrb	w26, [x5, x26]
	ldrb	w2, [x3, x2]
	lsr	x3, x16, #8
	cmp	w26, #1
	mov	x26, x1
	bfi	x26, x3, #8, #8
	orr	w28, w28, w2, lsl #6
	cset	w2, ne
	csinc	w30, w30, wzr, ne
	csel	x1, x26, x1, eq
	sturb	w2, [x15, #-2]
	tst	x29, #0xff0000
	b.ne	.LBB20_29
.LBB20_47:
	add	x17, x23, x19
	tst	x29, #0xff000000
	b.eq	.LBB20_50
	ldrb	w15, [x24, x19]
	cbnz	w15, .LBB20_50
	ldrb	w15, [x17, #3]
	lsr	x2, x1, #22
	lsr	x26, x16, #24
	add	x3, x5, x15, lsl #3
	cmp	w15, #0
	and	x15, x2, #0x3e0
	cinc	x2, x7, ne
	bfxil	x15, x16, #27, #5
	ldr	x3, [x3, #120]
	ldrb	w2, [x5, x2]
	ldrb	w15, [x3, x15]
	mov	x3, x1
	bfi	x3, x26, #24, #8
	cmp	w2, #1
	orr	w28, w28, w15, lsl #14
	csinc	w30, w30, wzr, ne
	csel	x1, x3, x1, eq
	cset	w15, ne
	strb	w15, [x24, x19]
.LBB20_50:
	add	x15, x24, x19
	tst	x29, #0xff00000000
	b.eq	.LBB20_53
	ldrb	w2, [x15, #1]
	cbnz	w2, .LBB20_53
	ldrb	w17, [x17, #4]
	lsr	x2, x1, #30
	cmp	w17, #0
	add	x3, x5, x17, lsl #3
	and	x17, x2, #0x3e0
	cinc	x2, x7, ne
	bfxil	x17, x16, #35, #5
	ldr	x3, [x3, #120]
	ldrb	w2, [x5, x2]
	ldrb	w17, [x3, x17]
	lsr	x3, x16, #32
	cmp	w2, #1
	mov	x2, x1
	bfi	x2, x3, #32, #8
	orr	w28, w28, w17, lsl #18
	cset	w17, ne
	csinc	w30, w30, wzr, ne
	csel	x1, x2, x1, eq
	strb	w17, [x15, #1]
.LBB20_53:
	add	x17, x23, x19
	tst	x29, #0xff0000000000
	b.eq	.LBB20_56
	ldrb	w2, [x15, #2]
	cbnz	w2, .LBB20_56
	ldrb	w2, [x17, #5]
	lsr	x3, x1, #38
	cmp	w2, #0
	add	x26, x5, x2, lsl #3
	and	x2, x3, #0x3e0
	cinc	x3, x7, ne
	bfxil	x2, x16, #43, #5
	ldr	x26, [x26, #120]
	ldrb	w3, [x5, x3]
	ldrb	w2, [x26, x2]
	lsr	x26, x16, #40
	cmp	w3, #1
	mov	x3, x1
	bfi	x3, x26, #40, #8
	orr	w28, w28, w2, lsl #22
	cset	w2, ne
	csinc	w30, w30, wzr, ne
	csel	x1, x3, x1, eq
	strb	w2, [x15, #2]
.LBB20_56:
	add	x15, x24, x19
	tst	x29, #0xff000000000000
	b.eq	.LBB20_58
	ldrb	w2, [x15, #3]
	cbz	w2, .LBB20_63
.LBB20_58:
	lsr	x17, x29, #56
	cbz	x17, .LBB20_7
.LBB20_59:
	ldrb	w17, [x15, #4]
	cbnz	w17, .LBB20_7
	add	x17, x23, x19
	ldrb	w17, [x17, #7]
	add	x2, x5, x17, lsl #3
	cmp	w17, #0
	lsr	x17, x1, #54
	cinc	x3, x7, ne
	and	x17, x17, #0x3e0
	bfxil	x17, x16, #59, #5
	ldr	x2, [x2, #120]
	ldrb	w3, [x5, x3]
	ldrb	w17, [x2, x17]
	cmp	w3, #1
	cset	w2, ne
	orr	w28, w28, w17, lsl #30
	strb	w2, [x15, #4]
	b.ne	.LBB20_7
	bfxil	x16, x1, #0, #56
	mov	x1, x16
	b	.LBB20_8
.LBB20_62:
	ldrb	w17, [x17, #6]
	lsr	x2, x1, #46
	mov	x26, x1
	cmp	w17, #0
	add	x3, x5, x17, lsl #3
	and	x17, x2, #0x3e0
	cinc	x2, x7, ne
	bfxil	x17, x16, #51, #5
	ldr	x3, [x3, #120]
	ldrb	w2, [x5, x2]
	ldrb	w17, [x3, x17]
	lsr	x3, x16, #48
	cmp	w2, #1
	bfi	x26, x3, #48, #8
	cset	w2, eq
	orr	w28, w28, w17, lsl #24
	cset	w17, ne
	orr	w30, w2, w30
	csel	x1, x26, x1, eq
	strb	w17, [x15, #3]
	lsr	x17, x29, #56
	cbz	x17, .LBB20_7
	b	.LBB20_44
.LBB20_63:
	ldrb	w17, [x17, #6]
	lsr	x2, x1, #46
	cmp	w17, #0
	add	x3, x5, x17, lsl #3
	and	x17, x2, #0x3e0
	cinc	x2, x7, ne
	bfxil	x17, x16, #51, #5
	ldr	x3, [x3, #120]
	ldrb	w2, [x5, x2]
	ldrb	w17, [x3, x17]
	lsr	x3, x16, #48
	cmp	w2, #1
	mov	x2, x1
	bfi	x2, x3, #48, #8
	orr	w28, w28, w17, lsl #26
	cset	w17, ne
	csinc	w30, w30, wzr, ne
	csel	x1, x2, x1, eq
	strb	w17, [x15, #3]
	lsr	x17, x29, #56
	cbnz	x17, .LBB20_59
	b	.LBB20_7
.Lfunc_end20:
	.size	get_overlay_image_area2, .Lfunc_end20-get_overlay_image_area2

	.p2align	2
	.type	get_overlay_image_area,@function
get_overlay_image_area:
	sub	sp, sp, #112
	str	x30, [x18], #8
	adrp	x8, global_ebc
	ldr	x9, [x5, #232]
	ldp	w11, w6, [x5, #80]
	stp	x29, x30, [sp, #16]
	ldr	x12, [x8, :lo12:global_ebc]
	stp	x28, x27, [sp, #32]
	ldp	w10, w8, [x9, #48]
	ldp	w13, w15, [x9, #56]
	add	w9, w6, #7
	ldr	w16, [x12, #116]
	ldr	w17, [x12, #196]
	stp	x26, x25, [sp, #48]
	add	w14, w10, #7
	cmp	w10, #0
	csel	w14, w14, w10, lt
	add	w10, w13, #7
	cmp	w13, #0
	stp	x24, x23, [sp, #64]
	csel	w10, w10, w13, lt
	cmp	w6, #0
	asr	w10, w10, #3
	csel	w9, w9, w6, lt
	add	w13, w10, #1
	asr	w9, w9, #3
	cmp	w13, w9
	sub	w13, w9, #1
	csinc	w10, w13, w10, ge
	sub	w13, w11, #1
	cmp	w15, w11
	stp	x22, x21, [sp, #80]
	csel	w11, w15, w13, lt
	lsr	w13, w16, #2
	stp	x20, x19, [sp, #96]
	cbz	w17, .LBB21_2
	ldr	w12, [x12, #120]
	mvn	w15, w8
	add	w12, w12, w15
	mul	w15, w12, w13
	neg	w13, w13
	cmp	w8, w11
	b.le	.LBB21_3
	b	.LBB21_36
.LBB21_2:
	mul	w12, w13, w8
	sxtw	x15, w12
	cmp	w8, w11
	b.gt	.LBB21_36
.LBB21_3:
	asr	w12, w14, #3
	add	x14, x0, x15
	sxtw	x0, w12
	lsl	w15, w12, #3
	lsl	x16, x0, #3
	sxtw	x7, w15
	add	x15, x2, x16
	add	w17, w10, #1
	add	x2, x7, #3
	sxtw	x13, w13
	str	x15, [sp, #8]
	add	x15, x1, x16
	sxtw	x1, w17
	lsl	w17, w12, #1
	sub	x0, x1, x0
	add	x1, x4, x2
	add	x2, x3, x2
	mov	w3, #1
	mov	w4, #56
	str	x15, [sp]
	cmp	w12, w10
	b.le	.LBB21_5
	b	.LBB21_35
.LBB21_4:
	ldr	w6, [x5, #84]
	add	x14, x14, x13
	cmp	w12, w10
	b.gt	.LBB21_35
.LBB21_5:
	mul	w7, w8, w9
	ldr	x15, [sp, #8]
	mul	w6, w6, w8
	mov	x21, x0
	sxtw	x7, w7
	mov	w22, w17
	sxtw	x19, w6
	lsl	x20, x7, #3
	add	x6, x1, x19
	add	x7, x2, x19
	add	x19, x15, x20
	ldr	x15, [sp]
	add	x20, x15, x20
	b	.LBB21_9
.LBB21_6:
	str	x16, [x19]
.LBB21_7:
	ldrb	w15, [x27, #1]
	orr	w15, w15, w28
	strb	w15, [x27, #1]
.LBB21_8:
	add	x19, x19, #8
	add	x20, x20, #8
	add	w22, w22, #2
	subs	x21, x21, #1
	add	x6, x6, #8
	add	x7, x7, #8
	b.eq	.LBB21_35
.LBB21_9:
	ldr	x24, [x20]
	ldr	x16, [x19]
	eor	x25, x16, x24
	cbz	x25, .LBB21_8
	tst	x25, #0xff
	str	w3, [x5, #60]
	b.eq	.LBB21_12
	ldurb	w26, [x7, #-3]
	cbz	w26, .LBB21_13
.LBB21_12:
	mov	w28, wzr
	mov	w26, wzr
	tst	x25, #0xff00
	b.ne	.LBB21_14
	b	.LBB21_15
.LBB21_13:
	ldurb	w26, [x6, #-3]
	lsl	w28, w16, #2
	and	x28, x28, #0x3e0
	bfxil	x28, x24, #3, #5
	cmp	w26, #0
	add	x26, x5, x26, lsl #3
	cinc	x27, x4, ne
	ldr	x26, [x26, #120]
	ldrb	w27, [x5, x27]
	ldrb	w28, [x26, x28]
	cmp	w27, #1
	mov	x27, x16
	bfxil	x27, x24, #0, #8
	cset	w29, ne
	cset	w26, eq
	csel	x16, x27, x16, eq
	sturb	w29, [x7, #-3]
	tst	x25, #0xff00
	b.eq	.LBB21_15
.LBB21_14:
	ldurb	w27, [x7, #-2]
	cbz	w27, .LBB21_18
.LBB21_15:
	tst	x25, #0xff0000
	b.eq	.LBB21_19
.LBB21_16:
	ldurb	w23, [x7, #-1]
	cbnz	w23, .LBB21_19
	ldurb	w23, [x6, #-1]
	lsr	x27, x16, #14
	mov	x30, x16
	cmp	w23, #0
	add	x29, x5, x23, lsl #3
	and	x23, x27, #0x3e0
	cinc	x27, x4, ne
	bfxil	x23, x24, #19, #5
	ldr	x29, [x29, #120]
	ldrb	w27, [x5, x27]
	ldrb	w23, [x29, x23]
	lsr	x29, x24, #16
	cmp	w27, #1
	bfi	x30, x29, #16, #8
	cset	w27, eq
	orr	w28, w28, w23, lsl #4
	cset	w23, ne
	orr	w26, w27, w26
	csel	x16, x30, x16, eq
	sturb	w23, [x7, #-1]
	b	.LBB21_19
.LBB21_18:
	ldurb	w27, [x6, #-2]
	lsr	x29, x16, #6
	mov	x23, x16
	cmp	w27, #0
	add	x30, x5, x27, lsl #3
	and	x27, x29, #0x3e0
	cinc	x29, x4, ne
	bfxil	x27, x24, #11, #5
	ldr	x30, [x30, #120]
	ldrb	w29, [x5, x29]
	ldrb	w27, [x30, x27]
	lsr	x30, x24, #8
	cmp	w29, #1
	bfi	x23, x30, #8, #8
	cset	w29, eq
	orr	w28, w28, w27, lsl #2
	cset	w27, ne
	orr	w26, w29, w26
	csel	x16, x23, x16, eq
	sturb	w27, [x7, #-2]
	tst	x25, #0xff0000
	b.ne	.LBB21_16
.LBB21_19:
	tst	x25, #0xff000000
	b.eq	.LBB21_22
	ldrb	w23, [x7]
	cbnz	w23, .LBB21_22
	ldrb	w23, [x6]
	lsr	x27, x16, #22
	mov	x30, x16
	cmp	w23, #0
	add	x29, x5, x23, lsl #3
	and	x23, x27, #0x3e0
	cinc	x27, x4, ne
	bfxil	x23, x24, #27, #5
	ldr	x29, [x29, #120]
	ldrb	w27, [x5, x27]
	ldrb	w23, [x29, x23]
	lsr	x29, x24, #24
	cmp	w27, #1
	bfi	x30, x29, #24, #8
	cset	w27, eq
	orr	w28, w28, w23, lsl #6
	cset	w23, ne
	orr	w26, w27, w26
	csel	x16, x30, x16, eq
	strb	w23, [x7]
.LBB21_22:
	add	x27, x14, w22, sxtw
	tst	x25, #0xff00000000
	ldrb	w23, [x27]
	orr	w23, w23, w28
	strb	w23, [x27]
	b.eq	.LBB21_24
	ldrb	w23, [x7, #1]
	cbz	w23, .LBB21_25
.LBB21_24:
	mov	w28, wzr
	tst	x25, #0xff0000000000
	b.ne	.LBB21_26
	b	.LBB21_27
.LBB21_25:
	ldrb	w23, [x6, #1]
	lsr	x29, x16, #30
	and	x29, x29, #0x3e0
	lsr	x30, x24, #32
	bfxil	x29, x24, #35, #5
	mov	x15, x16
	cmp	w23, #0
	add	x23, x5, x23, lsl #3
	cinc	x28, x4, ne
	bfi	x15, x30, #32, #8
	ldr	x23, [x23, #120]
	ldrb	w28, [x5, x28]
	cmp	w28, #1
	ldrb	w28, [x23, x29]
	cset	w29, eq
	cset	w23, ne
	orr	w26, w29, w26
	csel	x16, x15, x16, eq
	strb	w23, [x7, #1]
	tst	x25, #0xff0000000000
	b.eq	.LBB21_27
.LBB21_26:
	ldrb	w15, [x7, #2]
	cbz	w15, .LBB21_30
.LBB21_27:
	tst	x25, #0xff000000000000
	b.eq	.LBB21_31
.LBB21_28:
	ldrb	w15, [x7, #3]
	cbnz	w15, .LBB21_31
	ldrb	w15, [x6, #3]
	lsr	x23, x16, #46
	mov	x30, x16
	cmp	w15, #0
	add	x29, x5, x15, lsl #3
	and	x15, x23, #0x3e0
	cinc	x23, x4, ne
	bfxil	x15, x24, #51, #5
	ldr	x29, [x29, #120]
	ldrb	w23, [x5, x23]
	ldrb	w15, [x29, x15]
	lsr	x29, x24, #48
	cmp	w23, #1
	bfi	x30, x29, #48, #8
	cset	w23, eq
	orr	w28, w28, w15, lsl #4
	cset	w15, ne
	orr	w26, w23, w26
	csel	x16, x30, x16, eq
	strb	w15, [x7, #3]
	b	.LBB21_31
.LBB21_30:
	ldrb	w15, [x6, #2]
	lsr	x23, x16, #38
	mov	x30, x16
	cmp	w15, #0
	add	x29, x5, x15, lsl #3
	and	x15, x23, #0x3e0
	cinc	x23, x4, ne
	bfxil	x15, x24, #43, #5
	ldr	x29, [x29, #120]
	ldrb	w23, [x5, x23]
	ldrb	w15, [x29, x15]
	lsr	x29, x24, #40
	cmp	w23, #1
	bfi	x30, x29, #40, #8
	cset	w23, eq
	orr	w28, w28, w15, lsl #2
	cset	w15, ne
	orr	w26, w23, w26
	csel	x16, x30, x16, eq
	strb	w15, [x7, #2]
	tst	x25, #0xff000000000000
	b.ne	.LBB21_28
.LBB21_31:
	lsr	x15, x25, #56
	cbz	x15, .LBB21_33
	ldrb	w15, [x7, #4]
	cbz	w15, .LBB21_34
.LBB21_33:
	cbnz	w26, .LBB21_6
	b	.LBB21_7
.LBB21_34:
	ldrb	w15, [x6, #4]
	lsr	x25, x16, #54
	and	x25, x25, #0x3e0
	bfxil	x25, x24, #59, #5
	bfxil	x24, x16, #0, #56
	cmp	w15, #0
	add	x15, x5, x15, lsl #3
	cinc	x23, x4, ne
	ldr	x15, [x15, #120]
	ldrb	w23, [x5, x23]
	ldrb	w15, [x15, x25]
	cmp	w23, #1
	cset	w25, eq
	cset	w23, ne
	orr	w25, w25, w26
	orr	w28, w28, w15, lsl #6
	csel	x16, x24, x16, eq
	strb	w23, [x7, #4]
	tbz	w25, #0, .LBB21_7
	b	.LBB21_6
.LBB21_35:
	add	w8, w8, #1
	cmp	w8, w11
	b.le	.LBB21_4
.LBB21_36:
	ldp	x20, x19, [sp, #96]
	ldp	x22, x21, [sp, #80]
	ldp	x24, x23, [sp, #64]
	ldp	x26, x25, [sp, #48]
	ldp	x28, x27, [sp, #32]
	ldp	x29, x30, [sp, #16]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #112
	ret
.Lfunc_end21:
	.size	get_overlay_image_area, .Lfunc_end21-get_overlay_image_area

	.p2align	2
	.type	get_auto_image2,@function
get_auto_image2:
	sub	sp, sp, #144
	str	x30, [x18], #8
	adrp	x8, global_ebc
	stp	x26, x25, [sp, #80]
	stp	x24, x23, [sp, #96]
	cmp	w5, #3
	stp	x29, x30, [sp, #48]
	add	x29, sp, #48
	ldr	x8, [x8, :lo12:global_ebc]
	stp	x22, x21, [sp, #112]
	stp	x20, x19, [sp, #128]
	mov	x19, x4
	mov	x20, x3
	mov	x21, x2
	ldp	w23, w25, [x8, #116]
	mov	x22, x1
	stp	x28, x27, [sp, #64]
	stur	x0, [x29, #-8]
	str	x8, [sp, #24]
	lsr	w24, w23, #3
	b.eq	.LBB22_3
	add	x8, x19, #60
	cmp	w5, #2
	str	x8, [sp, #8]
	b.ne	.LBB22_4
	cmp	w25, #0
	mov	w27, wzr
	cinc	w8, w25, lt
	asr	w25, w8, #1
	b	.LBB22_5
.LBB22_3:
	cmp	w25, #0
	cinc	w8, w25, lt
	asr	w27, w8, #1
	mul	w8, w27, w24
	mul	w9, w27, w23
	sbfiz	x8, x8, #3, #32
	add	x22, x22, x8
	add	x21, x21, x8
	add	x20, x20, x9
	add	x8, x19, #64
	str	x8, [sp, #8]
	b	.LBB22_5
.LBB22_4:
	mov	w27, wzr
.LBB22_5:
	subs	w8, w25, w27
	mul	w9, w27, w23
	ldur	x10, [x29, #-8]
	mov	w1, wzr
	mul	w8, w8, w23
	lsr	w9, w9, #2
	add	x0, x10, x9
	lsr	w2, w8, #2
	bl	memset
	mov	w8, wzr
	cmp	w25, w27
	b.le	.LBB22_19
	cmp	w24, #1
	mov	w8, wzr
	csinc	w9, w24, wzr, hi
	stur	w23, [x29, #-12]
	lsl	x24, x9, #3
	str	x9, [sp, #16]
	b	.LBB22_9
.LBB22_7:
	add	x22, x22, x23
	add	x21, x21, x23
	add	x20, x20, x23
	ldur	w23, [x29, #-12]
.LBB22_8:
	add	w27, w27, #2
	cmp	w27, w25
	b.ge	.LBB22_19
.LBB22_9:
	cmp	w23, #8
	b.lo	.LBB22_8
	ldp	x26, x9, [sp, #16]
	ldr	w9, [x9, #116]
	mul	w28, w9, w27
	ldur	x9, [x29, #-8]
	add	x23, x9, x28, lsr #2
	b	.LBB22_12
.LBB22_11:
	add	x21, x21, #8
	add	x22, x22, #8
	add	x20, x20, #8
	add	x23, x23, #4
	subs	x26, x26, #1
	b.eq	.LBB22_14
.LBB22_12:
	ldr	x9, [x22]
	ldr	x10, [x21]
	cmp	x9, x10
	b.eq	.LBB22_11
	mov	x0, x22
	mov	x1, x21
	mov	x2, x20
	mov	x3, x19
	mov	w4, wzr
	bl	get_one_auto_image2
	mov	w8, #1
	str	w0, [x23]
	b	.LBB22_11
.LBB22_14:
	ldur	w23, [x29, #-12]
	cmp	w23, #8
	b.lo	.LBB22_8
	ldur	x9, [x29, #-8]
	mov	x23, xzr
	add	x26, x9, x28, lsr #2
	b	.LBB22_17
.LBB22_16:
	add	x26, x26, #4
	add	x23, x23, #8
	cmp	x24, x23
	b.eq	.LBB22_7
.LBB22_17:
	add	x0, x22, x23
	add	x1, x21, x23
	ldr	x9, [x0]
	ldr	x10, [x1]
	cmp	x9, x10
	b.eq	.LBB22_16
	add	x2, x20, x23
	mov	x3, x19
	mov	w4, #2
	bl	get_one_auto_image2
	ldr	w8, [x26]
	orr	w9, w8, w0
	mov	w8, #1
	str	w9, [x26]
	b	.LBB22_16
.LBB22_19:
	ldr	x9, [sp, #8]
	ldp	x20, x19, [sp, #128]
	ldp	x22, x21, [sp, #112]
	str	w8, [x9]
	ldp	x24, x23, [sp, #96]
	ldp	x26, x25, [sp, #80]
	ldp	x28, x27, [sp, #64]
	ldp	x29, x30, [sp, #48]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #144
	ret
.Lfunc_end22:
	.size	get_auto_image2, .Lfunc_end22-get_auto_image2

	.p2align	2
	.type	get_auto_image,@function
get_auto_image:
	stp	x26, x25, [sp, #-64]!
	adrp	x8, global_ebc
	cmp	w5, #3
	stp	x24, x23, [sp, #16]
	stp	x22, x21, [sp, #32]
	ldr	x8, [x8, :lo12:global_ebc]
	stp	x20, x19, [sp, #48]
	ldp	w9, w10, [x8, #116]
	lsr	w15, w9, #3
	b.eq	.LBB23_3
	add	x11, x4, #60
	cmp	w5, #2
	b.ne	.LBB23_6
	cmp	w10, #0
	mov	w12, wzr
	cinc	w10, w10, lt
	asr	w10, w10, #1
	cmp	w12, w10
	b.ge	.LBB23_4
	b	.LBB23_7
.LBB23_3:
	cmp	w10, #0
	cinc	w11, w10, lt
	asr	w12, w11, #1
	mul	w11, w12, w15
	mul	w13, w12, w9
	sbfiz	x11, x11, #3, #32
	add	x1, x1, x11
	add	x2, x2, x11
	add	x3, x3, x13
	add	x11, x4, #64
	cmp	w12, w10
	b.lt	.LBB23_7
.LBB23_4:
	mov	w19, wzr
.LBB23_5:
	str	w19, [x11]
	ldp	x20, x19, [sp, #48]
	ldp	x22, x21, [sp, #32]
	ldp	x24, x23, [sp, #16]
	ldp	x26, x25, [sp], #64
	ret
.LBB23_6:
	mov	w12, wzr
	cmp	w12, w10
	b.ge	.LBB23_4
.LBB23_7:
	cmp	w15, #1
	mov	w19, wzr
	ldrb	w13, [x4, #56]
	csinc	w15, w15, wzr, hi
	ldr	w14, [x8, #196]
	add	x16, x0, #1
	b	.LBB23_10
.LBB23_8:
	add	x3, x3, x17
	add	x1, x1, x17
	add	x2, x2, x17
.LBB23_9:
	add	w12, w12, #1
	cmp	w12, w10
	b.eq	.LBB23_5
.LBB23_10:
	cbz	w14, .LBB23_12
	ldp	w5, w17, [x8, #116]
	mvn	w0, w12
	add	w0, w17, w0
	cmp	w9, #8
	b.lo	.LBB23_9
	b	.LBB23_13
.LBB23_12:
	ldr	w0, [x8, #116]
	mov	w5, w12
	cmp	w9, #8
	b.lo	.LBB23_9
.LBB23_13:
	mul	w0, w0, w5
	mov	x17, xzr
	mov	w5, w15
	lsr	w0, w0, #2
	add	x0, x16, x0
	b	.LBB23_16
.LBB23_14:
	sturh	wzr, [x0, #-1]
.LBB23_15:
	add	x17, x17, #8
	add	x0, x0, #2
	subs	w5, w5, #1
	b.eq	.LBB23_8
.LBB23_16:
	ldr	x7, [x1, x17]
	ldr	x6, [x2, x17]
	cmp	x7, x6
	b.eq	.LBB23_14
	eor	x19, x6, x7
	tst	x19, #0xff
	b.eq	.LBB23_19
	ldrb	w21, [x3, x17]
	lsl	w22, w6, #2
	ldr	x20, [x4, #120]
	and	x22, x22, #0x3e0
	bfxil	x22, x7, #3, #5
	mov	x23, x6
	bfxil	x23, x7, #0, #8
	add	x20, x20, x21, lsl #10
	add	w24, w21, #1
	cmp	w13, w24, uxtb
	ldrb	w20, [x20, x22]
	csel	x6, x23, x6, eq
	csinc	w21, wzr, w21, eq
	strb	w21, [x3, x17]
	b	.LBB23_20
.LBB23_19:
	mov	w20, wzr
.LBB23_20:
	add	x21, x3, x17
	tst	x19, #0xff00
	b.eq	.LBB23_22
	ldrb	w22, [x21, #1]
	lsr	x23, x6, #6
	ldr	x24, [x4, #120]
	and	x23, x23, #0x3e0
	bfxil	x23, x7, #11, #5
	add	w25, w22, #1
	add	x24, x24, x22, lsl #10
	cmp	w13, w25, uxtb
	mov	x25, x6
	csinc	w22, wzr, w22, eq
	ldrb	w23, [x24, x23]
	lsr	x24, x7, #8
	strb	w22, [x21, #1]
	bfi	x25, x24, #8, #8
	orr	w20, w20, w23, lsl #2
	csel	x6, x25, x6, eq
.LBB23_22:
	tst	x19, #0xff0000
	b.eq	.LBB23_24
	ldrb	w22, [x21, #2]
	lsr	x23, x6, #14
	ldr	x24, [x4, #120]
	and	x23, x23, #0x3e0
	bfxil	x23, x7, #19, #5
	add	w25, w22, #1
	add	x24, x24, x22, lsl #10
	cmp	w13, w25, uxtb
	mov	x25, x6
	csinc	w22, wzr, w22, eq
	ldrb	w23, [x24, x23]
	lsr	x24, x7, #16
	strb	w22, [x21, #2]
	bfi	x25, x24, #16, #8
	orr	w20, w20, w23, lsl #4
	csel	x6, x25, x6, eq
.LBB23_24:
	add	x21, x3, x17
	tst	x19, #0xff000000
	b.eq	.LBB23_26
	ldrb	w22, [x21, #3]
	lsr	x23, x6, #22
	ldr	x24, [x4, #120]
	and	x23, x23, #0x3e0
	bfxil	x23, x7, #27, #5
	add	w25, w22, #1
	add	x24, x24, x22, lsl #10
	cmp	w13, w25, uxtb
	mov	x25, x6
	csinc	w22, wzr, w22, eq
	ldrb	w23, [x24, x23]
	lsr	x24, x7, #24
	strb	w22, [x21, #3]
	bfi	x25, x24, #24, #8
	orr	w20, w20, w23, lsl #6
	csel	x6, x25, x6, eq
.LBB23_26:
	tst	x19, #0xff00000000
	sturb	w20, [x0, #-1]
	b.eq	.LBB23_28
	ldrb	w22, [x21, #4]
	lsr	x20, x6, #30
	ldr	x23, [x4, #120]
	and	x20, x20, #0x3e0
	bfxil	x20, x7, #35, #5
	lsr	x24, x7, #32
	mov	x25, x6
	add	w26, w22, #1
	add	x23, x23, x22, lsl #10
	cmp	w13, w26, uxtb
	bfi	x25, x24, #32, #8
	csinc	w22, wzr, w22, eq
	ldrb	w20, [x23, x20]
	csel	x6, x25, x6, eq
	strb	w22, [x21, #4]
	b	.LBB23_29
.LBB23_28:
	mov	w20, wzr
.LBB23_29:
	add	x21, x3, x17
	tst	x19, #0xff0000000000
	b.eq	.LBB23_31
	ldrb	w22, [x21, #5]
	lsr	x23, x6, #38
	ldr	x24, [x4, #120]
	and	x23, x23, #0x3e0
	bfxil	x23, x7, #43, #5
	add	w25, w22, #1
	add	x24, x24, x22, lsl #10
	cmp	w13, w25, uxtb
	mov	x25, x6
	csinc	w22, wzr, w22, eq
	ldrb	w23, [x24, x23]
	lsr	x24, x7, #40
	strb	w22, [x21, #5]
	bfi	x25, x24, #40, #8
	orr	w20, w20, w23, lsl #2
	csel	x6, x25, x6, eq
.LBB23_31:
	tst	x19, #0xff000000000000
	b.eq	.LBB23_33
	ldrb	w22, [x21, #6]
	lsr	x23, x6, #46
	ldr	x24, [x4, #120]
	and	x23, x23, #0x3e0
	bfxil	x23, x7, #51, #5
	add	w25, w22, #1
	add	x24, x24, x22, lsl #10
	cmp	w13, w25, uxtb
	mov	x25, x6
	csinc	w22, wzr, w22, eq
	ldrb	w23, [x24, x23]
	lsr	x24, x7, #48
	strb	w22, [x21, #6]
	bfi	x25, x24, #48, #8
	orr	w20, w20, w23, lsl #4
	csel	x6, x25, x6, eq
.LBB23_33:
	lsr	x19, x19, #56
	cbz	x19, .LBB23_35
	add	x19, x3, x17
	ldr	x22, [x4, #120]
	lsr	x23, x6, #54
	and	x23, x23, #0x3e0
	ldrb	w21, [x19, #7]
	bfxil	x23, x7, #59, #5
	bfxil	x7, x6, #0, #56
	add	x22, x22, x21, lsl #10
	ldrb	w22, [x22, x23]
	add	w23, w21, #1
	cmp	w13, w23, uxtb
	csinc	w21, wzr, w21, eq
	csel	x6, x7, x6, eq
	orr	w20, w20, w22, lsl #6
	strb	w21, [x19, #7]
.LBB23_35:
	mov	w19, #1
	str	x6, [x2, x17]
	strb	w20, [x0]
	b	.LBB23_15
.Lfunc_end23:
	.size	get_auto_image, .Lfunc_end23-get_auto_image

	.p2align	2
	.type	direct_mode_data_change_part2,@function
direct_mode_data_change_part2:
	sub	sp, sp, #160
	str	x30, [x18], #8
	stp	x29, x30, [sp, #64]
	add	x29, sp, #64
	stp	x28, x27, [sp, #80]
	adrp	x9, global_ebc
	stp	x26, x25, [sp, #96]
	mov	x10, #1538
	stp	x24, x23, [sp, #112]
	movk	x10, #3594, lsl #16
	stp	x22, x21, [sp, #128]
	movk	x10, #5650, lsl #32
	stp	x20, x19, [sp, #144]
	mov	x19, x3
	str	x0, [sp, #24]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	mov	x20, x2
	mov	x21, x1
	movk	x10, #7706, lsl #48
	cmp	w4, #3
	stur	x8, [x29, #-8]
	ldr	x8, [x9, :lo12:global_ebc]
	mov	x9, #1024
	movk	x9, #3080, lsl #16
	ldrb	w22, [x3, #56]
	movk	x9, #5136, lsl #32
	ldr	w28, [x3, #72]
	ldp	w11, w12, [x8, #116]
	movk	x9, #7192, lsl #48
	ldr	x23, [x3, #120]
	lsr	w25, w11, #3
	stp	x10, x9, [x29, #-24]
	b.eq	.LBB24_3
	cmp	w4, #2
	b.ne	.LBB24_4
	cmp	w12, #0
	mov	w26, wzr
	cinc	w8, w12, lt
	asr	w12, w8, #1
	b	.LBB24_5
.LBB24_3:
	cmp	w12, #0
	cinc	w8, w12, lt
	asr	w26, w8, #1
	mul	w8, w26, w25
	sbfiz	x8, x8, #3, #32
	add	x21, x21, x8
	add	x20, x20, x8
	b	.LBB24_5
.LBB24_4:
	mov	w26, wzr
.LBB24_5:
	lsr	w24, w11, #2
	subs	w8, w12, w26
	ldr	x9, [sp, #24]
	mov	w1, wzr
	mul	w27, w26, w24
	str	w12, [sp, #20]
	mul	w8, w8, w24
	stur	w11, [x29, #-28]
	add	x0, x9, w27, sxtw
	sxtw	x2, w8
	bl	memset
	ldr	w10, [sp, #20]
	ldur	w9, [x29, #-28]
	cmp	w10, w26
	b.le	.LBB24_20
	sub	w8, w22, w28
	cmp	w25, #1
	lsl	w8, w8, #10
	csinc	w11, w25, wzr, hi
	lsl	x28, x11, #3
	add	x23, x23, w8, sxtw
	lsl	w8, w24, #1
	str	x11, [sp, #8]
	str	w8, [sp, #4]
	b	.LBB24_10
.LBB24_7:
	add	x21, x21, x22
	add	x20, x20, x22
	ldur	w9, [x29, #-28]
.LBB24_8:
	ldr	w10, [sp, #20]
	ldr	w8, [sp, #4]
.LBB24_9:
	add	w26, w26, #2
	add	w27, w27, w8
	cmp	w26, w10
	b.ge	.LBB24_20
.LBB24_10:
	cmp	w9, #8
	b.lo	.LBB24_9
	ldr	x8, [sp, #24]
	ldr	x22, [sp, #8]
	add	x24, x8, w27, sxtw
	mov	x25, x24
	b	.LBB24_13
.LBB24_12:
	add	x25, x25, #4
	subs	x22, x22, #1
	b.eq	.LBB24_15
.LBB24_13:
	ldr	x2, [x21], #8
	ldr	x1, [x20], #8
	cmp	x2, x1
	b.eq	.LBB24_12
	ldr	x8, [x19, #216]
	sub	x3, x29, #16
	mov	x0, x23
	ldr	w4, [x8, #40]
	bl	ebc_get_8pix_wf_part
	str	w0, [x25]
	b	.LBB24_12
.LBB24_15:
	ldur	w9, [x29, #-28]
	cmp	w9, #8
	b.lo	.LBB24_8
	mov	x22, xzr
	b	.LBB24_18
.LBB24_17:
	add	x24, x24, #4
	add	x22, x22, #8
	cmp	x28, x22
	b.eq	.LBB24_7
.LBB24_18:
	ldr	x2, [x21, x22]
	ldr	x1, [x20, x22]
	cmp	x2, x1
	b.eq	.LBB24_17
	ldr	x8, [x19, #216]
	sub	x3, x29, #24
	mov	x0, x23
	ldr	w4, [x8, #40]
	bl	ebc_get_8pix_wf_part
	ldr	w8, [x24]
	orr	w8, w8, w0
	str	w8, [x24]
	b	.LBB24_17
.LBB24_20:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB24_22
	ldp	x20, x19, [sp, #144]
	ldp	x22, x21, [sp, #128]
	ldp	x24, x23, [sp, #112]
	ldp	x26, x25, [sp, #96]
	ldp	x28, x27, [sp, #80]
	ldp	x29, x30, [sp, #64]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #160
	ret
.LBB24_22:
	bl	__stack_chk_fail
.Lfunc_end24:
	.size	direct_mode_data_change_part2, .Lfunc_end24-direct_mode_data_change_part2

	.p2align	2
	.type	direct_mode_data_change_part,@function
direct_mode_data_change_part:
	sub	sp, sp, #144
	str	x30, [x18], #8
	stp	x29, x30, [sp, #48]
	add	x29, sp, #48
	stp	x28, x27, [sp, #64]
	adrp	x9, global_ebc
	stp	x26, x25, [sp, #80]
	stp	x24, x23, [sp, #96]
	stp	x22, x21, [sp, #112]
	mov	x21, x1
	stp	x20, x19, [sp, #128]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	mov	x19, x3
	mov	x20, x2
	mov	x22, x0
	cmp	w4, #3
	stur	x8, [x29, #-8]
	ldr	x27, [x9, :lo12:global_ebc]
	mov	x9, #512
	movk	x9, #1540, lsl #16
	ldrb	w24, [x3, #56]
	movk	x9, #2568, lsl #32
	ldr	w12, [x3, #72]
	ldp	w10, w8, [x27, #116]
	ldr	x11, [x3, #120]
	movk	x9, #3596, lsl #48
	str	w12, [sp, #12]
	lsr	w23, w10, #3
	stur	w10, [x29, #-20]
	stur	x9, [x29, #-16]
	str	x11, [sp, #16]
	b.eq	.LBB25_3
	cmp	w4, #2
	b.ne	.LBB25_4
	cmp	w8, #0
	mov	w25, wzr
	cinc	w9, w8, lt
	asr	w26, w9, #1
	b	.LBB25_6
.LBB25_3:
	cmp	w8, #0
	cinc	w9, w8, lt
	asr	w25, w9, #1
	mul	w9, w25, w23
	sbfiz	x9, x9, #3, #32
	add	x21, x21, x9
	add	x20, x20, x9
	b	.LBB25_5
.LBB25_4:
	mov	w25, wzr
.LBB25_5:
	mov	w26, w8
.LBB25_6:
	ldur	w10, [x29, #-20]
	ldr	w9, [x27, #196]
	lsr	w28, w10, #2
	cbz	w9, .LBB25_8
	sub	w8, w8, w26
	sub	w9, w26, w25
	mov	w1, wzr
	mul	w8, w8, w28
	mul	w9, w9, w28
	add	x0, x22, x8
	sxtw	x2, w9
	bl	memset
	ldr	w8, [x27, #120]
	mvn	w9, w25
	add	w8, w8, w9
	mul	w8, w8, w28
	neg	w28, w28
	add	x22, x22, x8
	cmp	w26, w25
	b.gt	.LBB25_9
	b	.LBB25_16
.LBB25_8:
	sub	w8, w26, w25
	mul	w9, w25, w28
	mov	w1, wzr
	mul	w8, w8, w28
	add	x22, x22, w9, sxtw
	sxtw	x2, w8
	mov	x0, x22
	bl	memset
	cmp	w26, w25
	b.le	.LBB25_16
.LBB25_9:
	ldr	w8, [sp, #12]
	cmp	w23, #1
	ldr	x10, [sp, #16]
	csinc	w9, w23, wzr, hi
	sxtw	x27, w28
	lsl	x28, x9, #1
	sub	w8, w24, w8
	lsl	w8, w8, #10
	add	x23, x10, w8, sxtw
	b	.LBB25_11
.LBB25_10:
	add	w25, w25, #1
	add	x22, x22, x27
	cmp	w25, w26
	b.eq	.LBB25_16
.LBB25_11:
	ldur	w8, [x29, #-20]
	cmp	w8, #8
	b.lo	.LBB25_10
	mov	x24, xzr
	b	.LBB25_14
.LBB25_13:
	add	x24, x24, #2
	cmp	x28, x24
	b.eq	.LBB25_10
.LBB25_14:
	ldr	x2, [x21], #8
	ldr	x1, [x20], #8
	cmp	x2, x1
	b.eq	.LBB25_13
	ldr	x8, [x19, #216]
	sub	x3, x29, #16
	mov	x0, x23
	ldr	w4, [x8, #40]
	bl	ebc_get_8pix_wf_part
	strh	w0, [x22, x24]
	b	.LBB25_13
.LBB25_16:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB25_18
	ldp	x20, x19, [sp, #128]
	ldp	x22, x21, [sp, #112]
	ldp	x24, x23, [sp, #96]
	ldp	x26, x25, [sp, #80]
	ldp	x28, x27, [sp, #64]
	ldp	x29, x30, [sp, #48]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #144
	ret
.LBB25_18:
	bl	__stack_chk_fail
.Lfunc_end25:
	.size	direct_mode_data_change_part, .Lfunc_end25-direct_mode_data_change_part

	.p2align	2
	.type	is_full_refresh_done,@function
is_full_refresh_done:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	ldp	w10, w9, [x0, #80]
	ldr	w13, [x0, #668]
	mov	x8, x0
	ldr	x0, [x0, #160]
	mov	x29, sp
	add	w11, w9, #7
	cmp	w9, #0
	csel	w11, w11, w9, lt
	add	w12, w9, #15
	asr	w11, w11, #3
	csel	w12, w12, w9, lt
	cmp	w13, #3
	b.eq	.LBB26_6
	cmp	w13, #5
	b.ne	.LBB26_9
	cmp	w9, #8
	b.lt	.LBB26_11
	cmp	w11, #1
	ldrb	w8, [x8, #56]
	csinc	w11, w11, wzr, gt
	mov	w13, w10
	add	w12, w11, #1
	sub	x11, x0, #8
	sub	x12, x12, #1
.LBB26_4:
	sbfiz	x14, x13, #3, #32
	ldrb	w14, [x11, x14]
	cmp	x14, #255
	ccmp	x14, x8, #0, ne
	b.lo	.LBB26_10
	add	w13, w13, w10
	subs	x12, x12, #1
	b.ne	.LBB26_4
	b	.LBB26_11
.LBB26_6:
	cmp	w10, #0
	cinc	w13, w10, lt
	asr	w13, w13, #1
	mul	w13, w13, w11
	sbfiz	x13, x13, #3, #32
	ldrb	w14, [x0, x13]
	ldrb	w13, [x8, #56]
	cmp	x14, #255
	ccmp	x14, x13, #0, ne
	b.lo	.LBB26_10
	mul	w8, w10, w11
	neg	w11, w12, asr #4
	sbfiz	x11, x11, #3, #32
	add	x8, x0, w8, sxtw #3
	ldrb	w11, [x8, x11]
	mov	w8, wzr
	cmp	x11, x13
	b.lo	.LBB26_12
	cmp	x11, #255
	b.ne	.LBB26_11
	b	.LBB26_12
.LBB26_9:
	mul	w11, w10, w11
	ldrb	w8, [x8, #56]
	add	x11, x0, w11, sxtw #3
	ldurb	w11, [x11, #-8]
	cmp	x11, #255
	ccmp	x11, x8, #0, ne
	b.hs	.LBB26_11
.LBB26_10:
	mov	w8, wzr
	b	.LBB26_12
.LBB26_11:
	mul	w8, w10, w9
	mov	w1, wzr
	sxtw	x2, w8
	bl	memset
	mov	w8, #1
.LBB26_12:
	mov	w0, w8
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end26:
	.size	is_full_refresh_done, .Lfunc_end26-is_full_refresh_done

	.p2align	2
	.type	direct_mode_data_change_full2,@function
direct_mode_data_change_full2:
	sub	sp, sp, #160
	str	x30, [x18], #8
	adrp	x8, global_ebc
	ldr	x9, [x3, #160]
	stp	x22, x21, [sp, #128]
	stp	x28, x27, [sp, #80]
	ldr	x8, [x8, :lo12:global_ebc]
	stp	x20, x19, [sp, #144]
	stp	x29, x30, [sp, #64]
	add	x29, sp, #64
	stp	x26, x25, [sp, #96]
	ldp	w15, w10, [x8, #116]
	stp	x24, x23, [sp, #112]
	str	x0, [sp, #16]
	cmp	w10, #0
	lsr	w8, w15, #3
	cinc	w11, w10, lt
	cmp	w10, #0
	asr	w11, w11, #1
	cinc	w12, w10, lt
	cmp	w4, #2
	asr	w12, w12, #1
	mul	w13, w11, w8
	csel	w14, wzr, wzr, ne
	csel	w12, w10, w12, ne
	cmp	w4, #3
	sbfiz	x13, x13, #3, #32
	csel	w21, w11, w14, eq
	add	x11, x1, x13
	add	x14, x2, x13
	add	x13, x9, x13
	csel	x28, x14, x2, eq
	csel	x20, x11, x1, eq
	csel	w10, w10, w12, eq
	csel	x27, x13, x9, eq
	cmp	w21, w10
	b.ge	.LBB27_24
	lsr	w9, w15, #2
	cmp	w8, #1
	csinc	w8, w8, wzr, hi
	mov	x19, x3
	mul	w11, w21, w9
	lsl	w9, w9, #1
	lsl	x8, x8, #3
	str	w15, [sp, #24]
	stp	w9, w10, [sp, #8]
	stur	x8, [x29, #-8]
	b	.LBB27_5
.LBB27_2:
	add	x8, x27, x22
	add	x9, x20, x22
	add	x10, x28, x22
	add	x27, x8, x23
	ldp	w15, w11, [sp, #24]
	add	x20, x9, x23
	add	x28, x10, x23
	ldr	w10, [sp, #12]
	ldur	w21, [x29, #-12]
.LBB27_3:
	ldr	w9, [sp, #8]
.LBB27_4:
	add	w21, w21, #2
	add	w11, w11, w9
	cmp	w21, w10
	b.ge	.LBB27_24
.LBB27_5:
	cmp	w15, #8
	b.lo	.LBB27_4
	ldr	x8, [sp, #16]
	mov	x22, xzr
	str	w11, [sp, #28]
	add	x24, x8, w11, sxtw
	mov	x23, x24
	b	.LBB27_9
.LBB27_7:
	ldr	x9, [x19, #120]
	lsl	w10, w26, #2
	lsr	x11, x26, #6
	and	x10, x10, #0x3e0
	and	x11, x11, #0x3e0
	bfxil	x10, x25, #3, #5
	add	x8, x9, x8, lsl #10
	lsr	x9, x26, #14
	bfxil	x11, x25, #11, #5
	and	x9, x9, #0x3e0
	lsr	x12, x26, #22
	bfxil	x9, x25, #19, #5
	and	x12, x12, #0x3e0
	lsr	x13, x26, #30
	bfxil	x12, x25, #27, #5
	and	x13, x13, #0x3e0
	lsr	x14, x26, #38
	ldrb	w10, [x8, x10]
	ldrb	w11, [x8, x11]
	bfxil	x13, x25, #35, #5
	and	x14, x14, #0x3e0
	lsr	x15, x26, #46
	ldrb	w9, [x8, x9]
	bfxil	x14, x25, #43, #5
	and	x15, x15, #0x3e0
	lsr	x16, x26, #54
	ldrb	w12, [x8, x12]
	bfxil	x15, x25, #51, #5
	and	x16, x16, #0x3e0
	ldrb	w13, [x8, x13]
	bfxil	x16, x25, #59, #5
	orr	w10, w10, w11, lsl #4
	ldrb	w11, [x8, x14]
	orr	w9, w10, w9, lsl #8
	ldrb	w10, [x8, x15]
	orr	w9, w9, w12, lsl #12
	ldrb	w8, [x8, x16]
	orr	w9, w9, w13, lsl #16
	orr	w9, w9, w11, lsl #20
	orr	w9, w9, w10, lsl #24
	orr	w8, w9, w8, lsl #28
	str	w8, [x23]
	ldr	x8, [x27, x22]
	add	x8, x8, #1
	str	x8, [x27, x22]
.LBB27_8:
	ldur	x8, [x29, #-8]
	add	x22, x22, #8
	add	x23, x23, #4
	cmp	x8, x22
	b.eq	.LBB27_14
.LBB27_9:
	ldr	x25, [x20, x22]
	mov	x0, x19
	ldr	x26, [x28, x22]
	mov	w1, w21
	mov	w2, w22
	bl	is_full_refresh_area
	ldr	x8, [x27, x22]
	tbz	w0, #0, .LBB27_12
	and	x9, x8, #0xff
	cmp	x9, #255
	b.ne	.LBB27_12
	mov	x8, xzr
	str	xzr, [x27, x22]
.LBB27_12:
	ldrb	w9, [x19, #56]
	and	w8, w8, #0xff
	cmp	w8, w9
	b.lo	.LBB27_7
	str	wzr, [x23]
	b	.LBB27_8
.LBB27_14:
	ldr	w15, [sp, #24]
	add	x25, x27, x22
	add	x9, x20, x22
	add	x10, x28, x22
	cmp	w15, #8
	b.hs	.LBB27_16
	mov	x28, x10
	ldr	w10, [sp, #12]
	ldr	w11, [sp, #28]
	mov	x20, x9
	mov	x27, x25
	b	.LBB27_3
.LBB27_16:
	mov	x23, xzr
	stur	w21, [x29, #-12]
	stur	x9, [x29, #-24]
	str	x20, [sp, #32]
	b	.LBB27_19
.LBB27_17:
	ldr	x9, [x19, #120]
	lsr	x11, x26, #6
	lsl	w10, w26, #2
	and	x11, x11, #0x3e0
	lsr	x12, x26, #14
	and	x10, x10, #0x3e0
	bfxil	x11, x28, #11, #5
	bfxil	x10, x28, #3, #5
	add	x8, x9, x8, lsl #10
	and	x9, x12, #0x3e0
	lsr	x12, x26, #22
	bfxil	x9, x28, #19, #5
	and	x12, x12, #0x3e0
	lsr	x13, x26, #30
	ldrb	w11, [x8, x11]
	bfxil	x12, x28, #27, #5
	and	x13, x13, #0x3e0
	lsr	x14, x26, #38
	ldrb	w10, [x8, x10]
	bfxil	x13, x28, #35, #5
	and	x14, x14, #0x3e0
	lsr	x15, x26, #46
	ldrb	w9, [x8, x9]
	bfxil	x14, x28, #43, #5
	and	x15, x15, #0x3e0
	lsr	x16, x26, #54
	bfxil	x15, x28, #51, #5
	ldrb	w12, [x8, x12]
	and	x16, x16, #0x3e0
	lsl	w11, w11, #6
	ldrb	w13, [x8, x13]
	bfxil	x16, x28, #59, #5
	orr	w10, w11, w10, lsl #2
	ldrb	w11, [x8, x14]
	orr	w9, w10, w9, lsl #10
	ldrb	w10, [x8, x15]
	orr	w9, w9, w12, lsl #14
	ldrb	w8, [x8, x16]
	orr	w9, w9, w13, lsl #18
	ldr	w12, [x24]
	orr	w9, w9, w11, lsl #22
	orr	w9, w9, w10, lsl #26
	orr	w9, w9, w12
	orr	w8, w9, w8, lsl #30
	str	w8, [x24]
	ldr	x8, [x25, x23]
	add	x8, x8, #1
	str	x8, [x25, x23]
.LBB27_18:
	ldur	x8, [x29, #-8]
	mov	x28, x20
	ldr	x20, [sp, #32]
	mov	x10, x21
	ldur	x9, [x29, #-24]
	add	x23, x23, #8
	add	x24, x24, #4
	cmp	x8, x23
	b.eq	.LBB27_2
.LBB27_19:
	mov	x20, x28
	ldr	x28, [x9, x23]
	ldr	x26, [x10, x23]
	mov	x0, x19
	ldur	w1, [x29, #-12]
	mov	w2, w23
	mov	x21, x10
	bl	is_full_refresh_area
	ldr	x8, [x25, x23]
	tbz	w0, #0, .LBB27_22
	and	x9, x8, #0xff
	cmp	x9, #255
	b.ne	.LBB27_22
	mov	x8, xzr
	str	xzr, [x25, x23]
.LBB27_22:
	ldrb	w9, [x19, #56]
	and	w8, w8, #0xff
	cmp	w8, w9
	b.lo	.LBB27_17
	str	wzr, [x24]
	b	.LBB27_18
.LBB27_24:
	ldp	x20, x19, [sp, #144]
	ldp	x22, x21, [sp, #128]
	ldp	x24, x23, [sp, #112]
	ldp	x26, x25, [sp, #96]
	ldp	x28, x27, [sp, #80]
	ldp	x29, x30, [sp, #64]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #160
	ret
.Lfunc_end27:
	.size	direct_mode_data_change_full2, .Lfunc_end27-direct_mode_data_change_full2

	.p2align	2
	.type	direct_mode_data_change_full,@function
direct_mode_data_change_full:
	sub	sp, sp, #128
	str	x30, [x18], #8
	adrp	x8, global_ebc
	stp	x20, x19, [sp, #112]
	mov	x19, x3
	ldr	x9, [x3, #160]
	stp	x26, x25, [sp, #64]
	ldr	x8, [x8, :lo12:global_ebc]
	stp	x24, x23, [sp, #80]
	stp	x29, x30, [sp, #32]
	add	x29, sp, #32
	stp	x28, x27, [sp, #48]
	ldp	w3, w10, [x8, #116]
	ldr	w11, [x8, #196]
	stp	x22, x21, [sp, #96]
	cmp	w10, #0
	lsr	w8, w3, #3
	cinc	w12, w10, lt
	cmp	w10, #0
	cinc	w13, w10, lt
	asr	w12, w12, #1
	cmp	w4, #2
	asr	w13, w13, #1
	csel	w14, wzr, wzr, ne
	csel	w13, w10, w13, ne
	cmp	w4, #3
	mul	w15, w12, w8
	csel	w20, w12, w14, eq
	lsr	w16, w3, #2
	mvn	w14, w20
	sbfiz	x12, x15, #3, #32
	add	w14, w10, w14
	add	x15, x1, x12
	add	x17, x2, x12
	add	x12, x9, x12
	csel	w13, w10, w13, eq
	mul	w10, w20, w16
	csel	x26, x12, x9, eq
	mul	w9, w14, w16
	csel	x23, x17, x2, eq
	csel	x24, x15, x1, eq
	sxtw	x10, w10
	cmp	w11, #0
	csel	x9, x10, x9, eq
	cneg	w10, w16, ne
	cmp	w20, w13
	b.ge	.LBB28_13
	cmp	w8, #1
	sxtw	x10, w10
	csinc	w8, w8, wzr, hi
	add	x28, x0, x9
	lsl	x22, x8, #3
	stur	w3, [x29, #-12]
	str	w13, [sp, #16]
	str	x10, [sp, #8]
	b	.LBB28_4
.LBB28_2:
	add	x26, x26, x21
	add	x24, x24, x21
	add	x23, x23, x21
	ldur	w3, [x29, #-12]
	ldr	w13, [sp, #16]
	ldr	x10, [sp, #8]
	ldur	x28, [x29, #-8]
.LBB28_3:
	add	w20, w20, #1
	add	x28, x28, x10
	cmp	w20, w13
	b.eq	.LBB28_13
.LBB28_4:
	cmp	w3, #8
	b.lo	.LBB28_3
	mov	x21, xzr
	stur	x28, [x29, #-8]
	b	.LBB28_8
.LBB28_6:
	ldr	x9, [x19, #120]
	lsl	w10, w27, #2
	lsr	x11, x27, #6
	and	x10, x10, #0x3e0
	and	x11, x11, #0x3e0
	bfxil	x10, x25, #3, #5
	add	x8, x9, x8, lsl #10
	lsr	x9, x27, #14
	bfxil	x11, x25, #11, #5
	and	x9, x9, #0x3e0
	lsr	x12, x27, #22
	bfxil	x9, x25, #19, #5
	and	x12, x12, #0x3e0
	lsr	x13, x27, #30
	bfxil	x12, x25, #27, #5
	and	x13, x13, #0x3e0
	lsr	x14, x27, #38
	ldrb	w10, [x8, x10]
	ldrb	w11, [x8, x11]
	bfxil	x13, x25, #35, #5
	and	x14, x14, #0x3e0
	lsr	x15, x27, #46
	ldrb	w9, [x8, x9]
	bfxil	x14, x25, #43, #5
	and	x15, x15, #0x3e0
	lsr	x16, x27, #54
	ldrb	w12, [x8, x12]
	bfxil	x15, x25, #51, #5
	and	x16, x16, #0x3e0
	ldrb	w13, [x8, x13]
	bfxil	x16, x25, #59, #5
	orr	w10, w10, w11, lsl #2
	ldrb	w11, [x8, x14]
	orr	w9, w10, w9, lsl #4
	ldrb	w10, [x8, x15]
	orr	w9, w9, w12, lsl #6
	ldrb	w8, [x8, x16]
	orr	w9, w9, w13, lsl #8
	orr	w9, w9, w11, lsl #10
	orr	w9, w9, w10, lsl #12
	orr	w8, w9, w8, lsl #14
	strh	w8, [x28]
	ldr	x8, [x26, x21]
	add	x8, x8, #1
	str	x8, [x26, x21]
.LBB28_7:
	add	x21, x21, #8
	add	x28, x28, #2
	cmp	x22, x21
	b.eq	.LBB28_2
.LBB28_8:
	ldr	x25, [x24, x21]
	mov	x0, x19
	ldr	x27, [x23, x21]
	mov	w1, w20
	mov	w2, w21
	bl	is_full_refresh_area
	ldr	x8, [x26, x21]
	tbz	w0, #0, .LBB28_11
	and	x9, x8, #0xff
	cmp	x9, #255
	b.ne	.LBB28_11
	mov	x8, xzr
	str	xzr, [x26, x21]
.LBB28_11:
	ldrb	w9, [x19, #56]
	and	w8, w8, #0xff
	cmp	w8, w9
	b.lo	.LBB28_6
	strh	wzr, [x28]
	b	.LBB28_7
.LBB28_13:
	ldp	x20, x19, [sp, #112]
	ldp	x22, x21, [sp, #96]
	ldp	x24, x23, [sp, #80]
	ldp	x26, x25, [sp, #64]
	ldp	x28, x27, [sp, #48]
	ldp	x29, x30, [sp, #32]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #128
	ret
.Lfunc_end28:
	.size	direct_mode_data_change_full, .Lfunc_end28-direct_mode_data_change_full

	.p2align	2
	.type	direct_mode_data_change2,@function
direct_mode_data_change2:
	sub	sp, sp, #160
	str	x30, [x18], #8
	stp	x29, x30, [sp, #64]
	add	x29, sp, #64
	stp	x28, x27, [sp, #80]
	adrp	x9, global_ebc
	stp	x26, x25, [sp, #96]
	mov	x12, #1024
	stp	x24, x23, [sp, #112]
	mov	x13, #1538
	stp	x22, x21, [sp, #128]
	movk	x12, #3080, lsl #16
	stp	x20, x19, [sp, #144]
	movk	x13, #3594, lsl #16
	str	x0, [sp, #32]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	movk	x12, #5136, lsl #32
	movk	x13, #5650, lsl #32
	mov	x19, x2
	mov	x20, x1
	movk	x12, #7192, lsl #48
	stur	x8, [x29, #-8]
	movk	x13, #7706, lsl #48
	ldr	x10, [x9, :lo12:global_ebc]
	cmp	w4, #3
	ldrb	w9, [x3, #56]
	ldr	w11, [x3, #72]
	stp	x13, x12, [x29, #-24]
	ldp	w23, w14, [x10, #116]
	ldr	x8, [x3, #120]
	lsr	w10, w23, #3
	b.eq	.LBB29_3
	cmp	w4, #2
	b.ne	.LBB29_4
	cmp	w14, #0
	mov	w25, wzr
	cinc	w12, w14, lt
	asr	w14, w12, #1
	cmp	w25, w14
	b.lt	.LBB29_5
	b	.LBB29_15
.LBB29_3:
	cmp	w14, #0
	cinc	w12, w14, lt
	asr	w25, w12, #1
	mul	w12, w25, w10
	sbfiz	x12, x12, #3, #32
	add	x20, x20, x12
	add	x19, x19, x12
	cmp	w25, w14
	b.lt	.LBB29_5
	b	.LBB29_15
.LBB29_4:
	mov	w25, wzr
	cmp	w25, w14
	b.ge	.LBB29_15
.LBB29_5:
	sub	w9, w9, w11
	lsr	w11, w23, #2
	cmp	w10, #1
	lsl	w9, w9, #10
	csinc	w10, w10, wzr, hi
	mul	w27, w25, w11
	add	x22, x8, w9, sxtw
	lsl	w8, w11, #1
	lsl	x21, x10, #3
	str	w14, [sp, #28]
	str	x10, [sp, #16]
	str	w8, [sp, #12]
	b	.LBB29_8
.LBB29_6:
	ldr	w14, [sp, #28]
	ldr	w8, [sp, #12]
.LBB29_7:
	add	w25, w25, #2
	add	w27, w27, w8
	cmp	w25, w14
	b.ge	.LBB29_15
.LBB29_8:
	cmp	w23, #8
	b.lo	.LBB29_7
	ldr	x8, [sp, #32]
	ldr	x24, [sp, #16]
	add	x28, x8, w27, sxtw
	mov	x26, x28
.LBB29_10:
	ldr	x2, [x20], #8
	ldr	x1, [x19], #8
	sub	x3, x29, #16
	mov	x0, x22
	bl	ebc_get_8pix_wf_full
	subs	x24, x24, #1
	str	w0, [x26], #4
	b.ne	.LBB29_10
	cmp	w23, #8
	b.lo	.LBB29_6
	mov	x24, xzr
.LBB29_13:
	ldr	x2, [x20, x24]
	sub	x3, x29, #24
	ldr	x1, [x19, x24]
	mov	x0, x22
	bl	ebc_get_8pix_wf_full
	ldr	w8, [x28]
	add	x24, x24, #8
	cmp	x21, x24
	orr	w8, w8, w0
	str	w8, [x28], #4
	b.ne	.LBB29_13
	add	x20, x20, x24
	add	x19, x19, x24
	b	.LBB29_6
.LBB29_15:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB29_17
	ldp	x20, x19, [sp, #144]
	ldp	x22, x21, [sp, #128]
	ldp	x24, x23, [sp, #112]
	ldp	x26, x25, [sp, #96]
	ldp	x28, x27, [sp, #80]
	ldp	x29, x30, [sp, #64]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #160
	ret
.LBB29_17:
	bl	__stack_chk_fail
.Lfunc_end29:
	.size	direct_mode_data_change2, .Lfunc_end29-direct_mode_data_change2

	.p2align	2
	.type	get_one_auto_image2,@function
get_one_auto_image2:
	ldr	x9, [x0]
	ldr	x8, [x1]
	ldrb	w10, [x3, #56]
	eor	x11, x8, x9
	tst	x11, #0xff
	b.eq	.LBB30_16
	ldrb	w12, [x2]
	lsl	w13, w8, #2
	ldr	x14, [x3, #120]
	and	x13, x13, #0x3e0
	bfxil	x13, x9, #3, #5
	mov	x15, x8
	bfxil	x15, x9, #0, #8
	add	x14, x14, x12, lsl #10
	ldrb	w13, [x14, x13]
	add	w14, w12, #1
	cmp	w10, w14, uxtb
	csinc	w12, wzr, w12, eq
	csel	x8, x15, x8, eq
	lsl	w0, w13, w4
	strb	w12, [x2]
	tst	x11, #0xff00
	b.eq	.LBB30_3
.LBB30_2:
	ldrb	w12, [x2, #1]
	lsr	x13, x8, #6
	ldr	x14, [x3, #120]
	and	x13, x13, #0x3e0
	bfxil	x13, x9, #11, #5
	lsr	x15, x9, #8
	add	w16, w12, #1
	add	x14, x14, x12, lsl #10
	cmp	w10, w16, uxtb
	csinc	w12, wzr, w12, eq
	ldrb	w13, [x14, x13]
	add	w14, w4, #4
	strb	w12, [x2, #1]
	lsl	w13, w13, w14
	mov	x14, x8
	bfi	x14, x15, #8, #8
	orr	w0, w13, w0
	csel	x8, x14, x8, eq
.LBB30_3:
	tst	x11, #0xff0000
	b.eq	.LBB30_5
	ldrb	w12, [x2, #2]
	lsr	x13, x8, #14
	ldr	x14, [x3, #120]
	and	x13, x13, #0x3e0
	bfxil	x13, x9, #19, #5
	lsr	x15, x9, #16
	add	w16, w12, #1
	add	x14, x14, x12, lsl #10
	cmp	w10, w16, uxtb
	csinc	w12, wzr, w12, eq
	ldrb	w13, [x14, x13]
	add	w14, w4, #8
	strb	w12, [x2, #2]
	lsl	w13, w13, w14
	mov	x14, x8
	bfi	x14, x15, #16, #8
	orr	w0, w13, w0
	csel	x8, x14, x8, eq
.LBB30_5:
	tst	x11, #0xff000000
	b.eq	.LBB30_7
	ldrb	w12, [x2, #3]
	lsr	x13, x8, #22
	ldr	x14, [x3, #120]
	and	x13, x13, #0x3e0
	bfxil	x13, x9, #27, #5
	lsr	x15, x9, #24
	add	w16, w12, #1
	add	x14, x14, x12, lsl #10
	cmp	w10, w16, uxtb
	csinc	w12, wzr, w12, eq
	ldrb	w13, [x14, x13]
	add	w14, w4, #12
	strb	w12, [x2, #3]
	lsl	w13, w13, w14
	mov	x14, x8
	bfi	x14, x15, #24, #8
	orr	w0, w13, w0
	csel	x8, x14, x8, eq
.LBB30_7:
	tst	x11, #0xff00000000
	b.eq	.LBB30_9
	ldrb	w12, [x2, #4]
	lsr	x13, x8, #30
	ldr	x14, [x3, #120]
	and	x13, x13, #0x3e0
	bfxil	x13, x9, #35, #5
	lsr	x15, x9, #32
	add	w16, w12, #1
	add	x14, x14, x12, lsl #10
	cmp	w10, w16, uxtb
	csinc	w12, wzr, w12, eq
	ldrb	w13, [x14, x13]
	add	w14, w4, #16
	strb	w12, [x2, #4]
	lsl	w13, w13, w14
	mov	x14, x8
	bfi	x14, x15, #32, #8
	orr	w0, w13, w0
	csel	x8, x14, x8, eq
.LBB30_9:
	tst	x11, #0xff0000000000
	b.eq	.LBB30_11
	ldrb	w12, [x2, #5]
	lsr	x13, x8, #38
	ldr	x14, [x3, #120]
	and	x13, x13, #0x3e0
	bfxil	x13, x9, #43, #5
	lsr	x15, x9, #40
	add	w16, w12, #1
	add	x14, x14, x12, lsl #10
	cmp	w10, w16, uxtb
	csinc	w12, wzr, w12, eq
	ldrb	w13, [x14, x13]
	add	w14, w4, #20
	strb	w12, [x2, #5]
	lsl	w13, w13, w14
	mov	x14, x8
	bfi	x14, x15, #40, #8
	orr	w0, w13, w0
	csel	x8, x14, x8, eq
.LBB30_11:
	tst	x11, #0xff000000000000
	b.eq	.LBB30_13
	ldrb	w12, [x2, #6]
	lsr	x13, x8, #46
	ldr	x14, [x3, #120]
	and	x13, x13, #0x3e0
	bfxil	x13, x9, #51, #5
	lsr	x15, x9, #48
	add	w16, w12, #1
	add	x14, x14, x12, lsl #10
	cmp	w10, w16, uxtb
	csinc	w12, wzr, w12, eq
	ldrb	w13, [x14, x13]
	add	w14, w4, #24
	strb	w12, [x2, #6]
	lsl	w13, w13, w14
	mov	x14, x8
	bfi	x14, x15, #48, #8
	orr	w0, w13, w0
	csel	x8, x14, x8, eq
.LBB30_13:
	lsr	x11, x11, #56
	cbz	x11, .LBB30_15
	ldrb	w11, [x2, #7]
	lsr	x12, x8, #54
	ldr	x13, [x3, #120]
	and	x12, x12, #0x3e0
	bfxil	x12, x9, #59, #5
	bfxil	x9, x8, #0, #56
	add	w14, w11, #1
	add	x13, x13, x11, lsl #10
	cmp	w10, w14, uxtb
	csinc	w11, wzr, w11, eq
	csel	x8, x9, x8, eq
	ldrb	w12, [x13, x12]
	add	w13, w4, #28
	strb	w11, [x2, #7]
	lsl	w10, w12, w13
	orr	w0, w10, w0
.LBB30_15:
	str	x8, [x1]
	ret
.LBB30_16:
	mov	w0, wzr
	tst	x11, #0xff00
	b.ne	.LBB30_2
	b	.LBB30_3
.Lfunc_end30:
	.size	get_one_auto_image2, .Lfunc_end30-get_one_auto_image2

	.p2align	2
	.type	ebc_get_8pix_wf_part,@function
ebc_get_8pix_wf_part:
	sub	w8, w4, #2
	and	x9, x1, #0xf8f8f8f8f8f8f8f8
	cmp	w8, #10
	csel	x8, x9, x1, lo
	eor	x10, x8, x2
	cbz	x10, .LBB31_15
	tst	x10, #0xff
	b.eq	.LBB31_16
	ldrb	w9, [x3]
	mov	w11, #3
	lsl	w9, w11, w9
	tst	x10, #0xff00
	b.eq	.LBB31_4
.LBB31_3:
	ldrb	w11, [x3, #1]
	mov	w12, #3
	lsl	w11, w12, w11
	orr	w9, w11, w9
.LBB31_4:
	tst	x10, #0xff0000
	b.eq	.LBB31_6
	ldrb	w11, [x3, #2]
	mov	w12, #3
	lsl	w11, w12, w11
	orr	w9, w11, w9
.LBB31_6:
	tst	x10, #0xff000000
	b.eq	.LBB31_8
	ldrb	w11, [x3, #3]
	mov	w12, #3
	lsl	w11, w12, w11
	orr	w9, w11, w9
.LBB31_8:
	tst	x10, #0xff00000000
	b.eq	.LBB31_10
	ldrb	w11, [x3, #4]
	mov	w12, #3
	lsl	w11, w12, w11
	orr	w9, w11, w9
.LBB31_10:
	tst	x10, #0xff0000000000
	b.eq	.LBB31_12
	ldrb	w11, [x3, #5]
	mov	w12, #3
	lsl	w11, w12, w11
	orr	w9, w11, w9
.LBB31_12:
	tst	x10, #0xff000000000000
	b.eq	.LBB31_14
	ldrb	w11, [x3, #6]
	mov	w12, #3
	lsl	w11, w12, w11
	orr	w9, w11, w9
.LBB31_14:
	lsl	w11, w8, #2
	lsr	x12, x8, #6
	and	x13, x11, #0x3e0
	lsr	x15, x8, #14
	bfxil	x13, x2, #3, #5
	and	x12, x12, #0x3e0
	and	x15, x15, #0x3e0
	bfxil	x12, x2, #11, #5
	bfxil	x15, x2, #19, #5
	ldrb	w14, [x3]
	ldrb	w13, [x0, x13]
	lsr	x10, x10, #56
	ldrb	w12, [x0, x12]
	lsr	x17, x8, #22
	ldrb	w15, [x0, x15]
	cmp	x10, #0
	ldrb	w16, [x3, #1]
	ldrb	w10, [x3, #2]
	lsl	w13, w13, w14
	and	x14, x17, #0x3e0
	lsr	x17, x8, #30
	bfxil	x14, x2, #27, #5
	lsl	w12, w12, w16
	and	x16, x17, #0x3e0
	lsl	w10, w15, w10
	lsr	x15, x8, #38
	orr	w12, w12, w13
	bfxil	x16, x2, #35, #5
	ldrb	w13, [x0, x14]
	and	x15, x15, #0x3e0
	lsr	x17, x8, #46
	orr	w10, w12, w10
	ldrb	w12, [x3, #3]
	bfxil	x15, x2, #43, #5
	and	x17, x17, #0x3e0
	lsr	x8, x8, #54
	bfxil	x17, x2, #51, #5
	and	x8, x8, #0x3e0
	ldrb	w14, [x0, x16]
	bfxil	x8, x2, #59, #5
	ldrb	w16, [x3, #4]
	ldrb	w15, [x0, x15]
	lsl	w12, w13, w12
	ldrb	w13, [x3, #5]
	orr	w10, w10, w12
	ldrb	w12, [x0, x17]
	lsl	w14, w14, w16
	ldrb	w11, [x3, #7]
	mov	w16, #3
	ldrb	w8, [x0, x8]
	orr	w10, w10, w14
	ldrb	w17, [x3, #6]
	lsl	w13, w15, w13
	lsl	w14, w16, w11
	orr	w10, w10, w13
	csel	w14, wzr, w14, eq
	lsl	w12, w12, w17
	lsl	w8, w8, w11
	orr	w10, w10, w12
	orr	w9, w9, w14
	orr	w8, w10, w8
	and	w0, w8, w9
	ret
.LBB31_15:
	mov	w0, wzr
	ret
.LBB31_16:
	mov	w9, wzr
	tst	x10, #0xff00
	b.ne	.LBB31_3
	b	.LBB31_4
.Lfunc_end31:
	.size	ebc_get_8pix_wf_part, .Lfunc_end31-ebc_get_8pix_wf_part

	.p2align	2
	.type	is_full_refresh_area,@function
is_full_refresh_area:
	ldp	w9, w11, [x0, #80]
	ldr	w14, [x0, #668]
	cmp	w9, #0
	sub	w14, w14, #1
	cinc	w8, w9, lt
	cmp	w11, #0
	cinc	w10, w11, lt
	sub	w8, w1, w8, asr #1
	sub	w10, w2, w10, asr #1
	cmp	w8, #0
	cneg	w13, w8, mi
	cmp	w10, #0
	cneg	w12, w10, mi
	cmp	w14, #4
	b.hi	.LBB32_5
	adrp	x15, .LJTI32_0
	add	x15, x15, :lo12:.LJTI32_0
	adr	x16, .LBB32_2
	ldrb	w17, [x15, x14]
	add	x16, x16, x17, lsl #2
	br	x16
.LBB32_2:
	ldr	w9, [x0, #676]
	mul	w8, w8, w8
	madd	w8, w10, w10, w8
	mul	w9, w9, w9
	cmp	w8, w9
	cset	w0, le
	ret
.LBB32_3:
	ldr	w9, [x0, #676]
	add	w13, w8, #7
	ldr	w11, [x0, #664]
	sub	w9, w9, w11
	add	w12, w9, #7
	cmp	w9, #0
	csel	w9, w12, w9, lt
	add	w12, w11, #7
	cmp	w11, #0
	csel	w12, w12, w11, lt
	cmp	w8, #0
	csel	w11, w13, w8, lt
	add	w13, w10, #7
	cmp	w10, #0
	asr	w11, w11, #3
	csel	w10, w13, w10, lt
	cmp	w8, #8
	asr	w10, w10, #3
	b.lt	.LBB32_10
	mov	w8, #10000
	mul	w8, w10, w8
	sdiv	w8, w8, w11
	b	.LBB32_12
.LBB32_5:
	ldr	w8, [x0, #676]
	cmp	w8, w2
	cset	w0, gt
	ret
.LBB32_6:
	ldr	w8, [x0, #676]
	add	w10, w12, w13
	mul	w9, w8, w9
	sdiv	w9, w9, w11
	cmp	w10, w9
	cset	w9, le
	cmp	w10, w8
	b	.LBB32_8
.LBB32_7:
	ldr	w8, [x0, #676]
	mul	w9, w8, w9
	sdiv	w9, w9, w11
	cmp	w13, w9
	cset	w9, le
	cmp	w12, w8
.LBB32_8:
	cset	w8, le
	and	w0, w9, w8
	ret
.LBB32_9:
	ldr	w8, [x0, #676]
	cmp	w13, w8
	cset	w9, le
	cmp	w12, w8
	cset	w8, le
	orr	w0, w9, w8
	ret
.LBB32_10:
	cmn	w8, #8
	b.gt	.LBB32_13
	mov	w8, #10000
	mov	w13, #31416
	mul	w8, w10, w8
	sdiv	w8, w8, w11
	add	w8, w8, w13
.LBB32_12:
	asr	w12, w12, #3
	asr	w9, w9, #3
	mul	w11, w11, w11
	mul	w8, w8, w12
	mov	w12, #35757
	movk	w12, #26843, lsl #16
	smull	x8, w8, w12
	lsr	x12, x8, #63
	asr	x8, x8, #43
	add	w8, w8, w12
	add	w8, w8, w9
	madd	w9, w10, w10, w11
	mul	w8, w8, w8
	cmp	w9, w8
	cset	w0, le
	ret
.LBB32_13:
	mov	w0, #1
	ret
.Lfunc_end32:
	.size	is_full_refresh_area, .Lfunc_end32-is_full_refresh_area
	.section	.rodata,"a",@progbits
.LJTI32_0:
	.byte	(.LBB32_2-.LBB32_2)>>2
	.byte	(.LBB32_6-.LBB32_2)>>2
	.byte	(.LBB32_7-.LBB32_2)>>2
	.byte	(.LBB32_9-.LBB32_2)>>2
	.byte	(.LBB32_3-.LBB32_2)>>2

	.text
	.p2align	2
	.type	ebc_get_8pix_wf_full,@function
ebc_get_8pix_wf_full:
	sub	sp, sp, #128
	str	x30, [x18], #8
	stp	x28, x27, [sp, #48]
	lsr	x6, x1, #8
	stp	x26, x25, [sp, #64]
	lsr	x4, x1, #16
	stp	x22, x21, [sp, #96]
	lsr	x17, x1, #24
	stp	x20, x19, [sp, #112]
	lsr	x14, x1, #32
	lsr	x27, x1, #40
	lsr	x25, x1, #48
	lsr	x19, x1, #56
	lsr	x7, x2, #8
	lsr	x5, x2, #16
	lsr	x16, x2, #24
	lsr	x15, x2, #32
	lsr	x13, x2, #40
	lsr	x21, x2, #48
	lsr	x20, x2, #56
	tst	x2, #0x404040404040404
	stp	x29, x30, [sp, #32]
	stp	x24, x23, [sp, #80]
	b.eq	.LBB33_5
	str	x20, [sp]
	ubfx	x20, x1, #48, #8
	mov	w22, #244
	mov	w23, #224
	cmp	w20, #240
	str	x19, [sp, #24]
	csel	x19, x23, x22, eq
	cmp	w20, #240
	ubfx	x20, x2, #48, #8
	ubfx	x24, x1, #40, #8
	ccmp	w20, w22, #0, eq
	mov	x12, x13
	mov	x13, x21
	ubfx	x21, x2, #40, #8
	ubfx	x26, x2, #32, #8
	ubfx	x28, x2, #24, #8
	csel	x25, x23, x25, eq
	cmp	w24, #240
	csel	x24, x23, x22, eq
	ccmp	w21, w22, #0, eq
	ubfx	w29, w1, #16, #8
	ubfx	w30, w2, #16, #8
	str	x25, [sp, #16]
	ubfx	x25, x1, #32, #8
	csel	x27, x23, x27, eq
	cmp	w25, #240
	csel	x25, x23, x22, eq
	ccmp	w26, w22, #0, eq
	ubfx	w8, w1, #8, #8
	ubfx	w10, w2, #8, #8
	str	x27, [sp, #8]
	ubfx	x27, x1, #24, #8
	csel	x14, x23, x14, eq
	cmp	w27, #240
	csel	x27, x23, x22, eq
	ccmp	w28, w22, #0, eq
	and	w9, w1, #0xff
	csel	x17, x23, x17, eq
	cmp	w29, #240
	csel	x29, x23, x22, eq
	ccmp	w30, w22, #0, eq
	csel	x4, x23, x4, eq
	cmp	w8, #240
	csel	x8, x23, x22, eq
	ccmp	w10, w22, #0, eq
	csel	x6, x23, x6, eq
	cmp	w9, #240
	and	w9, w2, #0xff
	csel	x11, x23, x22, eq
	ccmp	w9, w22, #0, eq
	csel	x1, x23, x1, eq
	cmp	w9, #244
	csel	x2, x11, x2, eq
	cmp	w10, #244
	csel	x7, x8, x7, eq
	cmp	w30, #244
	csel	x5, x29, x5, eq
	cmp	w28, #244
	csel	x16, x27, x16, eq
	cmp	w26, #244
	csel	x15, x25, x15, eq
	cmp	w21, #244
	mov	x21, x13
	mov	x13, x12
	csel	x13, x24, x12, eq
	cmp	w20, #244
	ldr	x20, [sp]
	csel	x21, x19, x21, eq
	cmp	x20, #244
	b.ne	.LBB33_3
	ldr	x19, [sp, #24]
	mov	w8, #224
	mov	w9, #244
	cmp	x19, #240
	csel	x19, x8, x19, eq
	csel	x20, x8, x9, eq
	b	.LBB33_4
.LBB33_3:
	ldr	x19, [sp, #24]
.LBB33_4:
	ldp	x27, x25, [sp, #8]
.LBB33_5:
	lsl	w8, w1, #2
	lsl	w9, w6, #2
	and	x8, x8, #0x3e0
	and	x9, x9, #0x3e0
	bfxil	x8, x2, #3, #5
	bfxil	x9, x7, #3, #5
	lsl	w1, w4, #2
	ldrb	w10, [x3]
	and	x1, x1, #0x3e0
	lsl	w17, w17, #2
	ldrb	w8, [x0, x8]
	bfxil	x1, x5, #3, #5
	ldrb	w9, [x0, x9]
	and	x17, x17, #0x3e0
	ldrb	w11, [x3, #1]
	lsl	w14, w14, #2
	bfxil	x17, x16, #3, #5
	lsl	w12, w27, #2
	lsl	w8, w8, w10
	and	x10, x14, #0x3e0
	and	x12, x12, #0x3e0
	ldrb	w1, [x0, x1]
	bfxil	x10, x15, #3, #5
	bfxil	x12, x13, #3, #5
	lsl	w13, w25, #2
	ldrb	w2, [x3, #2]
	lsl	w9, w9, w11
	ldrb	w11, [x0, x17]
	and	x13, x13, #0x3e0
	lsl	w16, w19, #2
	ldrb	w14, [x3, #3]
	bfxil	x13, x21, #3, #5
	and	x16, x16, #0x3e0
	ldrb	w10, [x0, x10]
	orr	x16, x16, x20, lsr #3
	orr	w8, w9, w8
	lsl	w9, w1, w2
	ldrb	w15, [x3, #4]
	ldrb	w12, [x0, x12]
	orr	w8, w8, w9
	ldrb	w17, [x3, #5]
	lsl	w11, w11, w14
	ldrb	w9, [x0, x13]
	orr	w8, w8, w11
	ldrb	w13, [x3, #6]
	lsl	w10, w10, w15
	ldrb	w11, [x0, x16]
	orr	w8, w8, w10
	ldrb	w14, [x3, #7]
	lsl	w10, w12, w17
	ldp	x20, x19, [sp, #112]
	orr	w8, w8, w10
	lsl	w9, w9, w13
	ldp	x22, x21, [sp, #96]
	orr	w8, w8, w9
	lsl	w9, w11, w14
	ldp	x24, x23, [sp, #80]
	orr	w0, w8, w9
	ldp	x26, x25, [sp, #64]
	ldp	x28, x27, [sp, #48]
	ldp	x29, x30, [sp, #32]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #128
	ret
.Lfunc_end33:
	.size	ebc_get_8pix_wf_full, .Lfunc_end33-ebc_get_8pix_wf_full

	.p2align	2
	.type	ebc_lut_update,@function
ebc_lut_update:
	sub	sp, sp, #80
	str	x30, [x18], #8
	stp	x29, x30, [sp, #16]
	mov	w9, #25
	str	x23, [sp, #32]
	add	x29, sp, #16
	stp	x22, x21, [sp, #48]
	mov	w21, w1
	stp	x20, x19, [sp, #64]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	mov	w1, #1
	mov	w20, w2
	mov	x19, x0
	str	x8, [sp, #8]
	str	w9, [sp, #4]
	bl	ebc_power_set
	ldr	w22, [x19, #932]
	tbnz	w22, #31, .LBB34_6
	ldr	w8, [x19, #852]
	str	w22, [sp, #4]
	cmp	w8, #1
	b.ge	.LBB34_33
	mov	w2, w22
.LBB34_3:
	cmp	w2, #51
	b.lo	.LBB34_16
	ldr	w8, [x19, #852]
	tbz	w8, #31, .LBB34_41
.LBB34_5:
	mov	w8, #50
	str	w8, [sp, #4]
	b	.LBB34_16
.LBB34_6:
	ldr	x0, [x19, #16]
	cbz	x0, .LBB34_8
	ldr	x8, [x0, #56]
	add	x1, sp, #4
	blr	x8
	mov	w23, w0
	b	.LBB34_9
.LBB34_8:
	ldr	x0, [x19, #32]
	add	x1, sp, #4
	bl	thermal_zone_get_temp
	ldrsw	x8, [sp, #4]
	mov	w9, #19923
	movk	w9, #4194, lsl #16
	mov	w23, w0
	mul	x8, x8, x9
	lsr	x9, x8, #32
	lsr	x8, x8, #63
	add	w8, w8, w9, asr #6
	str	w8, [sp, #4]
.LBB34_9:
	ldr	w1, [sp, #4]
	cmp	w21, #1
	b.ne	.LBB34_14
	mov	w0, w1
	bl	ebc_overlay_temp_fix
	mov	w22, w0
	cbnz	w23, .LBB34_15
.LBB34_11:
	ldr	w2, [sp, #4]
	tbz	w2, #31, .LBB34_3
.LBB34_12:
	ldr	w8, [x19, #852]
	tbz	w8, #31, .LBB34_43
.LBB34_13:
	str	wzr, [sp, #4]
	b	.LBB34_16
.LBB34_14:
	mov	w0, w21
	bl	ebc_normal_temp_fix
	mov	w22, w0
	cbz	w23, .LBB34_11
.LBB34_15:
	mov	w8, #25
	ldr	w9, [x19, #852]
	str	w8, [sp, #4]
	tbz	w9, #31, .LBB34_42
.LBB34_16:
	ldr	w8, [x19, #852]
	cmp	w22, #50
	b.hi	.LBB34_19
	cmp	w8, #1
	b.ge	.LBB34_34
.LBB34_18:
	str	w22, [sp, #4]
	cmp	w21, #23
	b.ls	.LBB34_21
	b	.LBB34_36
.LBB34_19:
	cmp	w8, #1
	b.ge	.LBB34_35
	cmp	w21, #23
	b.hi	.LBB34_36
.LBB34_21:
	adrp	x9, .LJTI34_0
	mov	w8, w21
	add	x9, x9, :lo12:.LJTI34_0
	mov	w1, wzr
	adr	x10, .LBB34_22
	ldrb	w11, [x9, x8]
	add	x10, x10, x11, lsl #2
	br	x10
.LBB34_22:
	mov	w1, #1
	b	.LBB34_37
.LBB34_23:
	mov	w1, #5
	b	.LBB34_37
.LBB34_24:
	mov	w1, #6
	b	.LBB34_37
.LBB34_25:
	mov	w1, #8
	b	.LBB34_37
.LBB34_26:
	mov	w1, #7
	b	.LBB34_37
.LBB34_27:
	mov	w1, #2
	b	.LBB34_37
.LBB34_28:
	mov	w1, #10
	b	.LBB34_37
.LBB34_29:
	mov	w1, #4
	b	.LBB34_37
.LBB34_30:
	ldr	w8, [x19, #840]
	mov	w9, #3
	cmp	w8, #0
	mov	w8, #14
	csinc	w20, w20, wzr, eq
	csel	w1, w9, w8, eq
	b	.LBB34_37
.LBB34_31:
	ldr	w8, [x19, #840]
	mov	w9, #4
	cmp	w8, #0
	mov	w8, #13
	csel	w1, w9, w8, eq
	b	.LBB34_37
.LBB34_32:
	ldrb	w8, [x19, #937]
	mov	w9, #3
	cmp	w8, #0
	mov	w8, #15
	csel	w1, w9, w8, eq
	b	.LBB34_37
.LBB34_33:
	adrp	x1, .L.str.103
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.103
	mov	w2, w22
	bl	_dev_info
	ldr	w2, [sp, #4]
	tbz	w2, #31, .LBB34_3
	b	.LBB34_12
.LBB34_34:
	adrp	x1, .L.str.107
	ldr	x0, [x19, #328]
	ldr	w3, [sp, #4]
	add	x1, x1, :lo12:.L.str.107
	mov	w2, w22
	bl	_dev_info
	b	.LBB34_18
.LBB34_35:
	adrp	x1, .L.str.108
	ldr	x0, [x19, #328]
	ldr	w2, [sp, #4]
	add	x1, x1, :lo12:.L.str.108
	mov	w3, w22
	bl	_dev_info
	cmp	w21, #23
	b.ls	.LBB34_21
.LBB34_36:
	mov	w1, #3
.LBB34_37:
	ldr	w2, [sp, #4]
	add	x0, x19, #336
	ldrb	w4, [x19, #936]
	mov	w3, #32
	mov	w5, w20
	bl	epd_lut_get
	cbnz	w0, .LBB34_40
.LBB34_38:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldr	x9, [sp, #8]
	cmp	x8, x9
	b.ne	.LBB34_44
	ldp	x20, x19, [sp, #64]
	ldp	x22, x21, [sp, #48]
	ldp	x29, x30, [sp, #16]
	ldr	x23, [sp, #32]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #80
	ret
.LBB34_40:
	adrp	x1, .L.str.109
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.109
	bl	_dev_err
	b	.LBB34_38
.LBB34_41:
	adrp	x1, .L.str.105
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.105
	bl	_dev_info
	b	.LBB34_5
.LBB34_42:
	adrp	x1, .L.str.106
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.106
	mov	w2, w23
	bl	_dev_info
	b	.LBB34_16
.LBB34_43:
	adrp	x1, .L.str.104
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.104
	bl	_dev_info
	b	.LBB34_13
.LBB34_44:
	bl	__stack_chk_fail
.Lfunc_end34:
	.size	ebc_lut_update, .Lfunc_end34-ebc_lut_update
	.section	.rodata,"a",@progbits
.LJTI34_0:
	.byte	(.LBB34_36-.LBB34_22)>>2
	.byte	(.LBB34_28-.LBB34_22)>>2
	.byte	(.LBB34_36-.LBB34_22)>>2
	.byte	(.LBB34_29-.LBB34_22)>>2
	.byte	(.LBB34_23-.LBB34_22)>>2
	.byte	(.LBB34_24-.LBB34_22)>>2
	.byte	(.LBB34_25-.LBB34_22)>>2
	.byte	(.LBB34_30-.LBB34_22)>>2
	.byte	(.LBB34_31-.LBB34_22)>>2
	.byte	(.LBB34_23-.LBB34_22)>>2
	.byte	(.LBB34_24-.LBB34_22)>>2
	.byte	(.LBB34_25-.LBB34_22)>>2
	.byte	(.LBB34_26-.LBB34_22)>>2
	.byte	(.LBB34_26-.LBB34_22)>>2
	.byte	(.LBB34_22-.LBB34_22)>>2
	.byte	(.LBB34_27-.LBB34_22)>>2
	.byte	(.LBB34_22-.LBB34_22)>>2
	.byte	(.LBB34_37-.LBB34_22)>>2
	.byte	(.LBB34_36-.LBB34_22)>>2
	.byte	(.LBB34_36-.LBB34_22)>>2
	.byte	(.LBB34_36-.LBB34_22)>>2
	.byte	(.LBB34_32-.LBB34_22)>>2
	.byte	(.LBB34_22-.LBB34_22)>>2
	.byte	(.LBB34_27-.LBB34_22)>>2

	.text
	.p2align	2
	.type	ebc_frame_start,@function
ebc_frame_start:
	sub	sp, sp, #144
	str	x30, [x18], #8
	stp	x29, x30, [sp, #48]
	add	x29, sp, #48
	stp	x28, x27, [sp, #64]
	stp	x26, x25, [sp, #80]
	stp	x24, x23, [sp, #96]
	stp	x22, x21, [sp, #112]
	add	x21, x0, #40
	stp	x20, x19, [sp, #128]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	mov	x19, x0
	add	x20, x0, #232
	stur	x8, [x29, #-8]
	ldr	w8, [x0, #472]
	sub	w8, w8, #3
	cmp	w8, #1
	b.hi	.LBB35_6
	ldr	w3, [x19, #952]
	tbnz	w3, #31, .LBB35_10
	ldr	w8, [x19, #312]
	cmp	w3, w8
	b.ge	.LBB35_10
	ldr	w2, [x19, #948]
	tbnz	w2, #31, .LBB35_10
	ldr	w8, [x19, #316]
	cmp	w2, w8
	b.ge	.LBB35_10
	ldp	x9, x10, [x19, #368]
	madd	w8, w8, w3, w2
	sxtw	x8, w8
	b	.LBB35_71
.LBB35_6:
	ldr	w3, [x19, #952]
	tbnz	w3, #31, .LBB35_10
	ldr	w8, [x19, #312]
	cmp	w3, w8
	b.ge	.LBB35_10
	ldr	w2, [x19, #948]
	tbnz	w2, #31, .LBB35_10
	ldr	w8, [x19, #316]
	cmp	w2, w8
	b.lt	.LBB35_70
.LBB35_10:
	ldr	w8, [x19, #472]
	sub	w8, w8, #1
	cmp	w8, #4
	b.hi	.LBB35_14
	adrp	x9, .LJTI35_0
	add	x9, x9, :lo12:.LJTI35_0
	adr	x10, .LBB35_12
	ldrb	w11, [x9, x8]
	add	x10, x10, x11, lsl #2
	br	x10
.LBB35_12:
	ldp	x11, x10, [x19, #440]
	mov	x3, x20
	mov	w4, #1
	ldrb	w8, [x19, #288]
	ldr	w9, [x19, #204]
	ldr	x0, [x19, #408]
	str	w8, [x19, #304]
	ldr	x1, [x10, #16]
	ldr	x2, [x11, #16]
	cbz	w9, .LBB35_33
	bl	direct_mode_data_change_part2
	b	.LBB35_34
.LBB35_14:
	ldr	w3, [x19, #952]
	ldr	x8, [x19, #448]
	tbnz	w3, #31, .LBB35_18
	ldr	w9, [x19, #312]
	cmp	w3, w9
	b.ge	.LBB35_18
	ldr	w2, [x19, #948]
	tbnz	w2, #31, .LBB35_18
	ldr	w9, [x19, #316]
	cmp	w2, w9
	b.lt	.LBB35_74
.LBB35_18:
	ldr	w9, [x8, #40]
	cmp	w9, #21
	b.ne	.LBB35_31
	ldr	w8, [x19, #316]
	mov	w1, #255
	ldr	w9, [x19, #312]
	ldr	x0, [x19, #392]
	mul	w8, w9, w8
	sxtw	x2, w8
	bl	memset
	ldr	w8, [x19, #916]
	str	wzr, [x19, #912]
	ldr	w9, [x19, #904]
	mov	x3, x20
	ldr	w10, [x19, #316]
	mov	w4, #1
	cmp	w8, #5
	ldr	x0, [x19, #408]
	csel	w8, wzr, w8, hi
	cmp	w9, w10
	ccmp	w9, #1, #8, le
	str	w8, [x19, #900]
	ldp	x11, x8, [x19, #440]
	csel	w9, w10, w9, lt
	ldr	w10, [x19, #204]
	str	w9, [x19, #896]
	str	w9, [x19, #908]
	ldr	x1, [x8, #16]
	ldr	x2, [x11, #16]
	cbz	w10, .LBB35_47
	bl	direct_mode_data_change_full2
	b	.LBB35_48
.LBB35_21:
	ldp	x1, x2, [x19, #368]
	mov	x4, x20
	mov	w5, #1
	ldr	w8, [x19, #204]
	ldr	x0, [x19, #408]
	ldr	x3, [x19, #392]
	cbz	w8, .LBB35_36
	bl	get_auto_image2
	ldr	w8, [x19, #292]
	cbz	w8, .LBB35_37
.LBB35_23:
	ldp	x1, x2, [x19, #368]
	mov	x4, x20
	mov	w5, #1
	ldr	w8, [x19, #204]
	ldr	x0, [x19, #416]
	ldr	x3, [x19, #392]
	cbz	w8, .LBB35_45
	bl	get_auto_image2
	b	.LBB35_67
.LBB35_25:
	ldr	x0, [x19, #408]
	mov	w1, wzr
	ldrsw	x2, [x19, #264]
	bl	memset
	ldp	x4, x0, [x19, #400]
	mov	x5, x20
	ldp	x1, x2, [x19, #368]
	ldr	w8, [x19, #204]
	ldr	x3, [x19, #392]
	cbz	w8, .LBB35_39
	bl	get_overlay_image_area2
	ldr	w8, [x19, #292]
	cbz	w8, .LBB35_40
.LBB35_27:
	mov	x0, x21
	mov	x1, x20
	str	wzr, [x19, #112]
	bl	flip
	ldr	x0, [x19, #416]
	mov	w1, wzr
	ldrsw	x2, [x19, #264]
	bl	memset
	ldp	x1, x2, [x19, #368]
	mov	x5, x20
	ldp	x3, x4, [x19, #392]
	ldr	w8, [x19, #204]
	ldr	x0, [x19, #416]
	cbz	w8, .LBB35_46
	bl	get_overlay_image_area2
	b	.LBB35_68
.LBB35_29:
	ldp	x11, x10, [x19, #440]
	mov	x3, x20
	mov	w4, #1
	ldrb	w8, [x19, #288]
	ldr	w9, [x19, #204]
	ldr	x0, [x19, #408]
	str	w8, [x19, #304]
	ldr	x1, [x10, #16]
	ldr	x2, [x11, #16]
	cbz	w9, .LBB35_42
	bl	direct_mode_data_change_part2
	b	.LBB35_43
.LBB35_31:
	ldrb	w9, [x19, #288]
	ldr	x11, [x19, #440]
	ldr	w10, [x19, #204]
	str	w9, [x19, #304]
	ldr	x0, [x19, #408]
	ldr	x23, [x8, #16]
	ldr	x22, [x11, #16]
	cbz	w10, .LBB35_50
	mov	x1, x23
	mov	x2, x22
	mov	x3, x20
	mov	w4, #1
	bl	direct_mode_data_change2
	b	.LBB35_58
.LBB35_33:
	bl	direct_mode_data_change_part
.LBB35_34:
	ldr	w8, [x19, #304]
	mov	x3, x20
	ldp	x11, x10, [x19, #440]
	mov	w4, #1
	sub	w8, w8, #1
	ldr	w9, [x19, #204]
	ldr	x0, [x19, #416]
	str	w8, [x19, #304]
	ldr	x1, [x10, #16]
	ldr	x2, [x11, #16]
	cbz	w9, .LBB35_44
	bl	direct_mode_data_change_part2
	b	.LBB35_67
.LBB35_36:
	bl	get_auto_image
	ldr	w8, [x19, #292]
	cbnz	w8, .LBB35_23
.LBB35_37:
	ldr	w8, [x19, #852]
	cmp	w8, #1
	b.lt	.LBB35_41
	adrp	x1, .L.str.111
	adrp	x2, .L__func__.ebc_frame_start
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.111
	b	.LBB35_73
.LBB35_39:
	bl	get_overlay_image_area
	ldr	w8, [x19, #292]
	cbnz	w8, .LBB35_27
.LBB35_40:
	ldr	w8, [x19, #852]
	cmp	w8, #1
	b.ge	.LBB35_72
.LBB35_41:
	str	wzr, [x19, #284]
	b	.LBB35_68
.LBB35_42:
	bl	direct_mode_data_change_part
.LBB35_43:
	ldr	w8, [x19, #304]
	ldp	x1, x0, [x19, #408]
	sub	w8, w8, #1
	ldrsw	x2, [x19, #264]
	str	w8, [x19, #304]
	bl	memcpy
	b	.LBB35_67
.LBB35_44:
	bl	direct_mode_data_change_part
	b	.LBB35_67
.LBB35_45:
	bl	get_auto_image
	b	.LBB35_67
.LBB35_46:
	bl	get_overlay_image_area
	b	.LBB35_68
.LBB35_47:
	bl	direct_mode_data_change_full
.LBB35_48:
	ldr	w8, [x19, #896]
	mov	x3, x20
	ldr	w9, [x19, #908]
	mov	w4, #1
	ldr	w10, [x19, #204]
	ldr	x0, [x19, #416]
	add	w8, w9, w8
	ldp	x11, x9, [x19, #440]
	str	w8, [x19, #908]
	ldr	x2, [x11, #16]
	ldr	x1, [x9, #16]
	cbz	w10, .LBB35_56
	bl	direct_mode_data_change_full2
	b	.LBB35_67
.LBB35_50:
	adrp	x8, global_ebc
	mov	x11, #512
	movk	x11, #1540, lsl #16
	ldr	x24, [x19, #352]
	movk	x11, #2568, lsl #32
	stp	x21, x20, [sp, #8]
	ldr	x8, [x8, :lo12:global_ebc]
	movk	x11, #3596, lsl #48
	ldp	w25, w10, [x8, #116]
	ldr	w9, [x8, #196]
	stur	x11, [x29, #-16]
	lsr	w8, w25, #2
	cmp	w9, #0
	cneg	w8, w8, ne
	stur	w10, [x29, #-20]
	subs	w10, w10, #1
	b.lt	.LBB35_57
	cmp	w9, #0
	sxtw	x28, w8
	csel	w9, wzr, w10, eq
	lsr	w10, w25, #3
	cmp	w10, #1
	mov	w27, wzr
	mul	w9, w9, w25
	lsr	w8, w9, #2
	csinc	w9, w10, wzr, hi
	add	x21, x0, x8
	lsl	x20, x9, #1
	b	.LBB35_53
.LBB35_52:
	ldur	w8, [x29, #-20]
	add	w27, w27, #1
	add	x21, x21, x28
	cmp	w27, w8
	b.eq	.LBB35_57
.LBB35_53:
	cmp	w25, #8
	b.lo	.LBB35_52
	mov	x26, xzr
.LBB35_55:
	ldr	x2, [x23], #8
	ldr	x1, [x22], #8
	sub	x3, x29, #16
	mov	x0, x24
	bl	ebc_get_8pix_wf_full
	strh	w0, [x21, x26]
	add	x26, x26, #2
	cmp	x20, x26
	b.ne	.LBB35_55
	b	.LBB35_52
.LBB35_56:
	bl	direct_mode_data_change_full
	b	.LBB35_67
.LBB35_57:
	ldp	x21, x20, [sp, #8]
.LBB35_58:
	ldr	w8, [x19, #304]
	ldp	x11, x10, [x19, #440]
	sub	w8, w8, #1
	ldr	w9, [x19, #204]
	ldr	x0, [x19, #416]
	str	w8, [x19, #304]
	ldr	x23, [x10, #16]
	ldr	x22, [x11, #16]
	cbz	w9, .LBB35_60
	mov	x1, x23
	mov	x2, x22
	mov	x3, x20
	mov	w4, #1
	bl	direct_mode_data_change2
	b	.LBB35_67
.LBB35_60:
	adrp	x9, global_ebc
	mov	x14, #512
	movk	x14, #1540, lsl #16
	ldrb	w11, [x19, #288]
	movk	x14, #2568, lsl #32
	stp	x21, x20, [sp, #8]
	ldr	x9, [x9, :lo12:global_ebc]
	movk	x14, #3596, lsl #48
	ldp	w25, w13, [x9, #116]
	ldr	w12, [x9, #196]
	stur	x14, [x29, #-16]
	ldr	x9, [x19, #352]
	lsr	w10, w25, #2
	cmp	w12, #0
	cneg	w10, w10, ne
	stur	w13, [x29, #-20]
	subs	w13, w13, #1
	b.lt	.LBB35_66
	sub	w8, w11, w8
	cmp	w12, #0
	lsl	w8, w8, #10
	csel	w11, wzr, w13, eq
	mov	w27, wzr
	sxtw	x28, w10
	add	x24, x9, w8, sxtw
	lsr	w8, w25, #3
	mul	w9, w11, w25
	cmp	w8, #1
	csinc	w8, w8, wzr, hi
	lsr	w9, w9, #2
	lsl	x20, x8, #1
	add	x21, x0, x9
	b	.LBB35_63
.LBB35_62:
	ldur	w8, [x29, #-20]
	add	w27, w27, #1
	add	x21, x21, x28
	cmp	w27, w8
	b.eq	.LBB35_66
.LBB35_63:
	cmp	w25, #8
	b.lo	.LBB35_62
	mov	x26, xzr
.LBB35_65:
	ldr	x2, [x23], #8
	ldr	x1, [x22], #8
	sub	x3, x29, #16
	mov	x0, x24
	bl	ebc_get_8pix_wf_full
	strh	w0, [x21, x26]
	add	x26, x26, #2
	cmp	x20, x26
	b.ne	.LBB35_65
	b	.LBB35_62
.LBB35_66:
	ldp	x21, x20, [sp, #8]
.LBB35_67:
	mov	x0, x21
	mov	x1, x20
	str	wzr, [x19, #112]
	bl	flip
.LBB35_68:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB35_75
	ldp	x20, x19, [sp, #128]
	ldp	x22, x21, [sp, #112]
	ldp	x24, x23, [sp, #96]
	ldp	x26, x25, [sp, #80]
	ldp	x28, x27, [sp, #64]
	ldp	x29, x30, [sp, #48]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #144
	ret
.LBB35_70:
	ldp	x10, x9, [x19, #440]
	madd	w8, w8, w3, w2
	sxtw	x8, w8
	ldr	x10, [x10, #16]
	ldr	x9, [x9, #16]
.LBB35_71:
	strb	wzr, [x19, #956]
	adrp	x1, .L.str.112
	ldrb	w5, [x9, x8]
	add	x1, x1, :lo12:.L.str.112
	ldrb	w4, [x10, x8]
	ldr	x0, [x19, #328]
	bl	_dev_info
	b	.LBB35_10
.LBB35_72:
	adrp	x1, .L.str.110
	adrp	x2, .L__func__.ebc_frame_start
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.110
.LBB35_73:
	add	x2, x2, :lo12:.L__func__.ebc_frame_start
	bl	_dev_info
	b	.LBB35_41
.LBB35_74:
	madd	w9, w9, w3, w2
	ldr	x10, [x19, #440]
	ldr	x8, [x8, #16]
	adrp	x1, .L.str.112
	sxtw	x9, w9
	ldr	x0, [x19, #328]
	ldr	x10, [x10, #16]
	add	x1, x1, :lo12:.L.str.112
	ldrb	w5, [x8, x9]
	ldrb	w4, [x10, x9]
	bl	_dev_info
	ldr	x8, [x19, #448]
	b	.LBB35_18
.LBB35_75:
	bl	__stack_chk_fail
.Lfunc_end35:
	.size	ebc_frame_start, .Lfunc_end35-ebc_frame_start
	.section	.rodata,"a",@progbits
.LJTI35_0:
	.byte	(.LBB35_12-.LBB35_12)>>2
	.byte	(.LBB35_14-.LBB35_12)>>2
	.byte	(.LBB35_21-.LBB35_12)>>2
	.byte	(.LBB35_25-.LBB35_12)>>2
	.byte	(.LBB35_29-.LBB35_12)>>2

	.text
	.p2align	2
	.type	ebc_power_set,@function
ebc_power_set:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!
	ldr	w8, [x0, #424]
	str	x21, [sp, #16]
	stp	x20, x19, [sp, #32]
	mov	x29, sp
	cmp	w8, w1
	b.eq	.LBB36_19
	mov	x19, x0
	ldr	w8, [x0, #848]
	cmp	w1, #1
	b.ne	.LBB36_11
	cbz	w8, .LBB36_4
	mov	w0, #1
	bl	ebc_notify
.LBB36_4:
	ldr	w8, [x19, #672]
	cbnz	w8, .LBB36_6
	mov	w8, #1
	add	x0, x19, #480
	str	w8, [x19, #672]
	bl	__pm_stay_awake
.LBB36_6:
	mov	w8, #1
	ldr	x0, [x19, #16]
	add	x20, x19, #40
	str	w8, [x19, #424]
	cbz	x0, .LBB36_20
	ldr	x8, [x0, #32]
	mov	w1, #1
	blr	x8
	mov	w21, wzr
	ldrb	w8, [x19, #224]
	cbz	w8, .LBB36_9
.LBB36_8:
	mov	w0, #50
	bl	msleep
.LBB36_9:
	ldr	x0, [x19, #8]
	mov	x1, x20
	ldr	x8, [x0, #72]
	blr	x8
	ldr	w8, [x19, #852]
	cmp	w8, #1
	b.lt	.LBB36_19
	ldr	x0, [x19, #328]
	adrp	x1, .L.str.114
	add	x1, x1, :lo12:.L.str.114
	mov	w2, w21
	b	.LBB36_23
.LBB36_11:
	cbz	w8, .LBB36_13
	mov	x0, xzr
	bl	ebc_notify
.LBB36_13:
	ldr	x0, [x19, #8]
	str	wzr, [x19, #424]
	ldr	x8, [x0, #80]
	blr	x8
	ldrb	w8, [x19, #224]
	cbz	w8, .LBB36_15
	mov	w0, #10
	bl	msleep
.LBB36_15:
	ldr	x0, [x19, #16]
	cbz	x0, .LBB36_21
	ldr	x8, [x0, #32]
	mov	w1, wzr
	blr	x8
	mov	w20, wzr
	ldr	w8, [x19, #672]
	cbz	w8, .LBB36_18
.LBB36_17:
	add	x0, x19, #480
	str	wzr, [x19, #672]
	bl	__pm_relax
.LBB36_18:
	ldr	w8, [x19, #852]
	cmp	w8, #1
	b.ge	.LBB36_22
.LBB36_19:
	ldp	x20, x19, [sp, #32]
	ldr	x21, [sp, #16]
	ldp	x29, x30, [sp], #48
	ldr	x30, [x18, #-8]!
	ret
.LBB36_20:
	ldr	x0, [x19, #24]
	bl	regulator_enable
	mov	w21, w0
	ldrb	w8, [x19, #224]
	cbnz	w8, .LBB36_8
	b	.LBB36_9
.LBB36_21:
	ldr	x0, [x19, #24]
	bl	regulator_disable
	mov	w20, w0
	ldr	w8, [x19, #672]
	cbnz	w8, .LBB36_17
	b	.LBB36_18
.LBB36_22:
	adrp	x1, .L.str.115
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.115
	mov	w2, w20
.LBB36_23:
	bl	_dev_info
	b	.LBB36_19
.Lfunc_end36:
	.size	ebc_power_set, .Lfunc_end36-ebc_power_set

	.p2align	2
	.type	ebc_frame_control_timeout,@function
ebc_frame_control_timeout:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	adrp	x8, global_ebc
	mov	w10, #1
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	w9, [x8, #852]
	str	w10, [x8, #812]
	cmp	w9, #1
	b.ge	.LBB37_2
.LBB37_1:
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.LBB37_2:
	adrp	x1, .L.str.117
	ldr	x0, [x8, #328]
	add	x1, x1, :lo12:.L.str.117
	bl	_dev_info
	b	.LBB37_1
.Lfunc_end37:
	.size	ebc_frame_control_timeout, .Lfunc_end37-ebc_frame_control_timeout

	.p2align	2
	.type	ebc_overlay_enable_timeout,@function
ebc_overlay_enable_timeout:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	adrp	x8, global_ebc
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	w9, [x8, #852]
	str	wzr, [x8, #808]
	cmp	w9, #1
	b.ge	.LBB38_2
.LBB38_1:
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.LBB38_2:
	adrp	x1, .L.str.118
	ldr	x0, [x8, #328]
	add	x1, x1, :lo12:.L.str.118
	bl	_dev_info
	b	.LBB38_1
.Lfunc_end38:
	.size	ebc_overlay_enable_timeout, .Lfunc_end38-ebc_overlay_enable_timeout

	.p2align	2
	.type	ebc_frame_timeout,@function
ebc_frame_timeout:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	mov	x29, sp
	bl	frame_done_callback
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end39:
	.size	ebc_frame_timeout, .Lfunc_end39-ebc_frame_timeout

	.p2align	2
	.type	ebc_io_ctl,@function
ebc_io_ctl:
	sub	sp, sp, #160
	str	x30, [x18], #8
	stp	x29, x30, [sp, #96]
	add	x29, sp, #96
	str	x23, [sp, #112]
	stp	x22, x21, [sp, #128]
	stp	x20, x19, [sp, #144]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	stur	x8, [x29, #-8]
	adrp	x8, global_ebc
	ldr	x22, [x0, #200]
	str	wzr, [sp, #80]
	stp	xzr, xzr, [sp, #64]
	ldr	x21, [x8, :lo12:global_ebc]
	sub	w8, w1, #7, lsl #12
	cmp	w8, #33
	stp	xzr, xzr, [sp, #48]
	stp	xzr, xzr, [sp, #32]
	stp	xzr, xzr, [sp, #16]
	b.hi	.LBB40_88
	adrp	x9, .LJTI40_0
	mov	x0, xzr
	add	x9, x9, :lo12:.LJTI40_0
	adr	x10, .LBB40_2
	ldrh	w11, [x9, x8, lsl #1]
	add	x10, x10, x11, lsl #2
	br	x10
.LBB40_2:
	mov	x19, x2
	cbz	x2, .LBB40_24
	cmp	w8, #33
	b.hi	.LBB40_88
	adrp	x9, .LJTI40_1
	mov	x0, xzr
	add	x9, x9, :lo12:.LJTI40_1
	adr	x10, .LBB40_5
	ldrh	w11, [x9, x8, lsl #1]
	add	x10, x10, x11, lsl #2
	br	x10
.LBB40_5:
	add	x0, sp, #16
	mov	x1, x19
	mov	w2, #68
	add	x20, sp, #16
	bl	_copy_from_user
	cbnz	w0, .LBB40_80
	add	x0, x20, #48
	bl	ebc_empty_buf_get
	cbz	x0, .LBB40_81
	ldr	x23, [x0, #8]
	mov	x20, x0
	bl	ebc_phy_buf_base_get
	mov	w10, #26215
	sub	x8, x23, x0
	ldp	w11, w9, [x21, #116]
	movk	w10, #26214, lsl #16
	str	wzr, [sp, #60]
	str	w8, [sp, #16]
	add	x1, sp, #16
	smull	x10, w8, w10
	ldr	w8, [x21, #192]
	stp	w9, w11, [sp, #24]
	mov	x0, x19
	lsr	x9, x10, #63
	asr	x10, x10, #53
	add	w9, w10, w9
	str	w8, [sp, #32]
	mov	w2, #68
	ldr	w8, [x22, w9, sxtw #2]
	str	w8, [sp, #80]
	bl	_copy_to_user
	cbz	w0, .LBB40_89
	mov	x0, x20
	bl	ebc_buf_release
	mov	x0, #-14
	b	.LBB40_91
.LBB40_9:
	mov	w8, #1
	ldr	w9, [x21, #852]
	str	w8, [x21, #808]
	tbnz	w9, #31, .LBB40_89
	adrp	x1, .L.str.134
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.134
	bl	_dev_info
	b	.LBB40_89
.LBB40_11:
	ldr	w8, [x21, #852]
	str	wzr, [x21, #808]
	tbnz	w8, #31, .LBB40_89
	adrp	x1, .L.str.135
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.135
	bl	_dev_info
	b	.LBB40_89
.LBB40_13:
	mov	w8, #1
	ldr	w9, [x21, #852]
	str	w8, [x21, #816]
	tbnz	w9, #31, .LBB40_89
	adrp	x1, .L.str.132
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.132
	bl	_dev_info
	b	.LBB40_89
.LBB40_15:
	ldr	w8, [x21, #852]
	str	wzr, [x21, #816]
	tbnz	w8, #31, .LBB40_89
	adrp	x1, .L.str.133
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.133
	bl	_dev_info
	b	.LBB40_89
.LBB40_17:
	bl	ebc_drop_one_dsp_buf
	cbnz	w0, .LBB40_80
	b	.LBB40_89
.LBB40_18:
	ldr	w8, [x21, #852]
	tbz	w8, #31, .LBB40_93
.LBB40_19:
	mov	w0, #2
	bl	ebc_notify
	mov	w8, #1
	mov	x0, xzr
	str	w8, [x21, #800]
	str	w8, [x21, #820]
	b	.LBB40_90
.LBB40_20:
	ldr	w8, [x21, #852]
	tbz	w8, #31, .LBB40_94
	ldr	w8, [x21, #800]
	cbz	w8, .LBB40_23
.LBB40_22:
	mov	w0, #3
	bl	ebc_notify
.LBB40_23:
	mov	x0, xzr
	str	wzr, [x21, #800]
	str	wzr, [x21, #820]
	b	.LBB40_90
.LBB40_24:
	adrp	x1, .L.str.131
	adrp	x2, .L__func__.ebc_io_ctl
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.131
	add	x2, x2, :lo12:.L__func__.ebc_io_ctl
	bl	_dev_err
	mov	x0, #-14
	b	.LBB40_91
.LBB40_25:
	add	x0, sp, #16
	mov	x1, x19
	mov	w2, #68
	bl	_copy_from_user
	cbnz	x0, .LBB40_80
	bl	ebc_phy_buf_base_get
	ldrsw	x8, [sp, #16]
	add	x0, x0, x8
	bl	ebc_find_buf_by_phy_addr
	cbz	x0, .LBB40_90
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #36]
	ldr	x10, [sp, #40]
	str	w8, [x0, #40]
	ldr	w8, [sp, #60]
	str	w9, [x0, #48]
	ldr	w9, [sp, #48]
	stur	x10, [x0, #52]
	stp	w9, w8, [x0, #60]
	bl	ebc_add_to_dsp_buf_list
	b	.LBB40_39
.LBB40_28:
	ldp	w8, w9, [x21, #116]
	ldr	w10, [x21, #192]
	add	x1, sp, #16
	mov	x0, x19
	mov	w2, #68
	str	wzr, [sp, #60]
	stp	w9, w8, [sp, #24]
	ldp	w11, w8, [x21, #132]
	str	w10, [sp, #32]
	stp	w11, w8, [sp, #52]
	bl	_copy_to_user
	cbz	x0, .LBB40_90
	adrp	x1, .L.str.136
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.136
	bl	_dev_err
	b	.LBB40_80
.LBB40_30:
	bl	ebc_empty_osd_buf_get
	cbz	x0, .LBB40_81
	ldr	x20, [x0, #8]
	bl	ebc_phy_buf_base_get
	mov	w10, #26215
	sub	x8, x20, x0
	ldp	w11, w9, [x21, #116]
	movk	w10, #26214, lsl #16
	str	wzr, [sp, #60]
	str	w8, [sp, #16]
	add	x1, sp, #16
	smull	x10, w8, w10
	ldr	w8, [x21, #192]
	stp	w9, w11, [sp, #24]
	mov	x0, x19
	lsr	x9, x10, #63
	asr	x10, x10, #53
	add	w9, w10, w9
	str	w8, [sp, #32]
	mov	w2, #68
	ldr	w8, [x22, w9, sxtw #2]
	str	w8, [sp, #80]
	bl	_copy_to_user
	b	.LBB40_90
.LBB40_32:
	add	x0, sp, #16
	mov	x1, x19
	mov	w2, #68
	bl	_copy_from_user
	cbnz	x0, .LBB40_80
	bl	ebc_osd_buf_clone
	cbz	x0, .LBB40_90
	ldr	w8, [sp, #20]
	mov	x19, x0
	ldr	w9, [sp, #36]
	ldr	x10, [sp, #40]
	ldr	w11, [sp, #48]
	str	w8, [x0, #40]
	str	w9, [x0, #48]
	stur	x10, [x0, #52]
	str	w11, [x0, #60]
	bl	ebc_add_to_osd_buf_list
	ldp	w8, w9, [x19, #48]
	orr	w8, w9, w8
	cbnz	w8, .LBB40_37
	ldr	w8, [x19, #56]
	ldr	w9, [x21, #316]
	cmp	w9, w8
	b.ne	.LBB40_37
	ldr	w8, [x19, #60]
	ldr	w9, [x21, #312]
	cmp	w9, w8
	b.eq	.LBB40_39
.LBB40_37:
	ldr	w8, [x21, #324]
	cbnz	w8, .LBB40_39
	mov	w8, #1
	str	w8, [x21, #324]
.LBB40_39:
	ldr	w8, [x21, #320]
	cbnz	w8, .LBB40_89
	adrp	x0, ebc_thread_wq
	mov	w8, #1
	add	x0, x0, :lo12:ebc_thread_wq
	mov	w1, #1
	str	w8, [x21, #320]
	bl	__wake_up_sync
	b	.LBB40_89
.LBB40_41:
	mov	w8, #-1
	add	x0, sp, #12
	mov	x1, x19
	mov	w2, #4
	str	w8, [sp, #12]
	bl	_copy_from_user
	cbnz	w0, .LBB40_80
	ldr	w2, [sp, #12]
	ldr	w8, [x21, #852]
	str	w2, [x21, #944]
	tbnz	w8, #31, .LBB40_89
	adrp	x1, .L.str.137
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.137
	bl	_dev_info
	b	.LBB40_89
.LBB40_44:
	add	x1, x21, #808
	b	.LBB40_85
.LBB40_45:
	add	x1, x21, #672
	b	.LBB40_85
.LBB40_46:
	ldr	w8, [x21, #924]
	str	wzr, [sp, #12]
	cmp	w8, #3576
	b.eq	.LBB40_48
	ldr	w8, [x21, #928]
	cmp	w8, #3576
	b.ne	.LBB40_89
.LBB40_48:
	add	x0, sp, #12
	mov	x1, x19
	mov	w2, #4
	bl	_copy_from_user
	cbnz	w0, .LBB40_80
	ldr	w8, [x21, #852]
	tbz	w8, #31, .LBB40_96
.LBB40_50:
	ldr	w8, [sp, #12]
	str	w8, [x21, #828]
	b	.LBB40_89
.LBB40_51:
	ldr	w8, [x21, #924]
	cmp	w8, #3576
	b.ne	.LBB40_82
.LBB40_52:
	mov	w8, #1
	b	.LBB40_84
.LBB40_53:
	add	x0, x21, #904
	mov	x1, x19
	mov	w2, #4
	bl	_copy_from_user
	cbnz	w0, .LBB40_80
	ldr	w8, [x21, #852]
	tbnz	w8, #31, .LBB40_89
	adrp	x1, .L.str.142
	ldr	x0, [x21, #328]
	ldr	w2, [x21, #904]
	add	x1, x1, :lo12:.L.str.142
	bl	_dev_info
	b	.LBB40_89
.LBB40_56:
	add	x0, x21, #916
	mov	x1, x19
	mov	w2, #4
	bl	_copy_from_user
	cbnz	w0, .LBB40_80
	ldr	w8, [x21, #852]
	tbnz	w8, #31, .LBB40_89
	adrp	x1, .L.str.143
	ldr	x0, [x21, #328]
	ldr	w2, [x21, #916]
	add	x1, x1, :lo12:.L.str.143
	bl	_dev_info
	b	.LBB40_89
.LBB40_59:
	mov	w8, #-1
	add	x0, sp, #12
	mov	x1, x19
	mov	w2, #4
	str	w8, [sp, #12]
	bl	_copy_from_user
	cbnz	w0, .LBB40_80
	ldr	w2, [sp, #12]
	ldr	w8, [x21, #852]
	str	w2, [x21, #932]
	tbnz	w8, #31, .LBB40_89
	adrp	x1, .L.str.144
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.144
	bl	_dev_info
	b	.LBB40_89
.LBB40_62:
	add	x0, sp, #12
	mov	x1, x19
	mov	w2, #4
	str	wzr, [sp, #12]
	bl	_copy_from_user
	cbnz	w0, .LBB40_80
	ldr	w8, [sp, #12]
	ldr	w10, [x21, #852]
	cmp	w8, #0
	cset	w9, ne
	strb	w9, [x21, #936]
	tbnz	w10, #31, .LBB40_89
	cmp	w8, #0
	adrp	x1, .L.str.145
	cset	w2, ne
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.145
	bl	_dev_info
	b	.LBB40_89
.LBB40_65:
	add	x0, sp, #12
	mov	x1, x19
	mov	w2, #4
	str	wzr, [sp, #12]
	bl	_copy_from_user
	cbnz	w0, .LBB40_80
	ldr	w2, [sp, #12]
	ldr	w8, [x21, #852]
	str	w2, [x21, #940]
	tbnz	w8, #31, .LBB40_89
	adrp	x1, .L.str.146
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.146
	bl	_dev_info
	b	.LBB40_89
.LBB40_68:
	add	x0, sp, #12
	mov	x1, x19
	mov	w2, #4
	str	wzr, [sp, #12]
	bl	_copy_from_user
	cbnz	w0, .LBB40_80
	ldr	w8, [sp, #12]
	ldr	w10, [x21, #852]
	cmp	w8, #0
	cset	w9, ne
	strb	w9, [x21, #937]
	tbnz	w10, #31, .LBB40_89
	cmp	w8, #0
	adrp	x1, .L.str.147
	cset	w2, ne
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.147
	bl	_dev_info
	b	.LBB40_89
.LBB40_71:
	add	x0, sp, #16
	mov	x1, x19
	mov	w2, #68
	bl	_copy_from_user
	cbnz	w0, .LBB40_80
	ldr	x8, [x21, #448]
	cbz	x8, .LBB40_81
	ldr	x20, [x8, #8]
	bl	ebc_phy_buf_base_get
	mov	w10, #26215
	sub	x8, x20, x0
	ldp	w11, w9, [x21, #116]
	movk	w10, #26214, lsl #16
	str	wzr, [sp, #60]
	str	w8, [sp, #16]
	add	x1, sp, #16
	smull	x10, w8, w10
	ldr	w8, [x21, #192]
	stp	w9, w11, [sp, #24]
	mov	x0, x19
	lsr	x9, x10, #63
	asr	x10, x10, #53
	add	w9, w10, w9
	str	w8, [sp, #32]
	mov	w2, #68
	ldr	w8, [x22, w9, sxtw #2]
	str	w8, [sp, #80]
	bl	_copy_to_user
	cbnz	w0, .LBB40_80
	b	.LBB40_89
.LBB40_74:
	bl	epd_lut_get_wf_bit
	cmp	w0, #32
	b	.LBB40_83
.LBB40_75:
	ldr	w8, [x21, #924]
	mov	w9, #1
	cmp	w8, #3576
	str	w9, [sp, #12]
	b.eq	.LBB40_77
	ldr	w8, [x21, #928]
	cmp	w8, #3576
	b.ne	.LBB40_89
.LBB40_77:
	add	x0, sp, #12
	mov	x1, x19
	mov	w2, #4
	bl	_copy_from_user
	cbnz	w0, .LBB40_80
	ldr	w8, [sp, #12]
	str	w8, [x21, #840]
	b	.LBB40_89
.LBB40_79:
	add	x0, sp, #12
	mov	x1, x19
	mov	w2, #4
	str	wzr, [sp, #12]
	bl	_copy_from_user
	cbz	w0, .LBB40_86
.LBB40_80:
	mov	x0, #-14
	b	.LBB40_91
.LBB40_81:
	mov	x0, #-1
	b	.LBB40_91
.LBB40_82:
	ldr	w8, [x21, #928]
	cmp	w8, #3576
.LBB40_83:
	cset	w8, eq
.LBB40_84:
	str	w8, [sp, #12]
	add	x1, sp, #12
.LBB40_85:
	mov	x0, x19
	mov	w2, #4
	bl	_copy_to_user
	b	.LBB40_90
.LBB40_86:
	ldr	w8, [x21, #852]
	tbz	w8, #31, .LBB40_95
.LBB40_87:
	ldr	w8, [sp, #12]
	mov	x0, xzr
	str	w8, [x21, #832]
	b	.LBB40_90
.LBB40_88:
	adrp	x1, .L.str.148
	adrp	x2, .L__func__.ebc_io_ctl
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.148
	add	x2, x2, :lo12:.L__func__.ebc_io_ctl
	bl	_dev_err
.LBB40_89:
	mov	x0, xzr
.LBB40_90:
	sxtw	x0, w0
.LBB40_91:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB40_97
	ldp	x20, x19, [sp, #144]
	ldp	x22, x21, [sp, #128]
	ldp	x29, x30, [sp, #96]
	ldr	x23, [sp, #112]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #160
	ret
.LBB40_93:
	adrp	x1, .L.str.138
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.138
	bl	_dev_info
	b	.LBB40_19
.LBB40_94:
	adrp	x1, .L.str.139
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.139
	bl	_dev_info
	ldr	w8, [x21, #800]
	cbnz	w8, .LBB40_22
	b	.LBB40_23
.LBB40_95:
	adrp	x1, .L.str.141
	ldr	x0, [x21, #328]
	ldr	w2, [sp, #12]
	add	x1, x1, :lo12:.L.str.141
	bl	_dev_info
	b	.LBB40_87
.LBB40_96:
	adrp	x1, .L.str.140
	ldr	x0, [x21, #328]
	ldr	w2, [sp, #12]
	add	x1, x1, :lo12:.L.str.140
	bl	_dev_info
	b	.LBB40_50
.LBB40_97:
	bl	__stack_chk_fail
.Lfunc_end40:
	.size	ebc_io_ctl, .Lfunc_end40-ebc_io_ctl
	.section	.rodata,"a",@progbits
	.p2align	1
.LJTI40_0:
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_9-.LBB40_2)>>2
	.hword	(.LBB40_11-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_90-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_13-.LBB40_2)>>2
	.hword	(.LBB40_15-.LBB40_2)>>2
	.hword	(.LBB40_90-.LBB40_2)>>2
	.hword	(.LBB40_90-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_17-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_18-.LBB40_2)>>2
	.hword	(.LBB40_20-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_88-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.hword	(.LBB40_2-.LBB40_2)>>2
	.p2align	1
.LJTI40_1:
	.hword	(.LBB40_5-.LBB40_5)>>2
	.hword	(.LBB40_25-.LBB40_5)>>2
	.hword	(.LBB40_28-.LBB40_5)>>2
	.hword	(.LBB40_90-.LBB40_5)>>2
	.hword	(.LBB40_9-.LBB40_5)>>2
	.hword	(.LBB40_11-.LBB40_5)>>2
	.hword	(.LBB40_30-.LBB40_5)>>2
	.hword	(.LBB40_32-.LBB40_5)>>2
	.hword	(.LBB40_90-.LBB40_5)>>2
	.hword	(.LBB40_41-.LBB40_5)>>2
	.hword	(.LBB40_90-.LBB40_5)>>2
	.hword	(.LBB40_44-.LBB40_5)>>2
	.hword	(.LBB40_13-.LBB40_5)>>2
	.hword	(.LBB40_15-.LBB40_5)>>2
	.hword	(.LBB40_90-.LBB40_5)>>2
	.hword	(.LBB40_90-.LBB40_5)>>2
	.hword	(.LBB40_52-.LBB40_5)>>2
	.hword	(.LBB40_17-.LBB40_5)>>2
	.hword	(.LBB40_45-.LBB40_5)>>2
	.hword	(.LBB40_18-.LBB40_5)>>2
	.hword	(.LBB40_20-.LBB40_5)>>2
	.hword	(.LBB40_46-.LBB40_5)>>2
	.hword	(.LBB40_88-.LBB40_5)>>2
	.hword	(.LBB40_51-.LBB40_5)>>2
	.hword	(.LBB40_53-.LBB40_5)>>2
	.hword	(.LBB40_56-.LBB40_5)>>2
	.hword	(.LBB40_59-.LBB40_5)>>2
	.hword	(.LBB40_62-.LBB40_5)>>2
	.hword	(.LBB40_65-.LBB40_5)>>2
	.hword	(.LBB40_68-.LBB40_5)>>2
	.hword	(.LBB40_71-.LBB40_5)>>2
	.hword	(.LBB40_74-.LBB40_5)>>2
	.hword	(.LBB40_75-.LBB40_5)>>2
	.hword	(.LBB40_79-.LBB40_5)>>2

	.text
	.p2align	2
	.type	ebc_mmap,@function
ebc_mmap:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!
	str	x21, [sp, #16]
	mov	x29, sp
	stp	x20, x19, [sp, #32]
	mov	x19, x1
	bl	ebc_phy_buf_base_get
	ldr	x8, [x19, #16]
	mov	x20, x0
	ldr	w21, [x8, #152]
	ldr	w8, [x19, #40]
	cmp	w8, w21
	b.eq	.LBB41_2
	ldr	x0, [x19, #48]
	bl	down_write
	str	w21, [x19, #40]
	ldr	x0, [x19, #48]
	bl	up_write
.LBB41_2:
	ldp	x4, x8, [x19, #24]
	mov	w10, #16384
	lsr	x2, x20, #12
	ldp	x1, x9, [x19]
	movk	w10, #1028, lsl #16
	mov	x0, x19
	orr	x8, x8, x10
	sub	x3, x9, x1
	str	x8, [x19, #32]
	bl	remap_pfn_range
	ldp	x20, x19, [sp, #32]
	mov	w8, #-11
	cmp	w0, #0
	ldr	x21, [sp, #16]
	csel	w0, wzr, w8, eq
	ldp	x29, x30, [sp], #48
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end41:
	.size	ebc_mmap, .Lfunc_end41-ebc_mmap

	.p2align	2
	.type	ebc_open,@function
ebc_open:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-64]!
	adrp	x9, kmalloc_caches+48
	adrp	x8, global_ebc
	stp	x20, x19, [sp, #48]
	mov	x19, x1
	mov	w1, #3520
	mov	w2, #20
	ldr	x0, [x9, :lo12:kmalloc_caches+48]
	stp	x22, x21, [sp, #32]
	ldr	x22, [x8, :lo12:global_ebc]
	str	x23, [sp, #16]
	mov	x29, sp
	bl	kmalloc_trace
	cbz	x0, .LBB42_7
	mov	x20, x0
	mov	x21, xzr
	add	x22, x22, #856
	mov	w23, #1
.LBB42_2:
	ldr	x0, [x22, x21, lsl #3]
	ldr	x8, [x0, #8]
	//APP
.Ltmp28:
	b	.Ltmp27
.Ltmp29:
	.section	.altinstructions,"a",@progbits
.Ltmp30:
	.word	.Ltmp28-.Ltmp30
.Ltmp31:
	.word	alt_cb_patch_nops-.Ltmp31
	.hword	32794
	.byte	.Ltmp29-.Ltmp28
	.byte	.Ltmp32-.Ltmp33
	.text

.Ltmp33:
.Ltmp32:

	//NO_APP
	add	x8, x8, #56
	//APP
	stadd	x23, [x8]

	//NO_APP
.LBB42_4:
	mov	w1, #524288
	bl	dma_buf_fd
	str	w0, [x20, x21, lsl #2]
	add	x21, x21, #1
	cmp	x21, #5
	b.ne	.LBB42_2
	b	.LBB42_6
.Ltmp27:
.LBB42_5:
	add	x8, x8, #56
	//APP
	// atomic64_add
	prfm	pstl1strm, [x8]
.Ltmp34:
	ldxr	x9, [x8]
	add	x9, x9, #1
	stxr	w10, x9, [x8]
	cbnz	w10, .Ltmp34
	//NO_APP
	b	.LBB42_4
.LBB42_6:
	mov	w0, wzr
	str	x20, [x19, #200]
	str	xzr, [x19, #104]
	b	.LBB42_8
.LBB42_7:
	mov	w0, #-12
.LBB42_8:
	ldp	x20, x19, [sp, #48]
	ldp	x22, x21, [sp, #32]
	ldr	x23, [sp, #16]
	ldp	x29, x30, [sp], #64
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end42:
	.size	ebc_open, .Lfunc_end42-ebc_open

	.p2align	2
	.type	ebc_release,@function
ebc_release:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	ldr	x0, [x1, #200]
	mov	x29, sp
	bl	kfree
	mov	w0, wzr
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end43:
	.size	ebc_release, .Lfunc_end43-ebc_release

	.p2align	2
	.type	_copy_to_user,@function
_copy_to_user:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	//APP
	mrs	x8, SP_EL0
	//NO_APP
	ldrb	w9, [x8, #70]
	mov	x29, sp
	tbnz	w9, #5, .LBB44_2
	ldr	x10, [x8]
	mov	x9, x0
	tbz	w10, #26, .LBB44_3
.LBB44_2:
	lsl	x9, x0, #8
	and	x9, x0, x9, asr #8
.LBB44_3:
	mov	x10, #549755813888
	sub	x10, x10, x2
	cmp	x10, x9
	b.lo	.LBB44_18
	//APP
.Ltmp36:
	b	.Ltmp35
.Ltmp37:
	.section	.altinstructions,"a",@progbits
.Ltmp38:
	.word	.Ltmp36-.Ltmp38
.Ltmp39:
	.word	alt_cb_patch_nops-.Ltmp39
	.hword	32769
	.byte	.Ltmp37-.Ltmp36
	.byte	.Ltmp40-.Ltmp41
	.text

.Ltmp41:
.Ltmp40:

	//NO_APP
	//APP
.Ltmp43:
	nop
.Ltmp44:
	.section	.altinstructions,"a",@progbits
.Ltmp45:
	.word	.Ltmp43-.Ltmp45
.Ltmp47:
	.word	.Ltmp46-.Ltmp47
	.hword	29
	.byte	.Ltmp44-.Ltmp43
	.byte	.Ltmp48-.Ltmp46
	.text

	.text	1
.Ltmp46:
	b	.Ltmp42
.Ltmp48:
.Ltmp49:
.org (.Ltmp49-(.Ltmp48-.Ltmp46))+(.Ltmp44-.Ltmp43), 0
.Ltmp50:
.org (.Ltmp50-(.Ltmp44-.Ltmp43))+(.Ltmp48-.Ltmp46), 0
	.text


	//NO_APP
.LBB44_6:
	//APP
.Ltmp51:
	mrs	x9, DAIF
.Ltmp52:
	.section	.altinstructions,"a",@progbits
.Ltmp53:
	.word	.Ltmp51-.Ltmp53
.Ltmp55:
	.word	.Ltmp54-.Ltmp55
	.hword	24
	.byte	.Ltmp52-.Ltmp51
	.byte	.Ltmp56-.Ltmp54
	.text

	.text	1
.Ltmp54:
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30

.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5384609


.Ltmp56:
.Ltmp57:
.org (.Ltmp57-(.Ltmp56-.Ltmp54))+(.Ltmp52-.Ltmp51), 0
.Ltmp58:
.org (.Ltmp58-(.Ltmp52-.Ltmp51))+(.Ltmp56-.Ltmp54), 0
	.text


	//NO_APP
	//APP
.Ltmp59:
	and	w10, w9, #0x80
.Ltmp60:
	.section	.altinstructions,"a",@progbits
.Ltmp61:
	.word	.Ltmp59-.Ltmp61
.Ltmp63:
	.word	.Ltmp62-.Ltmp63
	.hword	24
	.byte	.Ltmp60-.Ltmp59
	.byte	.Ltmp64-.Ltmp62
	.text

	.text	1
.Ltmp62:
	eor	w10, w9, #0xe0
.Ltmp64:
.Ltmp65:
.org (.Ltmp65-(.Ltmp64-.Ltmp62))+(.Ltmp60-.Ltmp59), 0
.Ltmp66:
.org (.Ltmp66-(.Ltmp60-.Ltmp59))+(.Ltmp64-.Ltmp62), 0
	.text


	//NO_APP
	cbnz	w10, .LBB44_10
	//APP
.Ltmp68:
	nop
	.section	__jump_table,"aw",@progbits
	.p2align	3
.Ltmp69:
	.word	.Ltmp68-.Ltmp69
.Ltmp70:
	.word	.Ltmp67-.Ltmp70
.Ltmp71:
	.xword	gic_nonsecure_priorities-.Ltmp71
	.text


	//NO_APP
	mov	w10, #96
.LBB44_9:
	//APP
.Ltmp72:
	msr	DAIFSet, #3	// arch_local_irq_disable
.Ltmp73:
	.section	.altinstructions,"a",@progbits
.Ltmp74:
	.word	.Ltmp72-.Ltmp74
.Ltmp76:
	.word	.Ltmp75-.Ltmp76
	.hword	24
	.byte	.Ltmp73-.Ltmp72
	.byte	.Ltmp77-.Ltmp75
	.text

	.text	1
.Ltmp75:
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30

.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd518460a


.Ltmp77:
.Ltmp78:
.org (.Ltmp78-(.Ltmp77-.Ltmp75))+(.Ltmp73-.Ltmp72), 0
.Ltmp79:
.org (.Ltmp79-(.Ltmp73-.Ltmp72))+(.Ltmp77-.Ltmp75), 0
	.text


	//NO_APP
.LBB44_10:
	ldr	x8, [x8, #8]
	//APP
	mrs	x10, TTBR1_EL1
	//NO_APP
	mov	x11, x8
	bfxil	x11, x10, #0, #48
	//APP
	msr	TTBR1_EL1, x11
	//NO_APP
	//APP
	isb
	//NO_APP
	//APP
	msr	TTBR0_EL1, x8
	//NO_APP
	//APP
	isb
	//NO_APP
	//APP
.Ltmp80:
	msr	DAIF, x9
.Ltmp81:
	.section	.altinstructions,"a",@progbits
.Ltmp82:
	.word	.Ltmp80-.Ltmp82
.Ltmp84:
	.word	.Ltmp83-.Ltmp84
	.hword	24
	.byte	.Ltmp81-.Ltmp80
	.byte	.Ltmp85-.Ltmp83
	.text

	.text	1
.Ltmp83:
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30

.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5184609


.Ltmp85:
.Ltmp86:
.org (.Ltmp86-(.Ltmp85-.Ltmp83))+(.Ltmp81-.Ltmp80), 0
.Ltmp87:
.org (.Ltmp87-(.Ltmp81-.Ltmp80))+(.Ltmp85-.Ltmp83), 0
	.text


	//NO_APP
	//APP
.Ltmp89:
	nop
	.section	__jump_table,"aw",@progbits
	.p2align	3
.Ltmp90:
	.word	.Ltmp89-.Ltmp90
.Ltmp91:
	.word	.Ltmp88-.Ltmp91
.Ltmp92:
	.xword	gic_pmr_sync-.Ltmp92
	.text


	//NO_APP
.Ltmp42:
.LBB44_11:
	//APP
	and	x0, x0, #0xff7fffffffffffff

	//NO_APP
	bl	__arch_copy_to_user
	mov	x2, x0
	//APP
.Ltmp94:
	b	.Ltmp93
.Ltmp95:
	.section	.altinstructions,"a",@progbits
.Ltmp96:
	.word	.Ltmp94-.Ltmp96
.Ltmp97:
	.word	alt_cb_patch_nops-.Ltmp97
	.hword	32769
	.byte	.Ltmp95-.Ltmp94
	.byte	.Ltmp98-.Ltmp99
	.text

.Ltmp99:
.Ltmp98:

	//NO_APP
	//APP
.Ltmp101:
	nop
.Ltmp102:
	.section	.altinstructions,"a",@progbits
.Ltmp103:
	.word	.Ltmp101-.Ltmp103
.Ltmp105:
	.word	.Ltmp104-.Ltmp105
	.hword	29
	.byte	.Ltmp102-.Ltmp101
	.byte	.Ltmp106-.Ltmp104
	.text

	.text	1
.Ltmp104:
	b	.Ltmp100
.Ltmp106:
.Ltmp107:
.org (.Ltmp107-(.Ltmp106-.Ltmp104))+(.Ltmp102-.Ltmp101), 0
.Ltmp108:
.org (.Ltmp108-(.Ltmp102-.Ltmp101))+(.Ltmp106-.Ltmp104), 0
	.text


	//NO_APP
.LBB44_13:
	//APP
.Ltmp109:
	mrs	x8, DAIF
.Ltmp110:
	.section	.altinstructions,"a",@progbits
.Ltmp111:
	.word	.Ltmp109-.Ltmp111
.Ltmp113:
	.word	.Ltmp112-.Ltmp113
	.hword	24
	.byte	.Ltmp110-.Ltmp109
	.byte	.Ltmp114-.Ltmp112
	.text

	.text	1
.Ltmp112:
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30

.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5384608


.Ltmp114:
.Ltmp115:
.org (.Ltmp115-(.Ltmp114-.Ltmp112))+(.Ltmp110-.Ltmp109), 0
.Ltmp116:
.org (.Ltmp116-(.Ltmp110-.Ltmp109))+(.Ltmp114-.Ltmp112), 0
	.text


	//NO_APP
	//APP
.Ltmp117:
	and	w9, w8, #0x80
.Ltmp118:
	.section	.altinstructions,"a",@progbits
.Ltmp119:
	.word	.Ltmp117-.Ltmp119
.Ltmp121:
	.word	.Ltmp120-.Ltmp121
	.hword	24
	.byte	.Ltmp118-.Ltmp117
	.byte	.Ltmp122-.Ltmp120
	.text

	.text	1
.Ltmp120:
	eor	w9, w8, #0xe0
.Ltmp122:
.Ltmp123:
.org (.Ltmp123-(.Ltmp122-.Ltmp120))+(.Ltmp118-.Ltmp117), 0
.Ltmp124:
.org (.Ltmp124-(.Ltmp118-.Ltmp117))+(.Ltmp122-.Ltmp120), 0
	.text


	//NO_APP
	cbnz	w9, .LBB44_17
	//APP
.Ltmp126:
	nop
	.section	__jump_table,"aw",@progbits
	.p2align	3
.Ltmp127:
	.word	.Ltmp126-.Ltmp127
.Ltmp128:
	.word	.Ltmp125-.Ltmp128
.Ltmp129:
	.xword	gic_nonsecure_priorities-.Ltmp129
	.text


	//NO_APP
	mov	w9, #96
.LBB44_16:
	//APP
.Ltmp130:
	msr	DAIFSet, #3	// arch_local_irq_disable
.Ltmp131:
	.section	.altinstructions,"a",@progbits
.Ltmp132:
	.word	.Ltmp130-.Ltmp132
.Ltmp134:
	.word	.Ltmp133-.Ltmp134
	.hword	24
	.byte	.Ltmp131-.Ltmp130
	.byte	.Ltmp135-.Ltmp133
	.text

	.text	1
.Ltmp133:
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30

.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5184609


.Ltmp135:
.Ltmp136:
.org (.Ltmp136-(.Ltmp135-.Ltmp133))+(.Ltmp131-.Ltmp130), 0
.Ltmp137:
.org (.Ltmp137-(.Ltmp131-.Ltmp130))+(.Ltmp135-.Ltmp133), 0
	.text


	//NO_APP
.LBB44_17:
	//APP
	mrs	x9, TTBR1_EL1
	//NO_APP
	and	x9, x9, #0xffffffffffff
	sub	x10, x9, #1, lsl #12
	//APP
	msr	TTBR0_EL1, x10
	//NO_APP
	//APP
	isb
	//NO_APP
	//APP
	msr	TTBR1_EL1, x9
	//NO_APP
	//APP
	isb
	//NO_APP
	//APP
.Ltmp138:
	msr	DAIF, x8
.Ltmp139:
	.section	.altinstructions,"a",@progbits
.Ltmp140:
	.word	.Ltmp138-.Ltmp140
.Ltmp142:
	.word	.Ltmp141-.Ltmp142
	.hword	24
	.byte	.Ltmp139-.Ltmp138
	.byte	.Ltmp143-.Ltmp141
	.text

	.text	1
.Ltmp141:
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30

.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5184608


.Ltmp143:
.Ltmp144:
.org (.Ltmp144-(.Ltmp143-.Ltmp141))+(.Ltmp139-.Ltmp138), 0
.Ltmp145:
.org (.Ltmp145-(.Ltmp139-.Ltmp138))+(.Ltmp143-.Ltmp141), 0
	.text


	//NO_APP
	//APP
.Ltmp147:
	nop
	.section	__jump_table,"aw",@progbits
	.p2align	3
.Ltmp148:
	.word	.Ltmp147-.Ltmp148
.Ltmp149:
	.word	.Ltmp146-.Ltmp149
.Ltmp150:
	.xword	gic_pmr_sync-.Ltmp150
	.text


	//NO_APP
.Ltmp100:
.LBB44_18:
	mov	x0, x2
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Ltmp35:
.LBB44_19:
	adrp	x9, cpu_hwcaps
	ldr	x9, [x9, :lo12:cpu_hwcaps]
	tbnz	w9, #29, .LBB44_11
	b	.LBB44_6
.Ltmp88:
.LBB44_20:
	//APP
	dsb	sy
	//NO_APP
	b	.LBB44_11
.Ltmp93:
.LBB44_21:
	adrp	x8, cpu_hwcaps
	ldr	x8, [x8, :lo12:cpu_hwcaps]
	tbnz	w8, #29, .LBB44_18
	b	.LBB44_13
.Ltmp146:
.LBB44_22:
	//APP
	dsb	sy
	//NO_APP
	b	.LBB44_18
.Ltmp67:
.LBB44_23:
	mov	w10, #160
	b	.LBB44_9
.Ltmp125:
.LBB44_24:
	mov	w9, #160
	b	.LBB44_16
.Lfunc_end44:
	.size	_copy_to_user, .Lfunc_end44-_copy_to_user

	.p2align	2
	.type	_copy_from_user,@function
_copy_from_user:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!
	stp	x20, x19, [sp, #32]
	mov	x19, x2
	//APP
	mrs	x8, SP_EL0
	//NO_APP
	ldrb	w9, [x8, #70]
	mov	x20, x0
	str	x21, [sp, #16]
	mov	x29, sp
	tbnz	w9, #5, .LBB45_2
	ldr	x10, [x8]
	mov	x9, x1
	tbz	w10, #26, .LBB45_3
.LBB45_2:
	lsl	x9, x1, #8
	and	x9, x1, x9, asr #8
.LBB45_3:
	mov	x10, #549755813888
	mov	x21, x19
	sub	x10, x10, x19
	cmp	x10, x9
	b.lo	.LBB45_18
	//APP
.Ltmp152:
	b	.Ltmp151
.Ltmp153:
	.section	.altinstructions,"a",@progbits
.Ltmp154:
	.word	.Ltmp152-.Ltmp154
.Ltmp155:
	.word	alt_cb_patch_nops-.Ltmp155
	.hword	32769
	.byte	.Ltmp153-.Ltmp152
	.byte	.Ltmp156-.Ltmp157
	.text

.Ltmp157:
.Ltmp156:

	//NO_APP
	//APP
.Ltmp159:
	nop
.Ltmp160:
	.section	.altinstructions,"a",@progbits
.Ltmp161:
	.word	.Ltmp159-.Ltmp161
.Ltmp163:
	.word	.Ltmp162-.Ltmp163
	.hword	29
	.byte	.Ltmp160-.Ltmp159
	.byte	.Ltmp164-.Ltmp162
	.text

	.text	1
.Ltmp162:
	b	.Ltmp158
.Ltmp164:
.Ltmp165:
.org (.Ltmp165-(.Ltmp164-.Ltmp162))+(.Ltmp160-.Ltmp159), 0
.Ltmp166:
.org (.Ltmp166-(.Ltmp160-.Ltmp159))+(.Ltmp164-.Ltmp162), 0
	.text


	//NO_APP
.LBB45_6:
	//APP
.Ltmp167:
	mrs	x9, DAIF
.Ltmp168:
	.section	.altinstructions,"a",@progbits
.Ltmp169:
	.word	.Ltmp167-.Ltmp169
.Ltmp171:
	.word	.Ltmp170-.Ltmp171
	.hword	24
	.byte	.Ltmp168-.Ltmp167
	.byte	.Ltmp172-.Ltmp170
	.text

	.text	1
.Ltmp170:
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30

.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5384609


.Ltmp172:
.Ltmp173:
.org (.Ltmp173-(.Ltmp172-.Ltmp170))+(.Ltmp168-.Ltmp167), 0
.Ltmp174:
.org (.Ltmp174-(.Ltmp168-.Ltmp167))+(.Ltmp172-.Ltmp170), 0
	.text


	//NO_APP
	//APP
.Ltmp175:
	and	w10, w9, #0x80
.Ltmp176:
	.section	.altinstructions,"a",@progbits
.Ltmp177:
	.word	.Ltmp175-.Ltmp177
.Ltmp179:
	.word	.Ltmp178-.Ltmp179
	.hword	24
	.byte	.Ltmp176-.Ltmp175
	.byte	.Ltmp180-.Ltmp178
	.text

	.text	1
.Ltmp178:
	eor	w10, w9, #0xe0
.Ltmp180:
.Ltmp181:
.org (.Ltmp181-(.Ltmp180-.Ltmp178))+(.Ltmp176-.Ltmp175), 0
.Ltmp182:
.org (.Ltmp182-(.Ltmp176-.Ltmp175))+(.Ltmp180-.Ltmp178), 0
	.text


	//NO_APP
	cbnz	w10, .LBB45_10
	//APP
.Ltmp184:
	nop
	.section	__jump_table,"aw",@progbits
	.p2align	3
.Ltmp185:
	.word	.Ltmp184-.Ltmp185
.Ltmp186:
	.word	.Ltmp183-.Ltmp186
.Ltmp187:
	.xword	gic_nonsecure_priorities-.Ltmp187
	.text


	//NO_APP
	mov	w10, #96
.LBB45_9:
	//APP
.Ltmp188:
	msr	DAIFSet, #3	// arch_local_irq_disable
.Ltmp189:
	.section	.altinstructions,"a",@progbits
.Ltmp190:
	.word	.Ltmp188-.Ltmp190
.Ltmp192:
	.word	.Ltmp191-.Ltmp192
	.hword	24
	.byte	.Ltmp189-.Ltmp188
	.byte	.Ltmp193-.Ltmp191
	.text

	.text	1
.Ltmp191:
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30

.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd518460a


.Ltmp193:
.Ltmp194:
.org (.Ltmp194-(.Ltmp193-.Ltmp191))+(.Ltmp189-.Ltmp188), 0
.Ltmp195:
.org (.Ltmp195-(.Ltmp189-.Ltmp188))+(.Ltmp193-.Ltmp191), 0
	.text


	//NO_APP
.LBB45_10:
	ldr	x8, [x8, #8]
	//APP
	mrs	x10, TTBR1_EL1
	//NO_APP
	mov	x11, x8
	bfxil	x11, x10, #0, #48
	//APP
	msr	TTBR1_EL1, x11
	//NO_APP
	//APP
	isb
	//NO_APP
	//APP
	msr	TTBR0_EL1, x8
	//NO_APP
	//APP
	isb
	//NO_APP
	//APP
.Ltmp196:
	msr	DAIF, x9
.Ltmp197:
	.section	.altinstructions,"a",@progbits
.Ltmp198:
	.word	.Ltmp196-.Ltmp198
.Ltmp200:
	.word	.Ltmp199-.Ltmp200
	.hword	24
	.byte	.Ltmp197-.Ltmp196
	.byte	.Ltmp201-.Ltmp199
	.text

	.text	1
.Ltmp199:
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30

.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5184609


.Ltmp201:
.Ltmp202:
.org (.Ltmp202-(.Ltmp201-.Ltmp199))+(.Ltmp197-.Ltmp196), 0
.Ltmp203:
.org (.Ltmp203-(.Ltmp197-.Ltmp196))+(.Ltmp201-.Ltmp199), 0
	.text


	//NO_APP
	//APP
.Ltmp205:
	nop
	.section	__jump_table,"aw",@progbits
	.p2align	3
.Ltmp206:
	.word	.Ltmp205-.Ltmp206
.Ltmp207:
	.word	.Ltmp204-.Ltmp207
.Ltmp208:
	.xword	gic_pmr_sync-.Ltmp208
	.text


	//NO_APP
.Ltmp158:
.LBB45_11:
	//APP
	and	x1, x1, #0xff7fffffffffffff

	//NO_APP
	mov	x0, x20
	mov	x2, x19
	bl	__arch_copy_from_user
	mov	x21, x0
	//APP
.Ltmp210:
	b	.Ltmp209
.Ltmp211:
	.section	.altinstructions,"a",@progbits
.Ltmp212:
	.word	.Ltmp210-.Ltmp212
.Ltmp213:
	.word	alt_cb_patch_nops-.Ltmp213
	.hword	32769
	.byte	.Ltmp211-.Ltmp210
	.byte	.Ltmp214-.Ltmp215
	.text

.Ltmp215:
.Ltmp214:

	//NO_APP
	//APP
.Ltmp217:
	nop
.Ltmp218:
	.section	.altinstructions,"a",@progbits
.Ltmp219:
	.word	.Ltmp217-.Ltmp219
.Ltmp221:
	.word	.Ltmp220-.Ltmp221
	.hword	29
	.byte	.Ltmp218-.Ltmp217
	.byte	.Ltmp222-.Ltmp220
	.text

	.text	1
.Ltmp220:
	b	.Ltmp216
.Ltmp222:
.Ltmp223:
.org (.Ltmp223-(.Ltmp222-.Ltmp220))+(.Ltmp218-.Ltmp217), 0
.Ltmp224:
.org (.Ltmp224-(.Ltmp218-.Ltmp217))+(.Ltmp222-.Ltmp220), 0
	.text


	//NO_APP
.LBB45_13:
	//APP
.Ltmp225:
	mrs	x8, DAIF
.Ltmp226:
	.section	.altinstructions,"a",@progbits
.Ltmp227:
	.word	.Ltmp225-.Ltmp227
.Ltmp229:
	.word	.Ltmp228-.Ltmp229
	.hword	24
	.byte	.Ltmp226-.Ltmp225
	.byte	.Ltmp230-.Ltmp228
	.text

	.text	1
.Ltmp228:
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30

.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5384608


.Ltmp230:
.Ltmp231:
.org (.Ltmp231-(.Ltmp230-.Ltmp228))+(.Ltmp226-.Ltmp225), 0
.Ltmp232:
.org (.Ltmp232-(.Ltmp226-.Ltmp225))+(.Ltmp230-.Ltmp228), 0
	.text


	//NO_APP
	//APP
.Ltmp233:
	and	w9, w8, #0x80
.Ltmp234:
	.section	.altinstructions,"a",@progbits
.Ltmp235:
	.word	.Ltmp233-.Ltmp235
.Ltmp237:
	.word	.Ltmp236-.Ltmp237
	.hword	24
	.byte	.Ltmp234-.Ltmp233
	.byte	.Ltmp238-.Ltmp236
	.text

	.text	1
.Ltmp236:
	eor	w9, w8, #0xe0
.Ltmp238:
.Ltmp239:
.org (.Ltmp239-(.Ltmp238-.Ltmp236))+(.Ltmp234-.Ltmp233), 0
.Ltmp240:
.org (.Ltmp240-(.Ltmp234-.Ltmp233))+(.Ltmp238-.Ltmp236), 0
	.text


	//NO_APP
	cbnz	w9, .LBB45_17
	//APP
.Ltmp242:
	nop
	.section	__jump_table,"aw",@progbits
	.p2align	3
.Ltmp243:
	.word	.Ltmp242-.Ltmp243
.Ltmp244:
	.word	.Ltmp241-.Ltmp244
.Ltmp245:
	.xword	gic_nonsecure_priorities-.Ltmp245
	.text


	//NO_APP
	mov	w9, #96
.LBB45_16:
	//APP
.Ltmp246:
	msr	DAIFSet, #3	// arch_local_irq_disable
.Ltmp247:
	.section	.altinstructions,"a",@progbits
.Ltmp248:
	.word	.Ltmp246-.Ltmp248
.Ltmp250:
	.word	.Ltmp249-.Ltmp250
	.hword	24
	.byte	.Ltmp247-.Ltmp246
	.byte	.Ltmp251-.Ltmp249
	.text

	.text	1
.Ltmp249:
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30

.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5184609


.Ltmp251:
.Ltmp252:
.org (.Ltmp252-(.Ltmp251-.Ltmp249))+(.Ltmp247-.Ltmp246), 0
.Ltmp253:
.org (.Ltmp253-(.Ltmp247-.Ltmp246))+(.Ltmp251-.Ltmp249), 0
	.text


	//NO_APP
.LBB45_17:
	//APP
	mrs	x9, TTBR1_EL1
	//NO_APP
	and	x9, x9, #0xffffffffffff
	sub	x10, x9, #1, lsl #12
	//APP
	msr	TTBR0_EL1, x10
	//NO_APP
	//APP
	isb
	//NO_APP
	//APP
	msr	TTBR1_EL1, x9
	//NO_APP
	//APP
	isb
	//NO_APP
	//APP
.Ltmp254:
	msr	DAIF, x8
.Ltmp255:
	.section	.altinstructions,"a",@progbits
.Ltmp256:
	.word	.Ltmp254-.Ltmp256
.Ltmp258:
	.word	.Ltmp257-.Ltmp258
	.hword	24
	.byte	.Ltmp255-.Ltmp254
	.byte	.Ltmp259-.Ltmp257
	.text

	.text	1
.Ltmp257:
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30

.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5184608


.Ltmp259:
.Ltmp260:
.org (.Ltmp260-(.Ltmp259-.Ltmp257))+(.Ltmp255-.Ltmp254), 0
.Ltmp261:
.org (.Ltmp261-(.Ltmp255-.Ltmp254))+(.Ltmp259-.Ltmp257), 0
	.text


	//NO_APP
	//APP
.Ltmp263:
	nop
	.section	__jump_table,"aw",@progbits
	.p2align	3
.Ltmp264:
	.word	.Ltmp263-.Ltmp264
.Ltmp265:
	.word	.Ltmp262-.Ltmp265
.Ltmp266:
	.xword	gic_pmr_sync-.Ltmp266
	.text


	//NO_APP
.Ltmp216:
.LBB45_18:
	cbnz	x21, .LBB45_20
.LBB45_19:
	ldp	x20, x19, [sp, #32]
	mov	x0, x21
	ldr	x21, [sp, #16]
	ldp	x29, x30, [sp], #48
	ldr	x30, [x18, #-8]!
	ret
.LBB45_20:
	sub	x8, x19, x21
	mov	w1, wzr
	add	x0, x20, x8
	mov	x2, x21
	bl	memset
	b	.LBB45_19
.Ltmp151:
.LBB45_21:
	adrp	x9, cpu_hwcaps
	ldr	x9, [x9, :lo12:cpu_hwcaps]
	tbnz	w9, #29, .LBB45_11
	b	.LBB45_6
.Ltmp204:
.LBB45_22:
	//APP
	dsb	sy
	//NO_APP
	b	.LBB45_11
.Ltmp209:
.LBB45_23:
	adrp	x8, cpu_hwcaps
	ldr	x8, [x8, :lo12:cpu_hwcaps]
	tbnz	w8, #29, .LBB45_18
	b	.LBB45_13
.Ltmp262:
.LBB45_24:
	//APP
	dsb	sy
	//NO_APP
	b	.LBB45_18
.Ltmp183:
.LBB45_25:
	mov	w10, #160
	b	.LBB45_9
.Ltmp241:
.LBB45_26:
	mov	w9, #160
	b	.LBB45_16
.Lfunc_end45:
	.size	_copy_from_user, .Lfunc_end45-_copy_from_user

	.p2align	2
	.type	waveform_mmap,@function
waveform_mmap:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!
	adrp	x8, global_ebc
	ldr	x9, [x1, #16]
	str	x21, [sp, #16]
	mov	x29, sp
	stp	x20, x19, [sp, #32]
	mov	x19, x1
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	w21, [x9, #152]
	ldr	w9, [x1, #40]
	ldr	x20, [x8, #272]
	cmp	w9, w21
	b.eq	.LBB46_2
	ldr	x0, [x19, #48]
	bl	down_write
	str	w21, [x19, #40]
	ldr	x0, [x19, #48]
	bl	up_write
.LBB46_2:
	ldp	x4, x8, [x19, #24]
	mov	w10, #16384
	lsr	x2, x20, #12
	ldp	x1, x9, [x19]
	movk	w10, #1028, lsl #16
	mov	x0, x19
	orr	x8, x8, x10
	sub	x3, x9, x1
	str	x8, [x19, #32]
	bl	remap_pfn_range
	ldp	x20, x19, [sp, #32]
	mov	w8, #-11
	cmp	w0, #0
	ldr	x21, [sp, #16]
	csel	w0, wzr, w8, eq
	ldp	x29, x30, [sp], #48
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end46:
	.size	waveform_mmap, .Lfunc_end46-waveform_mmap

	.p2align	2
	.type	waveform_open,@function
waveform_open:
	mov	w0, wzr
	str	xzr, [x1, #104]
	ret
.Lfunc_end47:
	.size	waveform_open, .Lfunc_end47-waveform_open

	.p2align	2
	.type	waveform_version_read,@function
waveform_version_read:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!
	str	x19, [sp, #16]
	mov	x29, sp
	mov	x19, x2
	bl	epd_lut_get_wf_version
	adrp	x1, .L.str.152
	mov	x2, x0
	add	x1, x1, :lo12:.L.str.152
	mov	x0, x19
	bl	sprintf
	ldr	x19, [sp, #16]
	sxtw	x0, w0
	ldp	x29, x30, [sp], #32
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end48:
	.size	waveform_version_read, .Lfunc_end48-waveform_version_read

	.p2align	2
	.type	pmic_name_read,@function
pmic_name_read:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	adrp	x8, global_ebc
	adrp	x1, .L.str.152
	mov	x0, x2
	add	x1, x1, :lo12:.L.str.152
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	x8, [x8, #16]
	add	x2, x8, #8
	bl	sprintf
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end49:
	.size	pmic_name_read, .Lfunc_end49-pmic_name_read

	.p2align	2
	.type	pmic_temp_read,@function
pmic_temp_read:
	sub	sp, sp, #48
	str	x30, [x18], #8
	stp	x29, x30, [sp, #16]
	adrp	x9, global_ebc
	str	x19, [sp, #32]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	mov	x19, x2
	add	x29, sp, #16
	str	x8, [sp, #8]
	ldr	x8, [x9, :lo12:global_ebc]
	str	wzr, [sp, #4]
	ldr	x0, [x8, #16]
	cbz	x0, .LBB50_2
	ldr	x8, [x0, #56]
	add	x1, sp, #4
	blr	x8
	b	.LBB50_3
.LBB50_2:
	ldr	x0, [x8, #32]
	add	x1, sp, #4
	bl	thermal_zone_get_temp
.LBB50_3:
	adrp	x1, .L.str.155
	ldr	w2, [sp, #4]
	add	x1, x1, :lo12:.L.str.155
	mov	x0, x19
	bl	sprintf
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldr	x9, [sp, #8]
	cmp	x8, x9
	b.ne	.LBB50_5
	ldp	x29, x30, [sp, #16]
	sxtw	x0, w0
	ldr	x19, [sp, #32]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #48
	ret
.LBB50_5:
	bl	__stack_chk_fail
.Lfunc_end50:
	.size	pmic_temp_read, .Lfunc_end50-pmic_temp_read

	.p2align	2
	.type	pmic_vcom_read,@function
pmic_vcom_read:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!
	adrp	x8, global_ebc
	str	x19, [sp, #16]
	mov	x19, x2
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	x0, [x8, #16]
	cbz	x0, .LBB51_2
	ldr	x8, [x0, #64]
	blr	x8
	mov	w2, w0
	b	.LBB51_3
.LBB51_2:
	ldr	x0, [x8, #24]
	bl	regulator_get_voltage
	mov	w8, #19923
	movk	w8, #4194, lsl #16
	smull	x8, w0, w8
	lsr	x9, x8, #63
	asr	x8, x8, #38
	add	w2, w8, w9
.LBB51_3:
	adrp	x1, .L.str.155
	mov	x0, x19
	add	x1, x1, :lo12:.L.str.155
	bl	sprintf
	ldr	x19, [sp, #16]
	sxtw	x0, w0
	ldp	x29, x30, [sp], #32
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end51:
	.size	pmic_vcom_read, .Lfunc_end51-pmic_vcom_read

	.p2align	2
	.type	pmic_vcom_write,@function
pmic_vcom_write:
	sub	sp, sp, #64
	str	x30, [x18], #8
	stp	x29, x30, [sp, #16]
	adrp	x9, global_ebc
	str	x21, [sp, #32]
	mov	w1, wzr
	stp	x20, x19, [sp, #48]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	mov	x20, x2
	add	x2, sp, #4
	mov	x0, x20
	add	x29, sp, #16
	mov	x19, x3
	str	x8, [sp, #8]
	ldr	x21, [x9, :lo12:global_ebc]
	str	wzr, [sp, #4]
	bl	kstrtouint
	cbnz	w0, .LBB52_5
	ldr	x0, [x21, #16]
	cbz	x0, .LBB52_3
	ldr	w1, [sp, #4]
	bl	ebc_pmic_set_vcom
	cbz	w0, .LBB52_7
	b	.LBB52_4
.LBB52_3:
	ldr	x0, [x21, #24]
	ldr	w1, [sp, #4]
	bl	ebc_regulator_set_vcom
	cbz	w0, .LBB52_7
.LBB52_4:
	adrp	x1, .L.str.158
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.158
	bl	_dev_err
	b	.LBB52_6
.LBB52_5:
	adrp	x1, .L.str.157
	ldr	x0, [x21]
	add	x1, x1, :lo12:.L.str.157
	mov	x2, x20
	bl	_dev_err
.LBB52_6:
	mov	x19, #-1
.LBB52_7:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldr	x9, [sp, #8]
	cmp	x8, x9
	b.ne	.LBB52_9
	mov	x0, x19
	ldr	x21, [sp, #32]
	ldp	x20, x19, [sp, #48]
	ldp	x29, x30, [sp, #16]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #64
	ret
.LBB52_9:
	bl	__stack_chk_fail
.Lfunc_end52:
	.size	pmic_vcom_write, .Lfunc_end52-pmic_vcom_write

	.p2align	2
	.type	ebc_version_read,@function
ebc_version_read:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	mov	x0, x2
	adrp	x1, .L.str.152
	adrp	x2, .L.str.2
	add	x1, x1, :lo12:.L.str.152
	add	x2, x2, :lo12:.L.str.2
	mov	x29, sp
	bl	sprintf
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end53:
	.size	ebc_version_read, .Lfunc_end53-ebc_version_read

	.p2align	2
	.type	ebc_state_read,@function
ebc_state_read:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	adrp	x8, global_ebc
	adrp	x1, .L.str.155
	mov	x0, x2
	add	x1, x1, :lo12:.L.str.155
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	w2, [x8, #672]
	bl	sprintf
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end54:
	.size	ebc_state_read, .Lfunc_end54-ebc_state_read

	.p2align	2
	.type	ebc_buf_state_read,@function
ebc_buf_state_read:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	mov	x0, x2
	mov	x29, sp
	bl	ebc_buf_state_show
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end55:
	.size	ebc_buf_state_read, .Lfunc_end55-ebc_buf_state_read

	.p2align	2
	.type	auto_frame_state_read,@function
auto_frame_state_read:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	adrp	x8, global_ebc
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	ldp	w10, w9, [x8, #116]
	mul	w9, w10, w9
	cbz	w9, .LBB56_4
	ldr	x11, [x8, #392]
	mov	w10, wzr
.LBB56_2:
	ldrb	w8, [x11, w10, sxtw]
	cbnz	w8, .LBB56_5
	add	w10, w10, #1
	cmp	w9, w10
	b.ne	.LBB56_2
.LBB56_4:
	mov	w8, #2608
	mov	w0, #2
	strb	wzr, [x2, #2]
	strh	w8, [x2]
	b	.LBB56_6
.LBB56_5:
	adrp	x1, .L.str.155
	mov	x0, x2
	add	x1, x1, :lo12:.L.str.155
	mov	w2, w8
	bl	sprintf
	sxtw	x0, w0
.LBB56_6:
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end56:
	.size	auto_frame_state_read, .Lfunc_end56-auto_frame_state_read

	.p2align	2
	.type	ebc_debug_level_read,@function
ebc_debug_level_read:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!
	adrp	x8, global_ebc
	adrp	x1, .L.str.155
	mov	x0, x2
	add	x1, x1, :lo12:.L.str.155
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	w2, [x8, #852]
	bl	sprintf
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end57:
	.size	ebc_debug_level_read, .Lfunc_end57-ebc_debug_level_read

	.p2align	2
	.type	ebc_debug_level_write,@function
ebc_debug_level_write:
	sub	sp, sp, #64
	str	x30, [x18], #8
	stp	x29, x30, [sp, #16]
	adrp	x9, global_ebc
	str	x21, [sp, #32]
	mov	w1, wzr
	stp	x20, x19, [sp, #48]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	mov	x20, x2
	add	x2, sp, #4
	mov	x0, x20
	add	x29, sp, #16
	mov	x19, x3
	str	x8, [sp, #8]
	ldr	x21, [x9, :lo12:global_ebc]
	str	wzr, [sp, #4]
	bl	kstrtouint
	cbnz	w0, .LBB58_4
	ldr	w8, [sp, #4]
	str	w8, [x21, #852]
.LBB58_2:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldr	x9, [sp, #8]
	cmp	x8, x9
	b.ne	.LBB58_5
	mov	x0, x19
	ldr	x21, [sp, #32]
	ldp	x20, x19, [sp, #48]
	ldp	x29, x30, [sp, #16]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #64
	ret
.LBB58_4:
	adrp	x1, .L.str.157
	ldr	x0, [x21, #328]
	add	x1, x1, :lo12:.L.str.157
	mov	x2, x20
	bl	_dev_err
	mov	x19, #-1
	b	.LBB58_2
.LBB58_5:
	bl	__stack_chk_fail
.Lfunc_end58:
	.size	ebc_debug_level_write, .Lfunc_end58-ebc_debug_level_write

	.p2align	2
	.type	wf_data_write,@function
wf_data_write:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-96]!
	adrp	x8, global_ebc
	adrp	x1, .L.str.166
	mov	x0, x2
	add	x1, x1, :lo12:.L.str.166
	stp	x26, x25, [sp, #32]
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	stp	x20, x19, [sp, #80]
	stp	x28, x27, [sp, #16]
	mov	x19, x3
	stp	x24, x23, [sp, #48]
	ldr	x25, [x8, #352]
	stp	x22, x21, [sp, #64]
	ldrb	w20, [x8, #336]
	bl	strstr
	cbnz	x0, .LBB59_2
.LBB59_1:
	mov	x0, x19
	ldp	x20, x19, [sp, #80]
	ldp	x22, x21, [sp, #64]
	ldp	x24, x23, [sp, #48]
	ldp	x26, x25, [sp, #32]
	ldp	x28, x27, [sp, #16]
	ldp	x29, x30, [sp], #96
	ldr	x30, [x18, #-8]!
	ret
.LBB59_2:
	adrp	x0, .L.str.167
	mov	w1, w20
	add	x0, x0, :lo12:.L.str.167
	bl	_printk
	adrp	x22, .L.str.168
	adrp	x23, .L.str.169
	mov	x21, xzr
	add	x22, x22, :lo12:.L.str.168
	add	x23, x23, :lo12:.L.str.169
.LBB59_3:
	mov	x24, xzr
	mov	x26, x25
.LBB59_4:
	mov	x0, x22
	mov	w1, w24
	mov	w2, w21
	bl	_printk
	cbz	w20, .LBB59_7
	mov	x27, x20
	mov	x28, x26
.LBB59_6:
	ldrb	w1, [x28]
	mov	x0, x23
	bl	_printk
	add	x28, x28, #1024
	subs	x27, x27, #1
	b.ne	.LBB59_6
.LBB59_7:
	add	x24, x24, #1
	add	x26, x26, #32
	cmp	x24, #32
	b.ne	.LBB59_4
	add	x21, x21, #1
	add	x25, x25, #1
	cmp	x21, #32
	b.ne	.LBB59_3
	b	.LBB59_1
.Lfunc_end59:
	.size	wf_data_write, .Lfunc_end59-wf_data_write

	.p2align	2
	.type	overlay_wf_data_write,@function
overlay_wf_data_write:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-96]!
	adrp	x8, global_ebc
	adrp	x1, .L.str.166
	mov	x0, x2
	add	x1, x1, :lo12:.L.str.166
	stp	x26, x25, [sp, #32]
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	stp	x20, x19, [sp, #80]
	stp	x28, x27, [sp, #16]
	mov	x19, x3
	stp	x24, x23, [sp, #48]
	ldr	x25, [x8, #360]
	stp	x22, x21, [sp, #64]
	ldrb	w20, [x8, #337]
	bl	strstr
	cbnz	x0, .LBB60_2
.LBB60_1:
	mov	x0, x19
	ldp	x20, x19, [sp, #80]
	ldp	x22, x21, [sp, #64]
	ldp	x24, x23, [sp, #48]
	ldp	x26, x25, [sp, #32]
	ldp	x28, x27, [sp, #16]
	ldp	x29, x30, [sp], #96
	ldr	x30, [x18, #-8]!
	ret
.LBB60_2:
	adrp	x0, .L.str.167
	mov	w1, w20
	add	x0, x0, :lo12:.L.str.167
	bl	_printk
	adrp	x22, .L.str.168
	adrp	x23, .L.str.169
	mov	x21, xzr
	add	x22, x22, :lo12:.L.str.168
	add	x23, x23, :lo12:.L.str.169
.LBB60_3:
	mov	x24, xzr
	mov	x26, x25
.LBB60_4:
	mov	x0, x22
	mov	w1, w24
	mov	w2, w21
	bl	_printk
	cbz	w20, .LBB60_7
	mov	x27, x20
	mov	x28, x26
.LBB60_6:
	ldrb	w1, [x28]
	mov	x0, x23
	bl	_printk
	add	x28, x28, #1024
	subs	x27, x27, #1
	b.ne	.LBB60_6
.LBB60_7:
	add	x24, x24, #1
	add	x26, x26, #32
	cmp	x24, #32
	b.ne	.LBB60_4
	add	x21, x21, #1
	add	x25, x25, #1
	cmp	x21, #32
	b.ne	.LBB60_3
	b	.LBB60_1
.Lfunc_end60:
	.size	overlay_wf_data_write, .Lfunc_end60-overlay_wf_data_write

	.p2align	2
	.type	ori_wf_data_write,@function
ori_wf_data_write:
	sub	sp, sp, #160
	str	x30, [x18], #8
	stp	x29, x30, [sp, #64]
	add	x29, sp, #64
	stp	x28, x27, [sp, #80]
	mov	w9, #-1
	stp	x26, x25, [sp, #96]
	mov	w0, #262144
	stp	x24, x23, [sp, #112]
	mov	w1, #3520
	stp	x22, x21, [sp, #128]
	mov	x21, x2
	stp	x20, x19, [sp, #144]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	mov	x20, x3
	stur	x8, [x29, #-8]
	stp	w9, w9, [sp, #16]
	stp	xzr, xzr, [sp, #40]
	stp	xzr, xzr, [sp, #24]
	bl	kmalloc_large
	cbnz	x0, .LBB61_2
	adrp	x0, .L.str.172
	add	x0, x0, :lo12:.L.str.172
	bl	_printk
	b	.LBB61_17
.LBB61_2:
	adrp	x1, .L.str.166
	mov	x19, x0
	str	x0, [sp, #40]
	add	x1, x1, :lo12:.L.str.166
	mov	x0, x21
	bl	strstr
	cbnz	x0, .LBB61_4
	adrp	x0, .L.str.175
	add	x0, x0, :lo12:.L.str.175
	b	.LBB61_16
.LBB61_4:
	adrp	x1, .L.str.173
	add	x2, sp, #20
	add	x1, x1, :lo12:.L.str.173
	add	x3, sp, #16
	mov	x0, x21
	bl	sscanf
	ldp	w3, w2, [sp, #16]
	adrp	x0, .L.str.174
	adrp	x1, .L__func__.ori_wf_data_write
	add	x0, x0, :lo12:.L.str.174
	add	x1, x1, :lo12:.L__func__.ori_wf_data_write
	bl	_printk
	ldr	w1, [sp, #20]
	cmp	w1, #8
	b.hi	.LBB61_15
	ldr	w2, [sp, #16]
	tbnz	w2, #31, .LBB61_15
	cmp	w2, #50
	b.gt	.LBB61_15
	add	x0, sp, #24
	mov	w3, #32
	str	x20, [sp, #8]
	bl	epd_lut_get_original
	ldrb	w21, [sp, #24]
	adrp	x0, .L.str.167
	add	x0, x0, :lo12:.L.str.167
	mov	w1, w21
	bl	_printk
	adrp	x23, .L.str.168
	adrp	x24, .L.str.169
	mov	x22, xzr
	mov	x20, x19
	add	x23, x23, :lo12:.L.str.168
	add	x24, x24, :lo12:.L.str.169
.LBB61_8:
	mov	x25, xzr
	mov	x26, x20
.LBB61_9:
	mov	x0, x23
	mov	w1, w25
	mov	w2, w22
	bl	_printk
	cbz	w21, .LBB61_12
	mov	x28, x21
	mov	x27, x26
.LBB61_11:
	ldrb	w1, [x27]
	mov	x0, x24
	bl	_printk
	add	x27, x27, #1024
	subs	x28, x28, #1
	b.ne	.LBB61_11
.LBB61_12:
	add	x25, x25, #1
	add	x26, x26, #32
	cmp	x25, #32
	b.ne	.LBB61_9
	add	x22, x22, #1
	add	x20, x20, #1
	cmp	x22, #32
	b.ne	.LBB61_8
	mov	x0, x19
	bl	kfree
	ldr	x20, [sp, #8]
	b	.LBB61_17
.LBB61_15:
	adrp	x0, .L.str.176
	add	x0, x0, :lo12:.L.str.176
.LBB61_16:
	adrp	x1, .L__func__.ori_wf_data_write
	add	x1, x1, :lo12:.L__func__.ori_wf_data_write
	bl	_printk
.LBB61_17:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB61_19
	mov	x0, x20
	ldp	x20, x19, [sp, #144]
	ldp	x22, x21, [sp, #128]
	ldp	x24, x23, [sp, #112]
	ldp	x26, x25, [sp, #96]
	ldp	x28, x27, [sp, #80]
	ldp	x29, x30, [sp, #64]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #160
	ret
.LBB61_19:
	bl	__stack_chk_fail
.Lfunc_end61:
	.size	ori_wf_data_write, .Lfunc_end61-ori_wf_data_write

	.p2align	2
	.type	record_pix_wf_write,@function
record_pix_wf_write:
	sub	sp, sp, #64
	str	x30, [x18], #8
	stp	x29, x30, [sp, #32]
	add	x29, sp, #32
	stp	x20, x19, [sp, #48]
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	adrp	x9, global_ebc
	adrp	x1, .L.str.178
	mov	x19, x3
	mov	x0, x2
	add	x1, x1, :lo12:.L.str.178
	stur	x8, [x29, #-8]
	sub	x2, x29, #12
	add	x3, sp, #16
	add	x4, sp, #12
	ldr	x20, [x9, :lo12:global_ebc]
	stur	wzr, [x29, #-12]
	stp	wzr, wzr, [sp, #12]
	bl	sscanf
	cmp	w0, #2
	b.ne	.LBB62_2
	ldur	w8, [x29, #-12]
	ldr	w9, [sp, #16]
	str	w8, [x20, #948]
	str	w9, [x20, #952]
	b	.LBB62_3
.LBB62_2:
	mov	x19, #-22
.LBB62_3:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1584]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB62_5
	mov	x0, x19
	ldp	x20, x19, [sp, #48]
	ldp	x29, x30, [sp, #32]
	ldr	x30, [x18, #-8]!
	add	sp, sp, #64
	ret
.LBB62_5:
	bl	__stack_chk_fail
.Lfunc_end62:
	.size	record_pix_wf_write, .Lfunc_end62-record_pix_wf_write

	.p2align	2
	.type	ebc_suspend,@function
ebc_suspend:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!
	str	x19, [sp, #16]
	ldr	x19, [x0, #120]
	mov	w1, wzr
	mov	x29, sp
	mov	x0, x19
	bl	ebc_power_set
	mov	w8, #1
	ldr	x0, [x19, #16]
	str	w8, [x19, #804]
	cbz	x0, .LBB63_2
	ldr	x8, [x0, #40]
	blr	x8
.LBB63_2:
	adrp	x1, .L.str.179
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.179
	bl	_dev_info
	ldr	x19, [sp, #16]
	mov	w0, wzr
	ldp	x29, x30, [sp], #32
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end63:
	.size	ebc_suspend, .Lfunc_end63-ebc_suspend

	.p2align	2
	.type	ebc_resume,@function
ebc_resume:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!
	str	x19, [sp, #16]
	ldr	x19, [x0, #120]
	mov	x29, sp
	ldr	x0, [x19, #16]
	cbz	x0, .LBB64_2
	ldr	x8, [x0, #48]
	blr	x8
.LBB64_2:
	adrp	x1, .L.str.180
	ldr	x0, [x19, #328]
	add	x1, x1, :lo12:.L.str.180
	str	wzr, [x19, #804]
	bl	_dev_info
	ldr	x19, [sp, #16]
	mov	w0, wzr
	ldp	x29, x30, [sp], #32
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end64:
	.size	ebc_resume, .Lfunc_end64-ebc_resume

	.type	ebc_driver,@object
	.data
	.p2align	3
ebc_driver:
	.xword	ebc_probe
	.xword	ebc_remove
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	.L.str
	.xword	0
	.xword	0
	.xword	0
	.byte	0
	.zero	3
	.word	0
	.xword	ebc_match
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	ebc_pm
	.xword	0
	.xword	0
	.xword	0
	.byte	0
	.byte	0
	.zero	6
	.size	ebc_driver, 208

	.type	__UNIQUE_ID___addressable_ebc_init467,@object
	.section	.discard.addressable,"aw",@progbits
	.p2align	3
__UNIQUE_ID___addressable_ebc_init467:
	.xword	ebc_init
	.size	__UNIQUE_ID___addressable_ebc_init467, 8

	.type	__exitcall_ebc_exit,@object
	.section	.exitcall.exit,"aw",@progbits
	.p2align	3
__exitcall_ebc_exit:
	.xword	ebc_exit
	.size	__exitcall_ebc_exit, 8

	.type	__UNIQUE_ID_author468,@object
	.section	.modinfo,"a",@progbits
__UNIQUE_ID_author468:
	.asciz	"rkebc.author=Zorro Liu <zorro.liu@rock-chips.com>"
	.size	__UNIQUE_ID_author468, 50

	.type	__UNIQUE_ID_description469,@object
__UNIQUE_ID_description469:
	.asciz	"rkebc.description=ROCKCHIP EBC Driver"
	.size	__UNIQUE_ID_description469, 38

	.type	__UNIQUE_ID_file470,@object
__UNIQUE_ID_file470:
	.asciz	"rkebc.file=$EBC_DEV_PATH/rkebc"
	.size	__UNIQUE_ID_file470, 31

	.type	__UNIQUE_ID_license471,@object
__UNIQUE_ID_license471:
	.asciz	"rkebc.license=GPL v2"
	.size	__UNIQUE_ID_license471, 21

	.type	.L.str,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ebc-dev"
	.size	.L.str, 8

	.type	ebc_match,@object
	.section	.rodata,"a",@progbits
	.p2align	3
ebc_match:
	.zero	32
	.zero	32
	.asciz	"rockchip,ebc-dev\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.xword	0
	.zero	200
	.size	ebc_match, 400

	.type	ebc_pm,@object
	.p2align	3
ebc_pm:
	.xword	0
	.xword	0
	.xword	ebc_suspend
	.xword	ebc_resume
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.size	ebc_pm, 184

	.type	.L.str.1,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"rockchip ebc driver %s probe\n"
	.size	.L.str.1, 30

	.type	.L.str.2,@object
.L.str.2:
	.asciz	"8.11_y8"
	.size	.L.str.2, 8

	.type	.L.str.3,@object
.L.str.3:
	.asciz	"cpu-code"
	.size	.L.str.3, 9

	.type	.L.str.4,@object
.L.str.4:
	.asciz	"no chip info\n"
	.size	.L.str.4, 14

	.type	.L.str.5,@object
.L.str.5:
	.asciz	"read chip info failed\n"
	.size	.L.str.5, 23

	.type	.L.str.6,@object
.L.str.6:
	.asciz	"chip err\n"
	.size	.L.str.6, 10

	.type	global_ebc,@object
	.local	global_ebc
	.comm	global_ebc,8,8
	.type	.L.str.7,@object
.L.str.7:
	.asciz	"ebc_tcon"
	.size	.L.str.7, 9

	.type	.L.str.8,@object
.L.str.8:
	.asciz	"not find ebc tcon\n"
	.size	.L.str.8, 19

	.type	.L.str.9,@object
.L.str.9:
	.asciz	"pmic"
	.size	.L.str.9, 5

	.type	.L.str.10,@object
.L.str.10:
	.asciz	"wrong pmics number\n"
	.size	.L.str.10, 20

	.type	.L.str.11,@object
.L.str.11:
	.asciz	"not find pmic node\n"
	.size	.L.str.11, 20

	.type	.L.str.12,@object
.L.str.12:
	.asciz	"not find pmic i2c client\n"
	.size	.L.str.12, 26

	.type	.L.str.13,@object
.L.str.13:
	.asciz	"use pmic%d\n"
	.size	.L.str.13, 12

	.type	.L.str.14,@object
.L.str.14:
	.asciz	"vcom"
	.size	.L.str.14, 5

	.type	.L.str.15,@object
.L.str.15:
	.asciz	"Failed to get vcom regulator\n"
	.size	.L.str.15, 30

	.type	.L.str.16,@object
.L.str.16:
	.asciz	"thermal-zone"
	.size	.L.str.16, 13

	.type	.L.str.17,@object
.L.str.17:
	.asciz	"Failed to get thermal zone name\n"
	.size	.L.str.17, 33

	.type	.L.str.18,@object
.L.str.18:
	.asciz	"Failed to get thermal device\n"
	.size	.L.str.18, 30

	.type	.L.str.19,@object
.L.str.19:
	.asciz	"Get PMIC device failed\n"
	.size	.L.str.19, 24

	.type	.L.str.20,@object
.L.str.20:
	.asciz	"ebc-repair-enable"
	.size	.L.str.20, 18

	.type	.L.str.21,@object
.L.str.21:
	.asciz	"ebc-dmc-notify-enable"
	.size	.L.str.21, 22

	.type	.L.str.22,@object
.L.str.22:
	.asciz	"failed to probe panel: %d\n"
	.size	.L.str.22, 27

	.type	.L.str.23,@object
.L.str.23:
	.asciz	"buffer manage init failed\n"
	.size	.L.str.23, 27

	.type	.L.str.24,@object
.L.str.24:
	.asciz	"lut table init failed\n"
	.size	.L.str.24, 23

	.type	.L.str.25,@object
.L.str.25:
	.asciz	"task init failed\n"
	.size	.L.str.25, 18

	.type	.L.str.26,@object
.L.str.26:
	.asciz	"rockchip ebc driver %s probe success\n"
	.size	.L.str.26, 38

	.type	ebc_auto_task,@object
	.local	ebc_auto_task
	.comm	ebc_auto_task,8,8
	.type	.L.str.27,@object
.L.str.27:
	.asciz	"overlay frame done\n"
	.size	.L.str.27, 20

	.type	ebc_thread_wq,@object
	.data
	.p2align	3
ebc_thread_wq:
	.zero	4
	.zero	4
	.xword	ebc_thread_wq+8
	.xword	ebc_thread_wq+8
	.size	ebc_thread_wq, 24

	.type	.L.str.28,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"auto task break\n"
	.size	.L.str.28, 17

	.type	.L.str.29,@object
.L.str.29:
	.asciz	"auto frame done\n"
	.size	.L.str.29, 17

	.type	.L.str.30,@object
.L.str.30:
	.asciz	"part task break\n"
	.size	.L.str.30, 17

	.type	.L.str.31,@object
.L.str.31:
	.asciz	"frame done\n"
	.size	.L.str.31, 12

	.type	.L.str.32,@object
.L.str.32:
	.asciz	"record pix pos wf: [%d, %d]: [%s]\n"
	.size	.L.str.32, 35

	.type	.L.str.33,@object
.L.str.33:
	.asciz	"panel,width"
	.size	.L.str.33, 12

	.type	.L.str.34,@object
.L.str.34:
	.asciz	"panel,height"
	.size	.L.str.34, 13

	.type	.L.str.35,@object
.L.str.35:
	.asciz	"panel,vir_width"
	.size	.L.str.35, 16

	.type	.L.str.36,@object
.L.str.36:
	.asciz	"panel,vir_height"
	.size	.L.str.36, 17

	.type	.L.str.37,@object
.L.str.37:
	.asciz	"panel,sdck"
	.size	.L.str.37, 11

	.type	.L.str.38,@object
.L.str.38:
	.asciz	"panel,lsl"
	.size	.L.str.38, 10

	.type	.L.str.39,@object
.L.str.39:
	.asciz	"panel,lbl"
	.size	.L.str.39, 10

	.type	.L.str.40,@object
.L.str.40:
	.asciz	"panel,ldl"
	.size	.L.str.40, 10

	.type	.L.str.41,@object
.L.str.41:
	.asciz	"panel,lel"
	.size	.L.str.41, 10

	.type	.L.str.42,@object
.L.str.42:
	.asciz	"panel,gdck-sta"
	.size	.L.str.42, 15

	.type	.L.str.43,@object
.L.str.43:
	.asciz	"panel,lgonl"
	.size	.L.str.43, 12

	.type	.L.str.44,@object
.L.str.44:
	.asciz	"panel,fsl"
	.size	.L.str.44, 10

	.type	.L.str.45,@object
.L.str.45:
	.asciz	"panel,fbl"
	.size	.L.str.45, 10

	.type	.L.str.46,@object
.L.str.46:
	.asciz	"panel,fdl"
	.size	.L.str.46, 10

	.type	.L.str.47,@object
.L.str.47:
	.asciz	"panel,fel"
	.size	.L.str.47, 10

	.type	.L.str.48,@object
.L.str.48:
	.asciz	"panel,panel_16bit"
	.size	.L.str.48, 18

	.type	.L.str.49,@object
.L.str.49:
	.asciz	"panel,panel_color"
	.size	.L.str.49, 18

	.type	.L.str.50,@object
.L.str.50:
	.asciz	"panel,mirror"
	.size	.L.str.50, 13

	.type	.L.str.51,@object
.L.str.51:
	.asciz	"panel,width-mm"
	.size	.L.str.51, 15

	.type	.L.str.52,@object
.L.str.52:
	.asciz	"panel,height-mm"
	.size	.L.str.52, 16

	.type	.L.str.53,@object
.L.str.53:
	.asciz	"panel,disable_logo"
	.size	.L.str.53, 19

	.type	.L.str.54,@object
.L.str.54:
	.asciz	"panel,rearrange"
	.size	.L.str.54, 16

	.type	.L.str.55,@object
.L.str.55:
	.asciz	"panel,sdoe_mode"
	.size	.L.str.55, 16

	.type	.L.str.56,@object
.L.str.56:
	.asciz	"panel,sdce_width"
	.size	.L.str.56, 17

	.type	.L.str.57,@object
.L.str.57:
	.asciz	"panel,gds"
	.size	.L.str.57, 10

	.type	.L.str.58,@object
.L.str.58:
	.asciz	"panel,gdl"
	.size	.L.str.58, 10

	.type	.L.str.59,@object
.L.str.59:
	.asciz	"pmic-early-power-on"
	.size	.L.str.59, 20

	.type	.L.str.60,@object
.L.str.60:
	.asciz	"too large resolution, not support\n"
	.size	.L.str.60, 35

	.type	.L.str.61,@object
.L.str.61:
	.asciz	"memory-region"
	.size	.L.str.61, 14

	.type	.L.str.62,@object
.L.str.62:
	.asciz	"Couldn't address to resource for reserved memory\n"
	.size	.L.str.62, 50

	.type	.L.str.63,@object
.L.str.63:
	.asciz	"reserved memory not enough, need 0x%x\n"
	.size	.L.str.63, 39

	.type	.L.str.64,@object
.L.str.64:
	.asciz	"Couldn't remap for reserved memory\n"
	.size	.L.str.64, 36

	.type	.L.str.65,@object
.L.str.65:
	.asciz	"waveform-region"
	.size	.L.str.65, 16

	.type	.L.str.66,@object
.L.str.66:
	.asciz	"wf,mode_table"
	.size	.L.str.66, 14

	.type	.L.str.67,@object
.L.str.67:
	.asciz	"%s:%d: failed to get mem from reserved\n"
	.size	.L.str.67, 40

	.type	.L__func__.ebc_lut_table_init,@object
.L__func__.ebc_lut_table_init:
	.asciz	"ebc_lut_table_init"
	.size	.L__func__.ebc_lut_table_init, 19

	.type	.L.str.68,@object
.L.str.68:
	.asciz	"Failed to read waveform from mem, we use waveform file from kernel file instead\n"
	.size	.L.str.68, 81

	.type	.L.str.69,@object
.L.str.69:
	.asciz	"Failed to read waveform file from kernel, no waveform!!!\n"
	.size	.L.str.69, 58

	.type	.L.str.70,@object
.L.str.70:
	.asciz	"ebc_task"
	.size	.L.str.70, 9

	.type	.L.str.71,@object
.L.str.71:
	.asciz	"failed to create ebc_task thread\n"
	.size	.L.str.71, 34

	.type	.L.str.72,@object
.L.str.72:
	.asciz	"ebc_taskup"
	.size	.L.str.72, 11

	.type	ebc_auto_assist_task,@object
	.local	ebc_auto_assist_task
	.comm	ebc_auto_assist_task,8,8
	.type	.L.str.73,@object
.L.str.73:
	.asciz	"failed to create ebc_taskup thread\n"
	.size	.L.str.73, 36

	.type	.L.str.74,@object
.L.str.74:
	.asciz	"ebc_thread"
	.size	.L.str.74, 11

	.type	ebc_task,@object
	.local	ebc_task
	.comm	ebc_task,8,8
	.type	.L.str.75,@object
.L.str.75:
	.asciz	"failed to run ebc thread\n"
	.size	.L.str.75, 26

	.type	ebc_auto_thread_sem,@object
	.data
	.p2align	3
ebc_auto_thread_sem:
	.zero	4
	.word	1
	.xword	ebc_auto_thread_sem+8
	.xword	ebc_auto_thread_sem+8
	.size	ebc_auto_thread_sem, 24

	.type	ebc_assist_finished_flag_sem,@object
	.p2align	3
ebc_assist_finished_flag_sem:
	.zero	4
	.word	1
	.xword	ebc_assist_finished_flag_sem+8
	.xword	ebc_assist_finished_flag_sem+8
	.size	ebc_assist_finished_flag_sem, 24

	.type	ebc_auto_assist_thread_sem,@object
	.p2align	3
ebc_auto_assist_thread_sem:
	.zero	4
	.word	1
	.xword	ebc_auto_assist_thread_sem+8
	.xword	ebc_auto_assist_thread_sem+8
	.size	ebc_auto_assist_thread_sem, 24

	.type	.L.str.76,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.76:
	.asciz	"ebc suspend, drop osd buf\n"
	.size	.L.str.76, 27

	.type	.L.str.77,@object
.L.str.77:
	.asciz	"full win and prev mode not overlay, drop this osd buf\n"
	.size	.L.str.77, 55

	.type	.L.str.78,@object
.L.str.78:
	.asciz	"break from part work, frame left = %d\n"
	.size	.L.str.78, 39

	.type	.L.str.79,@object
.L.str.79:
	.asciz	"control bg update under overlay mode, overlay_bg_update=0\n"
	.size	.L.str.79, 59

	.type	.L.str.80,@object
.L.str.80:
	.asciz	"break from fast mode, process it\n"
	.size	.L.str.80, 34

	.type	.L.str.81,@object
.L.str.81:
	.asciz	"overlay mode start, frame_total=%d, bw_frame = %d\n"
	.size	.L.str.81, 51

	.type	.L.str.82,@object
.L.str.82:
	.asciz	"frame start under overlay, mode = %d, framecount = %d\n"
	.size	.L.str.82, 55

	.type	.L.str.83,@object
.L.str.83:
	.asciz	"mode change, force update lut, mode = %d, framecount = %d\n"
	.size	.L.str.83, 59

	.type	.L.str.84,@object
.L.str.84:
	.asciz	"update frame under overlay, mode = %d, framecount = %d\n"
	.size	.L.str.84, 56

	.type	.L.str.85,@object
.L.str.85:
	.asciz	"ebc is busy now, waiting prev mode end...\n"
	.size	.L.str.85, 43

	.type	.L.str.86,@object
.L.str.86:
	.asciz	"prev refresh mode end\n"
	.size	.L.str.86, 23

	.type	.L.str.87,@object
.L.str.87:
	.asciz	"auto mode start, frame_total=%d\n"
	.size	.L.str.87, 33

	.type	.L.str.88,@object
.L.str.88:
	.asciz	"last frame not complete, left = %d, change to force full\n"
	.size	.L.str.88, 58

	.type	.L.str.89,@object
.L.str.89:
	.asciz	"check_part_mode==0, no need refresh\n"
	.size	.L.str.89, 37

	.type	.L.str.90,@object
.L.str.90:
	.asciz	"check difference is 0, no need refresh\n"
	.size	.L.str.90, 40

	.type	.L.str.91,@object
.L.str.91:
	.asciz	"change from fast mode\n"
	.size	.L.str.91, 23

	.type	.L.str.92,@object
.L.str.92:
	.asciz	"frame start, mode = %d, framecount = %d vs %d\n"
	.size	.L.str.92, 47

	.type	.L.str.93,@object
.L.str.93:
	.asciz	"update repair buf\n"
	.size	.L.str.93, 19

	.type	.L.str.94,@object
.L.str.94:
	.asciz	"waiting frame done\n"
	.size	.L.str.94, 20

	.type	.L.str.95,@object
.L.str.95:
	.asciz	"----update repair buf timeout----\n"
	.size	.L.str.95, 35

	.type	.L.str.96,@object
.L.str.96:
	.asciz	"break from part work, do something before turn to overlay work\n"
	.size	.L.str.96, 64

	.type	.L.str.97,@object
.L.str.97:
	.asciz	"no buffer or next mode change, do repair..........\n"
	.size	.L.str.97, 52

	.type	.L.str.98,@object
.L.str.98:
	.asciz	"next mode change, do repair..........\n"
	.size	.L.str.98, 39

	.type	.L.str.99,@object
.L.str.99:
	.asciz	"no buffer, do last ghost remove..........\n"
	.size	.L.str.99, 43

	.type	.L.str.100,@object
.L.str.100:
	.asciz	"frame start, mode = %d, framecount = %d\n"
	.size	.L.str.100, 41

	.type	.L.str.101,@object
.L.str.101:
	.asciz	"ghost remove break, frame_left %d\n"
	.size	.L.str.101, 35

	.type	.L.str.102,@object
.L.str.102:
	.asciz	"ebc buffer mode %d error!!!\n"
	.size	.L.str.102, 29

	.type	.L.str.103,@object
.L.str.103:
	.asciz	"force temperature = %d\n"
	.size	.L.str.103, 24

	.type	.L.str.104,@object
.L.str.104:
	.asciz	"temperature = %d, out of range0~50 ,use 0 \n"
	.size	.L.str.104, 44

	.type	.L.str.105,@object
.L.str.105:
	.asciz	"temperature = %d, out of range0~50 ,use 50 \n"
	.size	.L.str.105, 45

	.type	.L.str.106,@object
.L.str.106:
	.asciz	"ebc_pmic_read_temp failed, ret = %d, use 25 \n"
	.size	.L.str.106, 46

	.type	.L.str.107,@object
.L.str.107:
	.asciz	"lut update use temperature_fix = %d, temperature = %d\n"
	.size	.L.str.107, 55

	.type	.L.str.108,@object
.L.str.108:
	.asciz	"lut update use temperature = %d, temperature_fix = %d\n"
	.size	.L.str.108, 55

	.type	.L.str.109,@object
.L.str.109:
	.asciz	"get lut data failed\n"
	.size	.L.str.109, 21

	.type	.L.str.110,@object
.L.str.110:
	.asciz	"%s: overlay no need to update\n"
	.size	.L.str.110, 31

	.type	.L__func__.ebc_frame_start,@object
.L__func__.ebc_frame_start:
	.asciz	"ebc_frame_start"
	.size	.L__func__.ebc_frame_start, 16

	.type	.L.str.111,@object
.L.str.111:
	.asciz	"%s: auto no need to update\n"
	.size	.L.str.111, 28

	.type	.L.str.112,@object
.L.str.112:
	.asciz	"record pix pos wf: [%d, %d]: [%02x --> %02x]\n"
	.size	.L.str.112, 46

	.type	.L.str.113,@object
.L.str.113:
	.asciz	"%s: overlay bg no need to update, overlay_bg_update=1\n"
	.size	.L.str.113, 55

	.type	.L__func__.ebc_overlay_bg_frame_start,@object
.L__func__.ebc_overlay_bg_frame_start:
	.asciz	"ebc_overlay_bg_frame_start"
	.size	.L__func__.ebc_overlay_bg_frame_start, 27

	.type	.L.str.114,@object
.L.str.114:
	.asciz	"ebc hw power on res:%d\n"
	.size	.L.str.114, 24

	.type	.L.str.115,@object
.L.str.115:
	.asciz	"ebc hw power off res:%d\n"
	.size	.L.str.115, 25

	.type	.L.str.116,@object
.L.str.116:
	.asciz	"ebc"
	.size	.L.str.116, 4

	.type	.L.str.117,@object
.L.str.117:
	.asciz	"ebc_frame_control_timeout, overlay_bg_update=1\n"
	.size	.L.str.117, 48

	.type	.L.str.118,@object
.L.str.118:
	.asciz	"ebc_overlay_enable_timeout\n"
	.size	.L.str.118, 28

	.type	.L.str.119,@object
.L.str.119:
	.asciz	"ulogo_addr="
	.size	.L.str.119, 12

	.type	.L.str.120,@object
.L.str.120:
	.asciz	"klogo_addr="
	.size	.L.str.120, 12

	.type	.L.str.121,@object
.L.str.121:
	.asciz	"ulogo_addr=0x%x"
	.size	.L.str.121, 16

	.type	.L.str.122,@object
.L.str.122:
	.asciz	"have ulogo display, ulogo addr = 0x%x\n"
	.size	.L.str.122, 39

	.type	.L.str.123,@object
.L.str.123:
	.asciz	"malloc ulogo buffer failed\n"
	.size	.L.str.123, 28

	.type	.L.str.124,@object
.L.str.124:
	.asciz	"klogo_addr=0x%x"
	.size	.L.str.124, 16

	.type	.L.str.125,@object
.L.str.125:
	.asciz	"need show klogo, klogo addr = 0x%x\n"
	.size	.L.str.125, 36

	.type	.L.str.126,@object
.L.str.126:
	.asciz	"malloc klogo buffer failed\n"
	.size	.L.str.126, 28

	.type	.L.str.127,@object
.L.str.127:
	.asciz	"no uboot logo, panel init\n"
	.size	.L.str.127, 27

	.type	.L.str.128,@object
.L.str.128:
	.asciz	"ebc_dev_logo"
	.size	.L.str.128, 13

	.type	.L.str.129,@object
.L.str.129:
	.asciz	"ebc_dev_reset"
	.size	.L.str.129, 14

	.type	ebc_misc,@object
	.data
	.p2align	3
ebc_misc:
	.word	243
	.zero	4
	.xword	.L.str.116
	.xword	ebc_ops
	.zero	16
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.hword	0
	.zero	6
	.size	ebc_misc, 80

	.type	waveform_misc,@object
	.p2align	3
waveform_misc:
	.word	244
	.zero	4
	.xword	.L.str.149
	.xword	waveform_ops
	.zero	16
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.hword	0
	.zero	6
	.size	waveform_misc, 80

	.type	dev_attr_waveform_version,@object
	.p2align	3
dev_attr_waveform_version:
	.xword	.L.str.151
	.hword	292
	.zero	6
	.xword	waveform_version_read
	.xword	0
	.size	dev_attr_waveform_version, 32

	.type	dev_attr_pmic_name,@object
	.p2align	3
dev_attr_pmic_name:
	.xword	.L.str.153
	.hword	292
	.zero	6
	.xword	pmic_name_read
	.xword	0
	.size	dev_attr_pmic_name, 32

	.type	dev_attr_pmic_temp,@object
	.p2align	3
dev_attr_pmic_temp:
	.xword	.L.str.154
	.hword	292
	.zero	6
	.xword	pmic_temp_read
	.xword	0
	.size	dev_attr_pmic_temp, 32

	.type	dev_attr_pmic_vcom,@object
	.p2align	3
dev_attr_pmic_vcom:
	.xword	.L.str.156
	.hword	420
	.zero	6
	.xword	pmic_vcom_read
	.xword	pmic_vcom_write
	.size	dev_attr_pmic_vcom, 32

	.type	dev_attr_ebc_version,@object
	.p2align	3
dev_attr_ebc_version:
	.xword	.L.str.159
	.hword	292
	.zero	6
	.xword	ebc_version_read
	.xword	0
	.size	dev_attr_ebc_version, 32

	.type	dev_attr_ebc_state,@object
	.p2align	3
dev_attr_ebc_state:
	.xword	.L.str.160
	.hword	292
	.zero	6
	.xword	ebc_state_read
	.xword	0
	.size	dev_attr_ebc_state, 32

	.type	dev_attr_ebc_buf_state,@object
	.p2align	3
dev_attr_ebc_buf_state:
	.xword	.L.str.161
	.hword	292
	.zero	6
	.xword	ebc_buf_state_read
	.xword	0
	.size	dev_attr_ebc_buf_state, 32

	.type	dev_attr_auto_frame_state,@object
	.p2align	3
dev_attr_auto_frame_state:
	.xword	.L.str.162
	.hword	292
	.zero	6
	.xword	auto_frame_state_read
	.xword	0
	.size	dev_attr_auto_frame_state, 32

	.type	dev_attr_ebc_debug_level,@object
	.p2align	3
dev_attr_ebc_debug_level:
	.xword	.L.str.164
	.hword	420
	.zero	6
	.xword	ebc_debug_level_read
	.xword	ebc_debug_level_write
	.size	dev_attr_ebc_debug_level, 32

	.type	dev_attr_wf_data,@object
	.p2align	3
dev_attr_wf_data:
	.xword	.L.str.165
	.hword	128
	.zero	6
	.xword	0
	.xword	wf_data_write
	.size	dev_attr_wf_data, 32

	.type	dev_attr_overlay_wf_data,@object
	.p2align	3
dev_attr_overlay_wf_data:
	.xword	.L.str.170
	.hword	128
	.zero	6
	.xword	0
	.xword	overlay_wf_data_write
	.size	dev_attr_overlay_wf_data, 32

	.type	dev_attr_ori_wf_data,@object
	.p2align	3
dev_attr_ori_wf_data:
	.xword	.L.str.171
	.hword	128
	.zero	6
	.xword	0
	.xword	ori_wf_data_write
	.size	dev_attr_ori_wf_data, 32

	.type	dev_attr_record_pix_wf,@object
	.p2align	3
dev_attr_record_pix_wf:
	.xword	.L.str.177
	.hword	128
	.zero	6
	.xword	0
	.xword	record_pix_wf_write
	.size	dev_attr_record_pix_wf, 32

	.type	ebc_ops,@object
	.section	.rodata,"a",@progbits
	.p2align	3
ebc_ops:
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	ebc_io_ctl
	.xword	ebc_io_ctl
	.xword	ebc_mmap
	.xword	0
	.xword	ebc_open
	.xword	0
	.xword	ebc_release
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.size	ebc_ops, 272

	.type	.L.str.131,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.131:
	.asciz	"%s: argp NULL\n"
	.size	.L.str.131, 15

	.type	.L__func__.ebc_io_ctl,@object
.L__func__.ebc_io_ctl:
	.asciz	"ebc_io_ctl"
	.size	.L__func__.ebc_io_ctl, 11

	.type	.L.str.132,@object
.L.str.132:
	.asciz	"enable bg control\n"
	.size	.L.str.132, 19

	.type	.L.str.133,@object
.L.str.133:
	.asciz	"disable bg control\n"
	.size	.L.str.133, 20

	.type	.L.str.134,@object
.L.str.134:
	.asciz	"enable ebc overlay, you can use osd buf to show something over the system display\n"
	.size	.L.str.134, 83

	.type	.L.str.135,@object
.L.str.135:
	.asciz	"disable ebc overlay\n"
	.size	.L.str.135, 21

	.type	.L.str.136,@object
.L.str.136:
	.asciz	"EBC_GET_BUFFER_INFO failed\n"
	.size	.L.str.136, 28

	.type	.L.str.137,@object
.L.str.137:
	.asciz	"EBC_SET_DIFF_PERCENT = %d\n"
	.size	.L.str.137, 27

	.type	.L.str.138,@object
.L.str.138:
	.asciz	"EBC_FB_BLANK\n"
	.size	.L.str.138, 14

	.type	.L.str.139,@object
.L.str.139:
	.asciz	"EBC_FB_UNBLANK\n"
	.size	.L.str.139, 16

	.type	.L.str.140,@object
.L.str.140:
	.asciz	"EBC_ENABLE_REPAIR = %d\n"
	.size	.L.str.140, 24

	.type	.L.str.141,@object
.L.str.141:
	.asciz	"EBC_BALANCE_CTL = %d\n"
	.size	.L.str.141, 22

	.type	.L.str.142,@object
.L.str.142:
	.asciz	"EBC_SET_FULL_REFRESH_WIDTH = %d\n"
	.size	.L.str.142, 33

	.type	.L.str.143,@object
.L.str.143:
	.asciz	"EBC_SET_FULL_REFRESH_TYPE = %d\n"
	.size	.L.str.143, 32

	.type	.L.str.144,@object
.L.str.144:
	.asciz	"EBC_SET_FORCE_TEMPERATURE = %d\n"
	.size	.L.str.144, 32

	.type	.L.str.145,@object
.L.str.145:
	.asciz	"EBC_ENABLE_WAVEFORM_FIX = %d\n"
	.size	.L.str.145, 30

	.type	.L.str.146,@object
.L.str.146:
	.asciz	"EBC_SET_REGAL_TYPE = %d\n"
	.size	.L.str.146, 25

	.type	.L.str.147,@object
.L.str.147:
	.asciz	"EBC_FORCE_FULL_USE_REGAL = %d\n"
	.size	.L.str.147, 31

	.type	.L.str.148,@object
.L.str.148:
	.asciz	"%s: unknown cmd\n"
	.size	.L.str.148, 17

	.type	.L.str.149,@object
.L.str.149:
	.asciz	"waveform"
	.size	.L.str.149, 9

	.type	waveform_ops,@object
	.section	.rodata,"a",@progbits
	.p2align	3
waveform_ops:
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	waveform_mmap
	.xword	0
	.xword	waveform_open
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.size	waveform_ops, 272

	.type	.L.str.151,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.151:
	.asciz	"waveform_version"
	.size	.L.str.151, 17

	.type	.L.str.152,@object
.L.str.152:
	.asciz	"%s\n"
	.size	.L.str.152, 4

	.type	.L.str.153,@object
.L.str.153:
	.asciz	"pmic_name"
	.size	.L.str.153, 10

	.type	.L.str.154,@object
.L.str.154:
	.asciz	"pmic_temp"
	.size	.L.str.154, 10

	.type	.L.str.155,@object
.L.str.155:
	.asciz	"%d\n"
	.size	.L.str.155, 4

	.type	.L.str.156,@object
.L.str.156:
	.asciz	"pmic_vcom"
	.size	.L.str.156, 10

	.type	.L.str.157,@object
.L.str.157:
	.asciz	"invalid value = %s\n"
	.size	.L.str.157, 20

	.type	.L.str.158,@object
.L.str.158:
	.asciz	"set vcom value failed\n"
	.size	.L.str.158, 23

	.type	.L.str.159,@object
.L.str.159:
	.asciz	"ebc_version"
	.size	.L.str.159, 12

	.type	.L.str.160,@object
.L.str.160:
	.asciz	"ebc_state"
	.size	.L.str.160, 10

	.type	.L.str.161,@object
.L.str.161:
	.asciz	"ebc_buf_state"
	.size	.L.str.161, 14

	.type	.L.str.162,@object
.L.str.162:
	.asciz	"auto_frame_state"
	.size	.L.str.162, 17

	.type	.L.str.163,@object
.L.str.163:
	.asciz	"0\n"
	.size	.L.str.163, 3

	.type	.L.str.164,@object
.L.str.164:
	.asciz	"ebc_debug_level"
	.size	.L.str.164, 16

	.type	.L.str.165,@object
.L.str.165:
	.asciz	"wf_data"
	.size	.L.str.165, 8

	.type	.L.str.166,@object
.L.str.166:
	.asciz	"603893"
	.size	.L.str.166, 7

	.type	.L.str.167,@object
.L.str.167:
	.asciz	"lutdata: %d frames\n"
	.size	.L.str.167, 20

	.type	.L.str.168,@object
.L.str.168:
	.asciz	"[%d-->%d]: \n"
	.size	.L.str.168, 13

	.type	.L.str.169,@object
.L.str.169:
	.asciz	"\001c\0017%d, "
	.size	.L.str.169, 9

	.type	.L.str.170,@object
.L.str.170:
	.asciz	"overlay_wf_data"
	.size	.L.str.170, 16

	.type	.L.str.171,@object
.L.str.171:
	.asciz	"ori_wf_data"
	.size	.L.str.171, 12

	.type	.L.str.172,@object
.L.str.172:
	.asciz	"malloc wf_table buffer failed\n"
	.size	.L.str.172, 31

	.type	.L.str.173,@object
.L.str.173:
	.asciz	"603893 %d %d"
	.size	.L.str.173, 13

	.type	.L.str.174,@object
.L.str.174:
	.asciz	"%s: wf mode %d on temp %d\n"
	.size	.L.str.174, 27

	.type	.L__func__.ori_wf_data_write,@object
.L__func__.ori_wf_data_write:
	.asciz	"ori_wf_data_write"
	.size	.L__func__.ori_wf_data_write, 18

	.type	.L.str.175,@object
.L.str.175:
	.asciz	"%s: err code\n"
	.size	.L.str.175, 14

	.type	.L.str.176,@object
.L.str.176:
	.asciz	"%s: err lut_type or temp\n"
	.size	.L.str.176, 26

	.type	.L.str.177,@object
.L.str.177:
	.asciz	"record_pix_wf"
	.size	.L.str.177, 14

	.type	.L.str.178,@object
.L.str.178:
	.asciz	"%d,%d%n"
	.size	.L.str.178, 8

	.type	.L.str.179,@object
.L.str.179:
	.asciz	"device suspend\n"
	.size	.L.str.179, 16

	.type	.L.str.180,@object
.L.str.180:
	.asciz	"device resume\n"
	.size	.L.str.180, 15

	.ident	"Android (8508608, based on r450784e) clang version 14.0.7 (https://android.googlesource.com/toolchain/llvm-project 4c603efb0cca074e9238af8b4106c30add4418f6)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ebc_exit
	.addrsig_sym ebc_init
	.addrsig_sym ebc_probe
	.addrsig_sym ebc_remove
	.addrsig_sym frame_done_callback
	.addrsig_sym ebc_auto_tast_function
	.addrsig_sym ebc_auto_assist_tast_function
	.addrsig_sym ebc_thread
	.addrsig_sym ebc_frame_control_timeout
	.addrsig_sym ebc_overlay_enable_timeout
	.addrsig_sym ebc_frame_timeout
	.addrsig_sym ebc_io_ctl
	.addrsig_sym ebc_mmap
	.addrsig_sym ebc_open
	.addrsig_sym ebc_release
	.addrsig_sym waveform_mmap
	.addrsig_sym waveform_open
	.addrsig_sym waveform_version_read
	.addrsig_sym pmic_name_read
	.addrsig_sym pmic_temp_read
	.addrsig_sym pmic_vcom_read
	.addrsig_sym pmic_vcom_write
	.addrsig_sym ebc_version_read
	.addrsig_sym ebc_state_read
	.addrsig_sym ebc_buf_state_read
	.addrsig_sym auto_frame_state_read
	.addrsig_sym ebc_debug_level_read
	.addrsig_sym ebc_debug_level_write
	.addrsig_sym wf_data_write
	.addrsig_sym overlay_wf_data_write
	.addrsig_sym ori_wf_data_write
	.addrsig_sym record_pix_wf_write
	.addrsig_sym ebc_suspend
	.addrsig_sym ebc_resume
	.addrsig_sym ebc_driver
	.addrsig_sym __UNIQUE_ID___addressable_ebc_init467
	.addrsig_sym __exitcall_ebc_exit
	.addrsig_sym __UNIQUE_ID_author468
	.addrsig_sym __UNIQUE_ID_description469
	.addrsig_sym __UNIQUE_ID_file470
	.addrsig_sym __UNIQUE_ID_license471
	.addrsig_sym ebc_match
	.addrsig_sym ebc_pm
	.addrsig_sym __cpu_possible_mask
	.addrsig_sym jiffies
	.addrsig_sym ebc_thread_wq
	.addrsig_sym ebc_auto_thread_sem
	.addrsig_sym ebc_assist_finished_flag_sem
	.addrsig_sym cpu_bit_bitmap
	.addrsig_sym ebc_auto_assist_thread_sem
	.addrsig_sym ebc_misc
	.addrsig_sym waveform_misc
	.addrsig_sym dev_attr_waveform_version
	.addrsig_sym dev_attr_pmic_name
	.addrsig_sym dev_attr_pmic_temp
	.addrsig_sym dev_attr_pmic_vcom
	.addrsig_sym dev_attr_ebc_version
	.addrsig_sym dev_attr_ebc_state
	.addrsig_sym dev_attr_ebc_buf_state
	.addrsig_sym dev_attr_auto_frame_state
	.addrsig_sym dev_attr_ebc_debug_level
	.addrsig_sym dev_attr_wf_data
	.addrsig_sym dev_attr_overlay_wf_data
	.addrsig_sym dev_attr_ori_wf_data
	.addrsig_sym dev_attr_record_pix_wf
	.addrsig_sym ebc_ops
	.addrsig_sym cpu_hwcaps
	.addrsig_sym gic_nonsecure_priorities
	.addrsig_sym gic_pmr_sync
	.addrsig_sym waveform_ops
