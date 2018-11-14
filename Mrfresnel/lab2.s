	.section	.rodata
	.align 8
.LC0:
	.string	"\320\227\320\260\320\264\320\260\320\271\321\202\320\265 \320\267\320\275\320\260\321\207\320\265\320\275\320\270\320\265 x "
.LC1:
	.string	"%d"
	.align 8
.LC2:
	.string	"\n \320\227\320\260\320\264\320\260\320\271\321\202\320\265 \320\267\320\275\320\260\321\207\320\265\320\275\320\270\320\265 Alfa "
	.align 8
.LC3:
	.string	"\n \320\227\320\275\320\260\321\207\320\265\320\275\320\270\320\265 x < 0, \321\200\320\265\320\267\321\203\320\273\321\214\321\202\320\260\321\202 y1 = %d\n"
	.align 8
.LC4:
	.string	"\n \320\227\320\275\320\260\321\207\320\265\320\275\320\270\320\265 x > 0, \321\200\320\265\320\267\321\203\320\273\321\214\321\202\320\260\321\202 y1 = %d\n"
	.align 8
.LC5:
	.string	"\n \320\227\320\275\320\260\321\207\320\265\320\275\320\270\320\265 x mod 3 \321\200\320\260\320\262\320\275\320\276 1, \321\200\320\265\320\267\321\203\320\273\321\214\321\202\320\260\321\202 y2 = %d\n"
	.align 8
.LC6:
	.string	"\n \320\227\320\275\320\260\321\207\320\265\320\275\320\270\320\265 x mod 3 \320\275\320\265 \321\200\320\260\320\262\320\275\320\276 1, \321\200\320\265\320\267\321\203\320\273\321\214\321\202\320\260\321\202 y2 = %d\n"
	.align 8
.LC7:
	.string	"\n\320\240\320\265\320\267\321\203\320\273\321\214\321\202\320\260\321\202 y \321\200\320\260\320\262\320\265\320\275 %d\n"
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
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	scanf@PLT
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	scanf@PLT
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	jns	.L2
	movl	-16(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorl	%eax, %edx
	movl	%edx, -4(%rbp)
	subl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L3
.L2:
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L3:
	movl	-16(%rbp), %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	$1, %edx
	jne	.L4
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L5
.L4:
	movl	$7, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L5:
	movl	-4(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
