@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.section ewram_data,"aw"
	.align	2, 0
	.type	 sCreatingSpriteTemplate,object
	.size	 sCreatingSpriteTemplate,24
sCreatingSpriteTemplate:
	.space	24
	.align	2, 0
	.type	 sSpritePics,object
	.size	 sSpritePics,96
sSpritePics:
	.space	96
	.section .rodata
	.align	2, 0
	.type	 sDummyPicData,object
	.size	 sDummyPicData,12
sDummyPicData:
	.space	12
	.align	2, 0
	.type	 gUnknown_0860B064,object
	.size	 gUnknown_0860B064,8
gUnknown_0860B064:
	.space	1
	.byte	0x0
	.space	1
	.byte	0xc0
	.space	4
	.align	2, 0
	.type	 gUnknown_0860B06C,object
	.size	 gUnknown_0860B06C,8
gUnknown_0860B06C:
	.space	1
	.byte	0x1
	.space	1
	.byte	0xc0
	.space	4
.text
	.align	2, 0
	.type	 DummyPicSpriteCallback,function
	.thumb_func
DummyPicSpriteCallback:
	bx	lr
.Lfe1:
	.size	 DummyPicSpriteCallback,.Lfe1-DummyPicSpriteCallback
	.align	2, 0
	.globl	ResetAllPicSprites
	.type	 ResetAllPicSprites,function
	.thumb_func
ResetAllPicSprites:
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L9
	ldr	r3, .L9+0x4
	mov	r2, #0x7
.L7:
	add	r1, r3, #0
	add	r0, r4, #0
	ldmia	r0!, {r5, r6, r7}
	stmia	r1!, {r5, r6, r7}
	add	r3, r3, #0xc
	sub	r2, r2, #0x1
	cmp	r2, #0
	bge	.L7	@cond_branch
	mov	r0, #0x0
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L10:
	.align	2, 0
.L9:
	.word	sDummyPicData
	.word	sSpritePics
.Lfe2:
	.size	 ResetAllPicSprites,.Lfe2-ResetAllPicSprites
	.align	2, 0
	.type	 DecompressPic,function
	.thumb_func
