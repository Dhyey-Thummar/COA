	.file	1 "Q2_B1_b_mips.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.align	2
	.globl	sMatMultiply
	.set	nomips16
	.set	nomicromips
	.ent	sMatMultiply
	.type	sMatMultiply, @function
sMatMultiply:
	.frame	$fp,24,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	sw	$0,4($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L7:
	sw	$0,8($fp)
	.option	pic0
	b	$L3
	nop

	.option	pic2
$L6:
	lw	$2,4($fp)
	sll	$2,$2,8
	lw	$3,32($fp)
	addu	$3,$3,$2
	lw	$2,8($fp)
	sll	$2,$2,2
	addu	$2,$3,$2
	sw	$0,0($2)
	sw	$0,12($fp)
	.option	pic0
	b	$L4
	nop

	.option	pic2
$L5:
	lw	$2,4($fp)
	sll	$2,$2,8
	lw	$3,32($fp)
	addu	$3,$3,$2
	lw	$2,8($fp)
	sll	$2,$2,2
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,4($fp)
	sll	$2,$2,8
	lw	$4,24($fp)
	addu	$4,$4,$2
	lw	$2,12($fp)
	sll	$2,$2,2
	addu	$2,$4,$2
	lw	$4,0($2)
	lw	$2,12($fp)
	sll	$2,$2,8
	lw	$5,28($fp)
	addu	$5,$5,$2
	lw	$2,8($fp)
	sll	$2,$2,2
	addu	$2,$5,$2
	lw	$2,0($2)
	mul	$2,$4,$2
	lw	$4,4($fp)
	sll	$4,$4,8
	lw	$5,32($fp)
	addu	$4,$5,$4
	addu	$3,$3,$2
	lw	$2,8($fp)
	sll	$2,$2,2
	addu	$2,$4,$2
	sw	$3,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,1
	sw	$2,12($fp)
$L4:
	lw	$2,12($fp)
	slt	$2,$2,64
	bne	$2,$0,$L5
	nop

	lw	$2,8($fp)
	addiu	$2,$2,1
	sw	$2,8($fp)
$L3:
	lw	$2,8($fp)
	slt	$2,$2,64
	bne	$2,$0,$L6
	nop

	lw	$2,4($fp)
	addiu	$2,$2,1
	sw	$2,4($fp)
$L2:
	lw	$2,4($fp)
	slt	$2,$2,64
	bne	$2,$0,$L7
	nop

	nop
	nop
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	sMatMultiply
	.size	sMatMultiply, .-sMatMultiply
	.globl	__floatdidf
	.rdata
	.align	2
$LC1:
	.ascii	"\012Time taken just for multiplication: %Lf seconds\012\000"
	.text
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,49248,$31		# vars= 49208, regs= 2/2, args= 16, gp= 8
	.mask	0xc0000000,-12
	.fmask	0x00300000,-8
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32752
	sw	$31,32740($sp)
	sw	$fp,32736($sp)
	sdc1	$f20,32744($sp)
	addiu	$sp,$sp,-16496
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	li	$3,49228			# 0xc04c
	addu	$3,$3,$fp
	sw	$2,0($3)
	li	$2,-65536			# 0xffffffffffff0000
	li	$3,49232			# 0xc050
	addu	$3,$3,$fp
	addu	$2,$3,$2
	sw	$0,16328($2)
	.option	pic0
	b	$L9
	nop

	.option	pic2
$L12:
	li	$2,-65536			# 0xffffffffffff0000
	li	$3,49232			# 0xc050
	addu	$3,$3,$fp
	addu	$2,$3,$2
	sw	$0,16332($2)
	.option	pic0
	b	$L10
	nop

	.option	pic2
$L11:
	lw	$2,%call16(rand)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	li	$2,1717960704			# 0x66660000
	ori	$2,$2,0x6667
	mult	$4,$2
	mfhi	$2
	sra	$3,$2,2
	sra	$2,$4,31
	subu	$3,$3,$2
	move	$2,$3
	sll	$2,$2,2
	addu	$2,$2,$3
	sll	$2,$2,1
	subu	$3,$4,$2
	li	$2,-65536			# 0xffffffffffff0000
	li	$4,49232			# 0xc050
	addu	$4,$4,$fp
	addu	$5,$4,$2
	li	$2,-65536			# 0xffffffffffff0000
	li	$4,49232			# 0xc050
	addu	$4,$4,$fp
	addu	$2,$4,$2
	lw	$2,16328($2)
	sll	$4,$2,6
	li	$2,-65536			# 0xffffffffffff0000
	li	$6,49232			# 0xc050
	addu	$6,$6,$fp
	addu	$2,$6,$2
	lw	$2,16332($2)
	addu	$2,$4,$2
	sll	$2,$2,2
	addu	$2,$5,$2
	sw	$3,32764($2)
	lw	$2,%call16(rand)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,rand
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$4,$2
	li	$2,1717960704			# 0x66660000
	ori	$2,$2,0x6667
	mult	$4,$2
	mfhi	$2
	sra	$3,$2,2
	sra	$2,$4,31
	subu	$3,$3,$2
	move	$2,$3
	sll	$2,$2,2
	addu	$2,$2,$3
	sll	$2,$2,1
	subu	$3,$4,$2
	li	$2,-65536			# 0xffffffffffff0000
	li	$4,49232			# 0xc050
	addu	$4,$4,$fp
	addu	$2,$4,$2
	lw	$2,16328($2)
	sll	$4,$2,6
	li	$2,-65536			# 0xffffffffffff0000
	li	$5,49232			# 0xc050
	addu	$5,$5,$fp
	addu	$2,$5,$2
	lw	$2,16332($2)
	addu	$2,$4,$2
	sll	$2,$2,2
	li	$4,49232			# 0xc050
	addu	$4,$4,$fp
	addu	$2,$4,$2
	sw	$3,-16388($2)
	li	$2,-65536			# 0xffffffffffff0000
	li	$3,49232			# 0xc050
	addu	$3,$3,$fp
	addu	$3,$3,$2
	li	$2,-65536			# 0xffffffffffff0000
	li	$4,49232			# 0xc050
	addu	$4,$4,$fp
	addu	$2,$4,$2
	lw	$2,16332($2)
	addiu	$2,$2,1
	sw	$2,16332($3)
$L10:
	li	$2,-65536			# 0xffffffffffff0000
	li	$3,49232			# 0xc050
	addu	$3,$3,$fp
	addu	$2,$3,$2
	lw	$2,16332($2)
	slt	$2,$2,64
	bne	$2,$0,$L11
	nop

	li	$2,-65536			# 0xffffffffffff0000
	li	$3,49232			# 0xc050
	addu	$3,$3,$fp
	addu	$3,$3,$2
	li	$2,-65536			# 0xffffffffffff0000
	li	$4,49232			# 0xc050
	addu	$4,$4,$fp
	addu	$2,$4,$2
	lw	$2,16328($2)
	addiu	$2,$2,1
	sw	$2,16328($3)
$L9:
	li	$2,-65536			# 0xffffffffffff0000
	li	$3,49232			# 0xc050
	addu	$3,$3,$fp
	addu	$2,$3,$2
	lw	$2,16328($2)
	slt	$2,$2,64
	bne	$2,$0,$L12
	nop

	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x3fec
	li	$3,49232			# 0xc050
	addu	$3,$3,$fp
	addu	$2,$3,$2
	move	$5,$2
	move	$4,$0
	lw	$2,%call16(clock_gettime)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,clock_gettime
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x3ffc
	li	$3,49232			# 0xc050
	addu	$3,$3,$fp
	addu	$4,$3,$2
	li	$2,32844			# 0x804c
	addu	$3,$fp,$2
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x7ffc
	li	$5,49232			# 0xc050
	addu	$5,$5,$fp
	addu	$2,$5,$2
	move	$6,$4
	move	$5,$3
	move	$4,$2
	.option	pic0
	jal	sMatMultiply
	nop

	.option	pic2
	lw	$28,16($fp)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x3ff4
	li	$3,49232			# 0xc050
	addu	$3,$3,$fp
	addu	$2,$3,$2
	move	$5,$2
	move	$4,$0
	lw	$2,%call16(clock_gettime)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,clock_gettime
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$2,-65536			# 0xffffffffffff0000
	li	$3,49232			# 0xc050
	addu	$3,$3,$fp
	addu	$2,$3,$2
	lw	$3,16372($2)
	li	$2,-65536			# 0xffffffffffff0000
	li	$4,49232			# 0xc050
	addu	$4,$4,$fp
	addu	$2,$4,$2
	lw	$2,16364($2)
	subu	$2,$3,$2
	li	$3,-65536			# 0xffffffffffff0000
	li	$4,49232			# 0xc050
	addu	$4,$4,$fp
	addu	$3,$4,$3
	sw	$2,16340($3)
	sra	$2,$2,31
	sw	$2,16336($3)
	li	$2,-65536			# 0xffffffffffff0000
	li	$3,49232			# 0xc050
	addu	$3,$3,$fp
	addu	$2,$3,$2
	lw	$3,16376($2)
	li	$2,-65536			# 0xffffffffffff0000
	li	$4,49232			# 0xc050
	addu	$4,$4,$fp
	addu	$2,$4,$2
	lw	$2,16368($2)
	subu	$2,$3,$2
	li	$3,-65536			# 0xffffffffffff0000
	li	$4,49232			# 0xc050
	addu	$4,$4,$fp
	addu	$3,$4,$3
	sw	$2,16348($3)
	sra	$2,$2,31
	sw	$2,16344($3)
	li	$2,-65536			# 0xffffffffffff0000
	li	$3,49232			# 0xc050
	addu	$3,$3,$fp
	addu	$3,$3,$2
	lw	$2,%call16(__floatdidf)($28)
	lw	$5,16340($3)
	lw	$4,16336($3)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__floatdidf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	mov.d	$f20,$f0
	li	$2,-65536			# 0xffffffffffff0000
	li	$3,49232			# 0xc050
	addu	$3,$3,$fp
	addu	$3,$3,$2
	lw	$2,%call16(__floatdidf)($28)
	lw	$5,16348($3)
	lw	$4,16344($3)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__floatdidf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	mov.d	$f2,$f0
	lui	$2,%hi($LC0)
	ldc1	$f0,%lo($LC0)($2)
	mul.d	$f0,$f2,$f0
	li	$2,-65536			# 0xffffffffffff0000
	li	$3,49232			# 0xc050
	addu	$3,$3,$fp
	addu	$2,$3,$2
	add.d	$f0,$f20,$f0
	sdc1	$f0,16352($2)
	li	$2,-65536			# 0xffffffffffff0000
	li	$3,49232			# 0xc050
	addu	$3,$3,$fp
	addu	$2,$3,$2
	lw	$7,16356($2)
	lw	$6,16352($2)
	lui	$2,%hi($LC1)
	addiu	$4,$2,%lo($LC1)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$2,$0
	move	$4,$2
	lw	$2,%got(__stack_chk_guard)($28)
	li	$3,49228			# 0xc04c
	addu	$3,$3,$fp
	lw	$3,0($3)
	lw	$2,0($2)
	beq	$3,$2,$L14
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L14:
	move	$2,$4
	addiu	$sp,$fp,16496
	lw	$31,32740($sp)
	lw	$fp,32736($sp)
	ldc1	$f20,32744($sp)
	addiu	$sp,$sp,32752
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.rdata
	.align	3
$LC0:
	.word	1041313291
	.word	3894859413
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
