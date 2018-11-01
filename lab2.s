	.section	.rodata
.LC0:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \321\207\320\270\321\201\320\273\320\276"
.LC1:
	.string	"%d"
.LC2:
	.string	"\ny1 = %d\n"
.LC3:
	.string	"\ny2 = %d\n"
.LC4:
	.string	"\ny = %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$3, -12(%rbp)
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	scanf@PLT
	movl	-20(%rbp), %eax
	cmpl	$4, %eax
	jle	.L2
	movl	$-5, -4(%rbp)
	jmp	.L3
.L2:
	movl	-20(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -4(%rbp)
.L3:
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.L4
	movl	-12(%rbp), %eax
	sarl	$31, %eax
	movl	%eax, %edx
	xorl	-12(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -8(%rbp)
	jmp	.L5
.L4:
	movl	$9, -8(%rbp)
.L5:
	movl	-4(%rbp), %eax
	cltd
	movl	%edx, %eax
	xorl	-4(%rbp), %eax
	subl	%edx, %eax
	movl	-8(%rbp), %edx
	addl	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
