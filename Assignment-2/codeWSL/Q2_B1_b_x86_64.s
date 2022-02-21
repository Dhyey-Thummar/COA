	.file	"Q2_B1_b_x86_64.c"
	.text
	.globl	sMatMultiply
	.type	sMatMultiply, @function
sMatMultiply:
.LFB6:
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
	jmp	.L2
.L7:
	movl	$0, -8(%rbp)
	jmp	.L3
.L6:
	movl	-12(%rbp), %eax
	cltq
	salq	$8, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movl	$0, (%rdx,%rax,4)
	movl	$0, -4(%rbp)
	jmp	.L4
.L5:
	movl	-12(%rbp), %eax
	cltq
	salq	$8, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %ecx
	movl	-12(%rbp), %eax
	cltq
	salq	$8, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$8, %rax
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
	salq	$8, %rsi
	movq	-40(%rbp), %rdx
	addq	%rsi, %rdx
	addl	%eax, %ecx
	movl	-8(%rbp), %eax
	cltq
	movl	%ecx, (%rdx,%rax,4)
	addl	$1, -4(%rbp)
.L4:
	cmpl	$63, -4(%rbp)
	jle	.L5
	addl	$1, -8(%rbp)
.L3:
	cmpl	$63, -8(%rbp)
	jle	.L6
	addl	$1, -12(%rbp)
.L2:
	cmpl	$63, -12(%rbp)
	jle	.L7
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	sMatMultiply, .-sMatMultiply
	.section	.rodata
	.align 8
.LC1:
	.string	"\nTime taken just for multiplication: %Lf seconds\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	-49152(%rsp), %r11
.LPSRL0:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL0
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -49240(%rbp)
	jmp	.L9
.L12:
	movl	$0, -49236(%rbp)
	jmp	.L10
.L11:
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
	movl	-49236(%rbp), %eax
	cltq
	movl	-49240(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$6, %rcx
	addq	%rcx, %rax
	movl	%edx, -32784(%rbp,%rax,4)
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
	movl	-49236(%rbp), %eax
	cltq
	movl	-49240(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$6, %rcx
	addq	%rcx, %rax
	movl	%edx, -16400(%rbp,%rax,4)
	addl	$1, -49236(%rbp)
.L10:
	cmpl	$63, -49236(%rbp)
	jle	.L11
	addl	$1, -49240(%rbp)
.L9:
	cmpl	$63, -49240(%rbp)
	jle	.L12
	leaq	-49216(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	leaq	-49168(%rbp), %rdx
	leaq	-16400(%rbp), %rcx
	leaq	-32784(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sMatMultiply
	leaq	-49200(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movq	-49200(%rbp), %rdx
	movq	-49216(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -49232(%rbp)
	movq	-49192(%rbp), %rdx
	movq	-49208(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -49224(%rbp)
	fildq	-49232(%rbp)
	fildq	-49224(%rbp)
	fldt	.LC0(%rip)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fstpt	-49184(%rbp)
	pushq	-49176(%rbp)
	pushq	-49184(%rbp)
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$16, %rsp
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align 16
.LC0:
	.long	917809152
	.long	2305843009
	.long	16353
	.long	0
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
