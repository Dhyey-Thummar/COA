	.file	"Q2_B1_b_mips.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.text
	.globl	_Z12sMatMultiplyPA32_iS0_S0_
	.type	_Z12sMatMultiplyPA32_iS0_S0_, @function
_Z12sMatMultiplyPA32_iS0_S0_:
.LFB1522:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -12(%rbp)
.L7:
	cmpl	$31, -12(%rbp)
	jg	.L8
	movl	$0, -8(%rbp)
.L6:
	cmpl	$31, -8(%rbp)
	jg	.L3
	movl	-12(%rbp), %eax
	cltq
	salq	$7, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movl	$0, (%rdx,%rax,4)
	movl	$0, -4(%rbp)
.L5:
	cmpl	$31, -4(%rbp)
	jg	.L4
	movl	-12(%rbp), %eax
	cltq
	salq	$7, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %ecx
	movl	-12(%rbp), %eax
	cltq
	salq	$7, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$7, %rax
	movq	%rax, %rsi
	movq	-32(%rbp), %rax
	addq	%rax, %rsi
	movl	-8(%rbp), %eax
	cltq
	movl	(%rsi,%rax,4), %eax
	imull	%edx, %eax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rsi
	salq	$7, %rsi
	movq	-40(%rbp), %rdx
	addq	%rsi, %rdx
	addl	%eax, %ecx
	movl	-8(%rbp), %eax
	cltq
	movl	%ecx, (%rdx,%rax,4)
	addl	$1, -4(%rbp)
	jmp	.L5
.L4:
	addl	$1, -8(%rbp)
	jmp	.L6
.L3:
	addl	$1, -12(%rbp)
	jmp	.L7
.L8:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1522:
	.size	_Z12sMatMultiplyPA32_iS0_S0_, .-_Z12sMatMultiplyPA32_iS0_S0_
	.section	.rodata
	.align 8
.LC1:
	.string	"\nTime taken just for multiplication: "
.LC2:
	.string	" seconds\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1523:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -12376(%rbp)
.L13:
	cmpl	$31, -12376(%rbp)
	jg	.L10
	movl	$0, -12372(%rbp)
.L12:
	cmpl	$31, -12372(%rbp)
	jg	.L11
	call	rand@PLT
	movl	%eax, %ecx
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	-12372(%rbp), %eax
	cltq
	movl	-12376(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$5, %rcx
	addq	%rcx, %rax
	movl	%edx, -8208(%rbp,%rax,4)
	call	rand@PLT
	movl	%eax, %ecx
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	-12372(%rbp), %eax
	cltq
	movl	-12376(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$5, %rcx
	addq	%rcx, %rax
	movl	%edx, -4112(%rbp,%rax,4)
	addl	$1, -12372(%rbp)
	jmp	.L12
.L11:
	addl	$1, -12376(%rbp)
	jmp	.L13
.L10:
	leaq	-12352(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	leaq	-12304(%rbp), %rdx
	leaq	-4112(%rbp), %rcx
	leaq	-8208(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z12sMatMultiplyPA32_iS0_S0_
	leaq	-12336(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movq	-12336(%rbp), %rdx
	movq	-12352(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -12368(%rbp)
	movq	-12328(%rbp), %rdx
	movq	-12344(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -12360(%rbp)
	fildq	-12368(%rbp)
	fildq	-12360(%rbp)
	fldt	.LC0(%rip)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fstpt	-12320(%rbp)
	leaq	.LC1(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	pushq	-12312(%rbp)
	pushq	-12320(%rbp)
	movq	%rax, %rdi
	call	_ZNSolsEe@PLT
	addq	$16, %rsp
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1523:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2008:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L18
	cmpl	$65535, -8(%rbp)
	jne	.L18
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L18:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2008:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z12sMatMultiplyPA32_iS0_S0_, @function
_GLOBAL__sub_I__Z12sMatMultiplyPA32_iS0_S0_:
.LFB2009:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2009:
	.size	_GLOBAL__sub_I__Z12sMatMultiplyPA32_iS0_S0_, .-_GLOBAL__sub_I__Z12sMatMultiplyPA32_iS0_S0_
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z12sMatMultiplyPA32_iS0_S0_
	.section	.rodata
	.align 16
.LC0:
	.long	917809152
	.long	2305843009
	.long	16353
	.long	0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