DecompressPic:
	push	{r4, r5, r6, lr}
	add	sp, sp, #-0x4
	add	r6, r1, #0
	add	r4, r3, #0
	ldr	r1, [sp, #0x14]
	lsl	r0, r0, #0x10
	lsr	r3, r0, #0x10
	add	r5, r3, #0
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	lsl	r1, r1, #0x18
	cmp	r1, #0
	bne	.L12	@cond_branch
	cmp	r2, #0
	beq	.L13	@cond_branch
	lsl	r0, r3, #0x3
	ldr	r1, .L19
	b	.L18
.L20:
	.align	2, 0
.L19:
	.word	gMonFrontPicTable
.L13:
	lsl	r0, r3, #0x3
	ldr	r1, .L21
.L18:
	add	r0, r0, r1
	str	r2, [sp]
	add	r1, r4, #0
	add	r2, r3, #0
	add	r3, r6, #0
	bl	LoadSpecialPokePic_DontHandleDeoxys
	b	.L15
.L22:
	.align	2, 0
.L21:
	.word	gMonBackPicTable
.L12:
	cmp	r2, #0
	beq	.L16	@cond_branch
	lsl	r0, r3, #0x3
	ldr	r1, .L23
	add	r0, r0, r1
	add	r1, r4, #0
	add	r2, r3, #0
	bl	DecompressPicFromTable_DontHandleDeoxys
	b	.L15
.L24:
	.align	2, 0
.L23:
	.word	gTrainerFrontPicTable
.L16:
	lsl	r0, r5, #0x3
	ldr	r1, .L25
	add	r0, r0, r1
	add	r1, r4, #0
	add	r2, r5, #0
	bl	DecompressPicFromTable_DontHandleDeoxys
.L15:
	mov	r0, #0x0
	add	sp, sp, #0x4
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L26:
	.align	2, 0
.L25:
	.word	gTrainerBackPicTable
.Lfe3:
	.size	 DecompressPic,.Lfe3-DecompressPic
	.align	2, 0
	.type	 DecompressPic_HandleDeoxys,function
	.thumb_func
DecompressPic_HandleDeoxys:
	push	{r4, lr}
	add	sp, sp, #-0x8
	ldr	r4, [sp, #0x10]
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	str	r4, [sp]
	mov	r4, #0x0
	str	r4, [sp, #0x4]
	bl	DecompressPic
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	add	sp, sp, #0x8
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe4:
	.size	 DecompressPic_HandleDeoxys,.Lfe4-DecompressPic_HandleDeoxys
	.align	2, 0
	.type	 LoadPicPaletteByTagOrSlot,function
	.thumb_func
LoadPicPaletteByTagOrSlot:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	r7, r1, #0
	mov	r8, r2
	ldr	r1, [sp, #0x18]
	ldr	r2, [sp, #0x1c]
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
	add	r6, r4, #0
	lsl	r3, r3, #0x18
	lsr	r5, r3, #0x18
	mov	ip, r5
	lsl	r1, r1, #0x10
	lsr	r3, r1, #0x10
	add	r1, r3, #0
	lsl	r2, r2, #0x18
	cmp	r2, #0
	bne	.L29	@cond_branch
	ldr	r0, .L36
	cmp	r3, r0
	bne	.L30	@cond_branch
	ldr	r2, .L36+0x4
	ldrh	r1, [r2, #0x2]
	add	r0, r3, #0
	orr	r0, r0, r1
	strh	r0, [r2, #0x2]
	add	r0, r4, #0
	add	r1, r7, #0
	mov	r2, r8
	bl	GetMonSpritePalFromSpeciesAndPersonality
	lsl	r1, r5, #0x14
	b	.L35
.L37:
	.align	2, 0
.L36:
	.word	0xffff
	.word	sCreatingSpriteTemplate
.L30:
	ldr	r0, .L38
	strh	r3, [r0, #0x2]
	add	r0, r4, #0
	add	r1, r7, #0
	mov	r2, r8
	bl	GetMonSpritePalStructFromOtIdPersonality
	bl	LoadCompressedSpritePalette
	b	.L32
.L39:
	.align	2, 0
.L38:
	.word	sCreatingSpriteTemplate
.L29:
	ldr	r0, .L40
	cmp	r3, r0
	bne	.L33	@cond_branch
	ldr	r2, .L40+0x4
	ldrh	r1, [r2, #0x2]
	add	r0, r3, #0
	orr	r0, r0, r1
	strh	r0, [r2, #0x2]
	ldr	r1, .L40+0x8
	lsl	r0, r4, #0x3
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	r2, ip
	lsl	r1, r2, #0x14
.L35:
	mov	r2, #0x80
	lsl	r2, r2, #0x11
	add	r1, r1, r2
	lsr	r1, r1, #0x10
	mov	r2, #0x20
	bl	LoadCompressedPalette
	b	.L32
.L41:
	.align	2, 0
.L40:
	.word	0xffff
	.word	sCreatingSpriteTemplate
	.word	gTrainerFrontPicPaletteTable
.L33:
	ldr	r0, .L42
	strh	r1, [r0, #0x2]
	lsl	r0, r6, #0x3
	ldr	r1, .L42+0x4
	add	r0, r0, r1
	bl	LoadCompressedSpritePalette
.L32:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L43:
	.align	2, 0
.L42:
	.word	sCreatingSpriteTemplate
	.word	gTrainerFrontPicPaletteTable
.Lfe5:
	.size	 LoadPicPaletteByTagOrSlot,.Lfe5-LoadPicPaletteByTagOrSlot
	.align	2, 0
	.type	 LoadPicPaletteBySlot,function
	.thumb_func
LoadPicPaletteBySlot:
	push	{r4, r5, lr}
	add	r5, r1, #0
	ldr	r1, [sp, #0xc]
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	lsl	r3, r3, #0x18
	lsr	r4, r3, #0x18
	lsl	r1, r1, #0x18
	cmp	r1, #0
	bne	.L45	@cond_branch
	add	r1, r5, #0
	bl	GetMonSpritePalFromSpeciesAndPersonality
	lsl	r1, r4, #0x4
	mov	r2, #0x20
	bl	LoadCompressedPalette
	b	.L46
.L45:
	ldr	r1, .L47
	lsl	r0, r0, #0x3
	add	r0, r0, r1
	ldr	r0, [r0]
	lsl	r1, r4, #0x4
	mov	r2, #0x20
	bl	LoadCompressedPalette
.L46:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L48:
	.align	2, 0
.L47:
	.word	gTrainerFrontPicPaletteTable
.Lfe6:
	.size	 LoadPicPaletteBySlot,.Lfe6-LoadPicPaletteBySlot
	.align	2, 0
	.type	 AssignSpriteAnimsTable,function
	.thumb_func
AssignSpriteAnimsTable:
	push	{lr}
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L50	@cond_branch
	ldr	r1, .L52
	ldr	r0, .L52+0x4
	str	r0, [r1, #0x8]
	b	.L51
.L53:
	.align	2, 0
.L52:
	.word	sCreatingSpriteTemplate
	.word	gUnknown_082FF70C
.L50:
	ldr	r0, .L54
	ldr	r1, .L54+0x4
	ldr	r1, [r1]
	str	r1, [r0, #0x8]
.L51:
	pop	{r0}
	bx	r0
.L55:
	.align	2, 0
.L54:
	.word	sCreatingSpriteTemplate
	.word	gTrainerFrontAnimsPtrTable
.Lfe7:
	.size	 AssignSpriteAnimsTable,.Lfe7-AssignSpriteAnimsTable
	.align	2, 0
	.type	 CreatePicSprite,function
	.thumb_func
CreatePicSprite:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x30
	str	r1, [sp, #0xc]
	str	r2, [sp, #0x10]
	ldr	r1, [sp, #0x50]
	ldr	r2, [sp, #0x54]
	ldr	r4, [sp, #0x58]
	ldr	r5, [sp, #0x5c]
	ldr	r6, [sp, #0x60]
	ldr	r7, [sp, #0x64]
	mov	r8, r7
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	str	r0, [sp, #0x8]
	lsl	r3, r3, #0x18
	lsr	r3, r3, #0x18
	str	r3, [sp, #0x14]
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	str	r1, [sp, #0x18]
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	str	r2, [sp, #0x1c]
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	str	r4, [sp, #0x20]
	lsl	r5, r5, #0x10
	lsr	r5, r5, #0x10
	mov	sl, r5
	lsl	r6, r6, #0x18
	lsr	r6, r6, #0x18
	mov	r9, r6
	mov	r0, r8
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	mov	r4, #0x0
	ldr	r1, .L76
	ldrb	r0, [r1, #0xb]
	cmp	r0, #0
	beq	.L58	@cond_branch
.L59:
	add	r0, r4, #0x1
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	cmp	r4, #0x7
	bhi	.L58	@cond_branch
	lsl	r0, r4, #0x1
	add	r0, r0, r4
	lsl	r0, r0, #0x2
	add	r0, r0, r1
	ldrb	r0, [r0, #0xb]
	cmp	r0, #0
	bne	.L59	@cond_branch
.L58:
	cmp	r4, #0x8
	beq	.L75	@cond_branch
	mov	r0, #0x80
	lsl	r0, r0, #0x6
	bl	Alloc
	add	r7, r0, #0
	cmp	r7, #0
	beq	.L75	@cond_branch
	mov	r0, #0x20
	bl	Alloc
	mov	r8, r0
	cmp	r0, #0
	bne	.L65	@cond_branch
	add	r0, r7, #0
	bl	Free
.L75:
	ldr	r0, .L76+0x4
	b	.L73
.L77:
	.align	2, 0
.L76:
	.word	sSpritePics
	.word	0xffff
.L65:
	mov	r1, r9
	str	r1, [sp]
	str	r5, [sp, #0x4]
	ldr	r0, [sp, #0x8]
	ldr	r1, [sp, #0x10]
	ldr	r2, [sp, #0x14]
	add	r3, r7, #0
	bl	DecompressPic
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L75	@cond_branch
	lsl	r2, r4, #0x1
	str	r2, [sp, #0x2c]
	ldr	r5, .L78
	ldr	r0, .L78+0x4
	mov	ip, r0
	ldr	r1, [sp, #0x18]
	lsl	r1, r1, #0x10
	str	r1, [sp, #0x24]
	ldr	r2, [sp, #0x1c]
	lsl	r2, r2, #0x10
	str	r2, [sp, #0x28]
	mov	r3, #0x80
	lsl	r3, r3, #0x4
	mov	r0, r8
	add	r1, r7, #0
	add	r6, r3, #0
	mov	r2, #0x3
.L70:
	str	r1, [r0]
	strh	r3, [r0, #0x4]
	add	r0, r0, #0x8
	add	r1, r1, r6
	sub	r2, r2, #0x1
	cmp	r2, #0
	bge	.L70	@cond_branch
	ldr	r0, .L78+0x8
	strh	r0, [r5]
	mov	r0, ip
	str	r0, [r5, #0x4]
	mov	r0, r9
	bl	AssignSpriteAnimsTable
	mov	r1, r8
	str	r1, [r5, #0xc]
	ldr	r0, .L78+0xc
	str	r0, [r5, #0x10]
	ldr	r0, .L78+0x10
	str	r0, [r5, #0x14]
	mov	r2, sl
	str	r2, [sp]
	mov	r0, r9
	str	r0, [sp, #0x4]
	ldr	r0, [sp, #0x8]
	ldr	r1, [sp, #0xc]
	ldr	r2, [sp, #0x10]
	ldr	r3, [sp, #0x20]
	bl	LoadPicPaletteByTagOrSlot
	ldr	r2, [sp, #0x24]
	asr	r1, r2, #0x10
	ldr	r0, [sp, #0x28]
	asr	r2, r0, #0x10
	add	r0, r5, #0
	mov	r3, #0x0
	bl	CreateSprite
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	add	r6, r2, #0
	ldr	r0, .L78+0x8
	cmp	sl, r0
	bne	.L72	@cond_branch
	ldr	r0, .L78+0x14
	lsl	r1, r2, #0x4
	add	r1, r1, r2
	lsl	r1, r1, #0x2
	add	r1, r1, r0
	ldr	r2, [sp, #0x20]
	lsl	r3, r2, #0x4
	ldrb	r2, [r1, #0x5]
	mov	r0, #0xf
	and	r0, r0, r2
	orr	r0, r0, r3
	strb	r0, [r1, #0x5]
.L72:
	ldr	r1, .L78+0x18
	ldr	r2, [sp, #0x2c]
	add	r0, r2, r4
	lsl	r0, r0, #0x2
	add	r2, r0, r1
	str	r7, [r2]
	add	r1, r1, #0x4
	add	r0, r0, r1
	mov	r7, r8
	str	r7, [r0]
	mov	r0, sl
	strh	r0, [r2, #0x8]
	strb	r6, [r2, #0xa]
	mov	r0, #0x1
	strb	r0, [r2, #0xb]
	add	r0, r6, #0
.L73:
	add	sp, sp, #0x30
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L79:
	.align	2, 0
.L78:
	.word	sCreatingSpriteTemplate
	.word	gUnknown_0860B064
	.word	0xffff
	.word	gDummySpriteAffineAnimTable
	.word	DummyPicSpriteCallback
	.word	gSprites
	.word	sSpritePics
.Lfe8:
	.size	 CreatePicSprite,.Lfe8-CreatePicSprite
	.align	2, 0
	.type	 CreatePicSprite_HandleDeoxys,function
	.thumb_func
CreatePicSprite_HandleDeoxys:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	add	sp, sp, #-0x18
	ldr	r4, [sp, #0x34]
	ldr	r5, [sp, #0x38]
	ldr	r6, [sp, #0x3c]
	ldr	r7, [sp, #0x40]
	mov	r8, r7
	ldr	r7, [sp, #0x44]
	mov	r9, r7
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	lsl	r3, r3, #0x18
	lsr	r3, r3, #0x18
	lsl	r6, r6, #0x18
	lsr	r6, r6, #0x18
	mov	r7, r8
	lsl	r7, r7, #0x10
	lsr	r7, r7, #0x10
	mov	r8, r7
	mov	r7, r9
	lsl	r7, r7, #0x18
	lsr	r7, r7, #0x18
	lsl	r4, r4, #0x10
	asr	r4, r4, #0x10
	str	r4, [sp]
	lsl	r5, r5, #0x10
	asr	r5, r5, #0x10
	str	r5, [sp, #0x4]
	str	r6, [sp, #0x8]
	mov	r4, r8
	str	r4, [sp, #0xc]
	str	r7, [sp, #0x10]
	mov	r4, #0x0
	str	r4, [sp, #0x14]
	bl	CreatePicSprite
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	add	sp, sp, #0x18
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe9:
	.size	 CreatePicSprite_HandleDeoxys,.Lfe9-CreatePicSprite_HandleDeoxys
	.align	2, 0
	.globl	CreatePicSprite2
	.type	 CreatePicSprite2,function
	.thumb_func
CreatePicSprite2:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x2c
	str	r1, [sp, #0x8]
	str	r2, [sp, #0xc]
	ldr	r2, [sp, #0x4c]
	ldr	r4, [sp, #0x50]
	ldr	r5, [sp, #0x54]
	ldr	r6, [sp, #0x58]
	ldr	r1, [sp, #0x5c]
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	lsl	r3, r3, #0x18
	lsr	r7, r3, #0x18
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	str	r2, [sp, #0x10]
	lsl	r4, r4, #0x10
	lsr	r4, r4, #0x10
	str	r4, [sp, #0x14]
	lsl	r5, r5, #0x18
	lsr	r5, r5, #0x18
	str	r5, [sp, #0x18]
	lsl	r6, r6, #0x10
	lsr	r6, r6, #0x10
	str	r6, [sp, #0x1c]
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	bl	GetFormSpeciesId
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	mov	sl, r0
	mov	r5, #0x0
	ldr	r1, .L108
	ldrb	r0, [r1, #0xb]
	cmp	r0, #0
	beq	.L83	@cond_branch
.L84:
	add	r0, r5, #0x1
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	cmp	r5, #0x7
	bhi	.L83	@cond_branch
	lsl	r0, r5, #0x1
	add	r0, r0, r5
	lsl	r0, r0, #0x2
	add	r0, r0, r1
	ldrb	r0, [r0, #0xb]
	cmp	r0, #0
	bne	.L84	@cond_branch
.L83:
	cmp	r5, #0x8
	beq	.L106	@cond_branch
	mov	r0, #0x80
	lsl	r0, r0, #0x6
	bl	Alloc
	add	r6, r0, #0
	cmp	r6, #0
	beq	.L106	@cond_branch
	mov	r0, #0x80
	and	r0, r0, r7
	cmp	r0, #0
	beq	.L90	@cond_branch
	mov	r0, #0x7f
	and	r7, r7, r0
	mov	r0, #0x3
	mov	r9, r0
	b	.L91
.L109:
	.align	2, 0
.L108:
	.word	sSpritePics
.L90:
	mov	r9, r7
.L91:
	mov	r0, #0x20
	bl	Alloc
	mov	r8, r0
	cmp	r0, #0
	bne	.L92	@cond_branch
	add	r0, r6, #0
	bl	Free
.L106:
	ldr	r0, .L110
	b	.L104
.L111:
	.align	2, 0
.L110:
	.word	0xffff
.L92:
	mov	r0, #0x0
	str	r0, [sp]
	str	r0, [sp, #0x4]
	mov	r0, sl
	ldr	r1, [sp, #0xc]
	add	r2, r7, #0
	add	r3, r6, #0
	bl	DecompressPic
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L106	@cond_branch
	lsl	r1, r5, #0x1
	str	r1, [sp, #0x28]
	ldr	r4, .L112
	mov	r2, sl
	lsl	r2, r2, #0x2
	mov	ip, r2
	ldr	r0, [sp, #0x10]
	lsl	r0, r0, #0x10
	str	r0, [sp, #0x20]
	ldr	r1, [sp, #0x14]
	lsl	r1, r1, #0x10
	str	r1, [sp, #0x24]
	mov	r3, #0x80
	lsl	r3, r3, #0x4
	mov	r0, r8
	add	r1, r6, #0
	add	r7, r3, #0
	mov	r2, #0x3
.L97:
	str	r1, [r0]
	strh	r3, [r0, #0x4]
	add	r0, r0, #0x8
	add	r1, r1, r7
	sub	r2, r2, #0x1
	cmp	r2, #0
	bge	.L97	@cond_branch
	ldr	r0, .L112+0x4
	strh	r0, [r4]
	ldr	r0, .L112+0x8
	add	r0, r0, ip
	ldr	r0, [r0]
	str	r0, [r4, #0x8]
	mov	r2, r8
	str	r2, [r4, #0xc]
	mov	r0, r9
	cmp	r0, #0x1
	bne	.L99	@cond_branch
	ldr	r0, .L112+0xc
	b	.L107
.L113:
	.align	2, 0
.L112:
	.word	sCreatingSpriteTemplate
	.word	0xffff
	.word	gMonFrontAnimsPtrTable
	.word	gUnknown_082FF694
.L99:
	mov	r1, r9
	cmp	r1, #0
	bne	.L101	@cond_branch
	ldr	r0, .L114
.L107:
	str	r0, [r4, #0x10]
	ldr	r0, .L114+0x4
	str	r0, [r4, #0x4]
	b	.L100
.L115:
	.align	2, 0
.L114:
	.word	gUnknown_082FF618
	.word	gUnknown_0860B06C
.L101:
	ldr	r0, .L116
	str	r0, [r4, #0x4]
	ldr	r0, .L116+0x4
	str	r0, [r4, #0x10]
.L100:
	ldr	r2, .L116+0x8
	str	r2, [r4, #0x14]
	ldr	r0, [sp, #0x1c]
	str	r0, [sp]
	mov	r0, #0x0
	str	r0, [sp, #0x4]
	mov	r0, sl
	ldr	r1, [sp, #0x8]
	ldr	r2, [sp, #0xc]
	ldr	r3, [sp, #0x18]
	bl	LoadPicPaletteByTagOrSlot
	ldr	r2, [sp, #0x20]
	asr	r1, r2, #0x10
	ldr	r0, [sp, #0x24]
	asr	r2, r0, #0x10
	add	r0, r4, #0
	mov	r3, #0x0
	bl	CreateSprite
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	add	r4, r2, #0
	ldr	r0, .L116+0xc
	ldr	r1, [sp, #0x1c]
	cmp	r1, r0
	bne	.L103	@cond_branch
	ldr	r0, .L116+0x10
	lsl	r1, r2, #0x4
	add	r1, r1, r2
	lsl	r1, r1, #0x2
	add	r1, r1, r0
	ldr	r2, [sp, #0x18]
	lsl	r3, r2, #0x4
	ldrb	r2, [r1, #0x5]
	mov	r0, #0xf
	and	r0, r0, r2
	orr	r0, r0, r3
	strb	r0, [r1, #0x5]
.L103:
	ldr	r1, .L116+0x14
	ldr	r2, [sp, #0x28]
	add	r0, r2, r5
	lsl	r0, r0, #0x2
	add	r2, r0, r1
	str	r6, [r2]
	add	r1, r1, #0x4
	add	r0, r0, r1
	mov	r1, r8
	str	r1, [r0]
	mov	r0, sp
	ldrh	r0, [r0, #0x1c]
	strh	r0, [r2, #0x8]
	strb	r4, [r2, #0xa]
	mov	r0, #0x1
	strb	r0, [r2, #0xb]
	add	r0, r4, #0
.L104:
	add	sp, sp, #0x2c
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L117:
	.align	2, 0
.L116:
	.word	gUnknown_0860B064
	.word	gDummySpriteAffineAnimTable
	.word	DummyPicSpriteCallback
	.word	0xffff
	.word	gSprites
	.word	sSpritePics
.Lfe10:
	.size	 CreatePicSprite2,.Lfe10-CreatePicSprite2
	.align	2, 0
	.type	 FreeAndDestroyPicSpriteInternal,function
	.thumb_func
FreeAndDestroyPicSpriteInternal:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
	mov	r2, #0x0
	ldr	r0, .L128
	ldrb	r1, [r0, #0xa]
	add	r3, r0, #0
	cmp	r1, r4
	beq	.L120	@cond_branch
	add	r1, r3, #0
.L121:
	add	r0, r2, #0x1
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	cmp	r2, #0x7
	bhi	.L120	@cond_branch
	lsl	r0, r2, #0x1
	add	r0, r0, r2
	lsl	r0, r0, #0x2
	add	r0, r0, r1
	ldrb	r0, [r0, #0xa]
	cmp	r0, r4
	bne	.L121	@cond_branch
.L120:
	cmp	r2, #0x8
	bne	.L125	@cond_branch
	ldr	r0, .L128+0x4
	b	.L127
.L129:
	.align	2, 0
.L128:
	.word	sSpritePics
	.word	0xffff
.L125:
	lsl	r0, r2, #0x1
	add	r0, r0, r2
	lsl	r0, r0, #0x2
	add	r5, r0, r3
	ldr	r1, [r5]
	mov	r8, r1
	add	r1, r3, #0x4
	add	r0, r0, r1
	ldr	r7, [r0]
	ldrh	r1, [r5, #0x8]
	ldr	r0, .L130
	lsl	r6, r4, #0x4
	cmp	r1, r0
	beq	.L126	@cond_branch
	ldr	r1, .L130+0x4
	add	r0, r6, r4
	lsl	r0, r0, #0x2
	add	r0, r0, r1
	ldrb	r0, [r0, #0x5]
	lsr	r0, r0, #0x4
	bl	GetSpritePaletteTagByPaletteNum
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	bl	FreeSpritePaletteByTag
.L126:
	add	r0, r6, r4
	lsl	r0, r0, #0x2
	ldr	r1, .L130+0x4
	add	r0, r0, r1
	bl	DestroySprite
	mov	r0, r8
	bl	Free
	add	r0, r7, #0
	bl	Free
	add	r1, r5, #0
	ldr	r0, .L130+0x8
	ldmia	r0!, {r2, r3, r4}
	stmia	r1!, {r2, r3, r4}
	mov	r0, #0x0
.L127:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L131:
	.align	2, 0
.L130:
	.word	0xffff
	.word	gSprites
	.word	sDummyPicData
.Lfe11:
	.size	 FreeAndDestroyPicSpriteInternal,.Lfe11-FreeAndDestroyPicSpriteInternal
	.align	2, 0
	.type	 sub_818D65C,function
	.thumb_func
sub_818D65C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	add	sp, sp, #-0x8
	mov	r9, r1
	add	r7, r2, #0
	add	r4, r3, #0
	ldr	r1, [sp, #0x24]
	ldr	r2, [sp, #0x28]
	ldr	r3, [sp, #0x2c]
	lsl	r0, r0, #0x10
	lsr	r5, r0, #0x10
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	mov	r8, r1
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	lsl	r3, r3, #0x18
	lsr	r6, r3, #0x18
	add	r0, r2, #0
	mov	r1, #0x7
	bl	GetWindowAttribute
	add	r3, r0, #0
	mov	r0, #0x0
	str	r0, [sp]
	str	r0, [sp, #0x4]
	add	r0, r5, #0
	add	r1, r7, #0
	add	r2, r4, #0
	bl	DecompressPic
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L133	@cond_branch
	str	r6, [sp]
	add	r0, r5, #0
	mov	r1, r9
	add	r2, r7, #0
	mov	r3, r8
	bl	LoadPicPaletteBySlot
	mov	r0, #0x0
	b	.L134
.L133:
	ldr	r0, .L135
.L134:
	add	sp, sp, #0x8
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L136:
	.align	2, 0
.L135:
	.word	0xffff
.Lfe12:
	.size	 sub_818D65C,.Lfe12-sub_818D65C
	.align	2, 0
	.type	 CreateTrainerCardSprite,function
	.thumb_func
CreateTrainerCardSprite:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x24
	str	r1, [sp, #0x18]
	str	r2, [sp, #0x1c]
	ldr	r1, [sp, #0x44]
	ldr	r2, [sp, #0x48]
	ldr	r4, [sp, #0x4c]
	ldr	r5, [sp, #0x50]
	ldr	r6, [sp, #0x54]
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	mov	r8, r0
	lsl	r3, r3, #0x18
	lsr	r7, r3, #0x18
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	mov	sl, r1
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	mov	r9, r2
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	str	r4, [sp, #0x20]
	lsl	r5, r5, #0x18
	lsr	r5, r5, #0x18
	lsl	r6, r6, #0x18
	lsr	r6, r6, #0x18
	mov	r0, #0x80
	lsl	r0, r0, #0x6
	bl	Alloc
	add	r4, r0, #0
	cmp	r4, #0
	beq	.L138	@cond_branch
	str	r6, [sp]
	mov	r0, #0x0
	str	r0, [sp, #0x4]
	mov	r0, r8
	ldr	r1, [sp, #0x1c]
	add	r2, r7, #0
	add	r3, r4, #0
	bl	DecompressPic
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L138	@cond_branch
	mov	r0, #0x40
	str	r0, [sp]
	str	r0, [sp, #0x4]
	mov	r1, sl
	str	r1, [sp, #0x8]
	mov	r1, r9
	str	r1, [sp, #0xc]
	str	r0, [sp, #0x10]
	str	r0, [sp, #0x14]
	add	r0, r5, #0
	add	r1, r4, #0
	mov	r2, #0x0
	mov	r3, #0x0
	bl	BlitBitmapRectToWindow
	str	r6, [sp]
	mov	r0, r8
	ldr	r1, [sp, #0x18]
	ldr	r2, [sp, #0x1c]
	ldr	r3, [sp, #0x20]
	bl	LoadPicPaletteBySlot
	add	r0, r4, #0
	bl	Free
	mov	r0, #0x0
	b	.L139
.L138:
	ldr	r0, .L140
.L139:
	add	sp, sp, #0x24
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L141:
	.align	2, 0
.L140:
	.word	0xffff
.Lfe13:
	.size	 CreateTrainerCardSprite,.Lfe13-CreateTrainerCardSprite
	.align	2, 0
	.type	 CreateMonPicSprite,function
	.thumb_func
CreateMonPicSprite:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	add	sp, sp, #-0x18
	ldr	r4, [sp, #0x34]
	ldr	r5, [sp, #0x38]
	ldr	r6, [sp, #0x3c]
	ldr	r7, [sp, #0x40]
	mov	r8, r7
	ldr	r7, [sp, #0x44]
	mov	r9, r7
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	lsl	r3, r3, #0x18
	lsr	r3, r3, #0x18
	lsl	r6, r6, #0x18
	lsr	r6, r6, #0x18
	mov	r7, r8
	lsl	r7, r7, #0x10
	lsr	r7, r7, #0x10
	mov	r8, r7
	mov	r7, r9
	lsl	r7, r7, #0x18
	lsr	r7, r7, #0x18
	lsl	r4, r4, #0x10
	asr	r4, r4, #0x10
	str	r4, [sp]
	lsl	r5, r5, #0x10
	asr	r5, r5, #0x10
	str	r5, [sp, #0x4]
	str	r6, [sp, #0x8]
	mov	r4, r8
	str	r4, [sp, #0xc]
	mov	r4, #0x0
	str	r4, [sp, #0x10]
	str	r7, [sp, #0x14]
	bl	CreatePicSprite
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	add	sp, sp, #0x18
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe14:
	.size	 CreateMonPicSprite,.Lfe14-CreateMonPicSprite
	.align	2, 0
	.globl	CreateMonPicSprite_HandleDeoxys
	.type	 CreateMonPicSprite_HandleDeoxys,function
	.thumb_func
CreateMonPicSprite_HandleDeoxys:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	sp, sp, #-0x14
	ldr	r4, [sp, #0x2c]
	ldr	r5, [sp, #0x30]
	ldr	r6, [sp, #0x34]
	ldr	r7, [sp, #0x38]
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	lsl	r3, r3, #0x18
	lsr	r3, r3, #0x18
	lsl	r6, r6, #0x18
	lsr	r6, r6, #0x18
	lsl	r7, r7, #0x10
	lsr	r7, r7, #0x10
	lsl	r4, r4, #0x10
	asr	r4, r4, #0x10
	str	r4, [sp]
	lsl	r5, r5, #0x10
	asr	r5, r5, #0x10
	str	r5, [sp, #0x4]
	str	r6, [sp, #0x8]
	str	r7, [sp, #0xc]
	mov	r4, #0x0
	str	r4, [sp, #0x10]
	bl	CreateMonPicSprite
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	add	sp, sp, #0x14
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe15:
	.size	 CreateMonPicSprite_HandleDeoxys,.Lfe15-CreateMonPicSprite_HandleDeoxys
	.align	2, 0
	.globl	FreeAndDestroyMonPicSprite
	.type	 FreeAndDestroyMonPicSprite,function
	.thumb_func
FreeAndDestroyMonPicSprite:
	push	{lr}
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	bl	FreeAndDestroyPicSpriteInternal
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	pop	{r1}
	bx	r1
.Lfe16:
	.size	 FreeAndDestroyMonPicSprite,.Lfe16-FreeAndDestroyMonPicSprite
	.align	2, 0
	.globl	sub_818D834
	.type	 sub_818D834,function
	.thumb_func
sub_818D834:
	push	{r4, r5, lr}
	add	sp, sp, #-0xc
	ldr	r4, [sp, #0x18]
	ldr	r5, [sp, #0x1c]
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	lsl	r3, r3, #0x18
	lsr	r3, r3, #0x18
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	lsl	r5, r5, #0x18
	lsr	r5, r5, #0x18
	str	r4, [sp]
	str	r5, [sp, #0x4]
	mov	r4, #0x0
	str	r4, [sp, #0x8]
	bl	sub_818D65C
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	add	sp, sp, #0xc
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe17:
	.size	 sub_818D834,.Lfe17-sub_818D834
	.align	2, 0
	.globl	CreateTrainerCardMonIconSprite
	.type	 CreateTrainerCardMonIconSprite,function
	.thumb_func
CreateTrainerCardMonIconSprite:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	sp, sp, #-0x14
	ldr	r4, [sp, #0x2c]
	ldr	r5, [sp, #0x30]
	ldr	r6, [sp, #0x34]
	ldr	r7, [sp, #0x38]
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	lsl	r3, r3, #0x18
	lsr	r3, r3, #0x18
	lsl	r4, r4, #0x10
	lsr	r4, r4, #0x10
	lsl	r5, r5, #0x10
	lsr	r5, r5, #0x10
	lsl	r6, r6, #0x18
	lsr	r6, r6, #0x18
	lsl	r7, r7, #0x18
	lsr	r7, r7, #0x18
	str	r4, [sp]
	str	r5, [sp, #0x4]
	str	r6, [sp, #0x8]
	str	r7, [sp, #0xc]
	mov	r4, #0x0
	str	r4, [sp, #0x10]
	bl	CreateTrainerCardSprite
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	add	sp, sp, #0x14
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe18:
	.size	 CreateTrainerCardMonIconSprite,.Lfe18-CreateTrainerCardMonIconSprite
	.align	2, 0
	.globl	CreateTrainerPicSprite
	.type	 CreateTrainerPicSprite,function
	.thumb_func
CreateTrainerPicSprite:
	push	{r4, r5, lr}
	add	sp, sp, #-0x14
	add	r5, r1, #0
	ldr	r1, [sp, #0x20]
	ldr	r4, [sp, #0x24]
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	lsl	r5, r5, #0x18
	lsr	r5, r5, #0x18
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	lsl	r4, r4, #0x10
	lsr	r4, r4, #0x10
	lsl	r2, r2, #0x10
	asr	r2, r2, #0x10
	str	r2, [sp]
	lsl	r3, r3, #0x10
	asr	r3, r3, #0x10
	str	r3, [sp, #0x4]
	str	r1, [sp, #0x8]
	str	r4, [sp, #0xc]
	mov	r1, #0x1
	str	r1, [sp, #0x10]
	mov	r1, #0x0
	mov	r2, #0x0
	add	r3, r5, #0
	bl	CreatePicSprite_HandleDeoxys
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	add	sp, sp, #0x14
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe19:
	.size	 CreateTrainerPicSprite,.Lfe19-CreateTrainerPicSprite
	.align	2, 0
	.globl	FreeAndDestroyTrainerPicSprite
	.type	 FreeAndDestroyTrainerPicSprite,function
	.thumb_func
FreeAndDestroyTrainerPicSprite:
	push	{lr}
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	bl	FreeAndDestroyPicSpriteInternal
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	pop	{r1}
	bx	r1
.Lfe20:
	.size	 FreeAndDestroyTrainerPicSprite,.Lfe20-FreeAndDestroyTrainerPicSprite
	.align	2, 0
	.globl	sub_818D904
	.type	 sub_818D904,function
	.thumb_func
sub_818D904:
	push	{r4, lr}
	add	sp, sp, #-0xc
	add	r4, r1, #0
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	lsl	r3, r3, #0x18
	lsr	r3, r3, #0x18
	str	r2, [sp]
	str	r3, [sp, #0x4]
	mov	r1, #0x1
	str	r1, [sp, #0x8]
	mov	r1, #0x0
	mov	r2, #0x0
	add	r3, r4, #0
	bl	sub_818D65C
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	add	sp, sp, #0xc
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe21:
	.size	 sub_818D904,.Lfe21-sub_818D904
	.align	2, 0
	.globl	CreateTrainerCardTrainerPicSprite
	.type	 CreateTrainerCardTrainerPicSprite,function
	.thumb_func
CreateTrainerCardTrainerPicSprite:
	push	{r4, r5, lr}
	add	sp, sp, #-0x14
	add	r5, r1, #0
	ldr	r1, [sp, #0x20]
	ldr	r4, [sp, #0x24]
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	lsl	r5, r5, #0x18
	lsr	r5, r5, #0x18
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	lsl	r3, r3, #0x10
	lsr	r3, r3, #0x10
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	str	r2, [sp]
	str	r3, [sp, #0x4]
	str	r1, [sp, #0x8]
	str	r4, [sp, #0xc]
	mov	r1, #0x1
	str	r1, [sp, #0x10]
	mov	r1, #0x0
	mov	r2, #0x0
	add	r3, r5, #0
	bl	CreateTrainerCardSprite
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	add	sp, sp, #0x14
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe22:
	.size	 CreateTrainerCardTrainerPicSprite,.Lfe22-CreateTrainerCardTrainerPicSprite
	.align	2, 0
	.globl	PlayerGenderToFrontTrainerPicId_Debug
	.type	 PlayerGenderToFrontTrainerPicId_Debug,function
	.thumb_func
PlayerGenderToFrontTrainerPicId_Debug:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	cmp	r1, #0x1
	bne	.L157	@cond_branch
	cmp	r0, #0
	beq	.L155	@cond_branch
	ldr	r0, .L159
	add	r0, r0, #0x3f
	ldrb	r0, [r0]
	b	.L158
.L160:
	.align	2, 0
.L159:
	.word	gFacilityClassToPicIndex
.L155:
	ldr	r0, .L161
	add	r0, r0, #0x3c
	ldrb	r0, [r0]
.L158:
.L157:
	pop	{r1}
	bx	r1
.L162:
	.align	2, 0
.L161:
	.word	gFacilityClassToPicIndex
.Lfe23:
	.size	 PlayerGenderToFrontTrainerPicId_Debug,.Lfe23-PlayerGenderToFrontTrainerPicId_Debug
.text
	.align	2, 0
