	.section	.text._ZSt3sinIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_,"axG",@progbits,_ZSt3sinIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_,comdat
	.weak	_ZSt3sinIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_
	.type	_ZSt3sinIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_, @function
_ZSt3sinIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_:
.LFB231:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sd	-4(%rbp), %xmm0
	call	sin@PLT
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE231:
	.size	_ZSt3sinIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_, .-_ZSt3sinIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_
	.section	.text._ZSt3cosIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_,"axG",@progbits,_ZSt3cosIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_,comdat
	.weak	_ZSt3cosIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_
	.type	_ZSt3cosIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_, @function
_ZSt3cosIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_:
.LFB232:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sd	-4(%rbp), %xmm0
	call	cos@PLT
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE232:
	.size	_ZSt3cosIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_, .-_ZSt3cosIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_
	.section	.rodata
	.align 8
.LC0:
	.string	"\n\320\227\320\260\320\264\320\260\320\271\321\202\320\265 \320\267\320\275\320\260\321\207\320\265\320\275\320\270\320\265 x "
.LC1:
	.string	"%d"
.LC2:
	.string	"\n\320\227\320\275\320\260\321\207\320\265\320\275\320\270\320\265 x = %d\n"
	.align 8
.LC3:
	.string	"\n\320\227\320\260\320\264\320\260\320\271\321\202\320\265 \320\267\320\275\320\260\321\207\320\265\320\275\320\270\320\265 alfa "
.LC4:
	.string	"\n\320\227\320\275\320\260\321\207\320\265\320\275\320\270\320\265 alfa = %d\n"
	.align 8
.LC5:
	.string	"\n\320\227\320\275\320\260\321\207\320\265\320\275\320\270\320\265 \320\262\321\213\321\200\320\260\320\266\320\265\320\275\320\270\321\217 = %f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB230:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	$3, -4(%rbp)
	movl	$6, -8(%rbp)
	movl	$4, -12(%rbp)
	movl	$48, -16(%rbp)
	movl	$16, -20(%rbp)
	movl	$2, -24(%rbp)
	movl	$5, -28(%rbp)
	movl	$14, -32(%rbp)
	movl	$8, -36(%rbp)
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	leaq	-100(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	scanf@PLT
	movl	-100(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	leaq	-104(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	scanf@PLT
	movl	-104(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-104(%rbp), %eax
	movl	%eax, %edi
	call	_ZSt3sinIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_
	cvtsd2ss	%xmm0, %xmm1
	movss	%xmm1, -40(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, %edi
	call	_ZSt3cosIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_
	cvtsd2ss	%xmm0, %xmm2
	movss	%xmm2, -44(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2ss	-4(%rbp), %xmm0
	mulss	-40(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2ss	-36(%rbp), %xmm0
	mulss	-44(%rbp), %xmm0
	movss	%xmm0, -52(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2ss	-28(%rbp), %xmm0
	addss	-52(%rbp), %xmm0
	movss	%xmm0, -56(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	-24(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -60(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2ss	-16(%rbp), %xmm0
	addss	-60(%rbp), %xmm0
	movss	%xmm0, -64(%rbp)
	movl	-32(%rbp), %eax
	subl	-4(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -68(%rbp)
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -72(%rbp)
	movl	-12(%rbp), %eax
	imull	-12(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -76(%rbp)
	movss	-56(%rbp), %xmm0
	mulss	-48(%rbp), %xmm0
	movss	%xmm0, -80(%rbp)
	movss	-80(%rbp), %xmm0
	mulss	-64(%rbp), %xmm0
	movss	%xmm0, -84(%rbp)
	movss	-76(%rbp), %xmm0
	divss	-84(%rbp), %xmm0
	movss	%xmm0, -88(%rbp)
	movss	-88(%rbp), %xmm0
	divss	-68(%rbp), %xmm0
	movss	%xmm0, -92(%rbp)
	movss	-92(%rbp), %xmm0
	addss	-72(%rbp), %xmm0
	movss	%xmm0, -96(%rbp)
	cvtss2sd	-96(%rbp), %xmm0
	leaq	.LC5(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE230:
	.size	main, .-main
