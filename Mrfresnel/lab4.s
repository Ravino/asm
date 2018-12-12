// Функция сортировки
	.text
	.globl	_Z4compPKvS0_


// Определил тип
	.type	_Z4compPKvS0_, @function
_Z4compPKvS0_:


// Тело функции
.LFB7:


// Начало функции
	.cfi_startproc


// Слили в стек
	pushq	%rbp


// Директивы для отладчика
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16


// Взяли входное значение и скопировали его
	movq	%rsp, %rbp


// Директива отладчика
	.cfi_def_cfa_register 6



// Всё копируем входные значения функции сортировки
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax

// Сливаем функцию из стека
	popq	%rbp



// Директива отладчика
	.cfi_def_cfa 7, 8

// Вернуть конечный результат из функции
	ret



// Конец функции
	.cfi_endproc
.LFE7:



// Определение размера функции
	.size	_Z4compPKvS0_, .-_Z4compPKvS0_



// Тут как всегда, закодированые строки выводимые на экран и ничего более. Данные в режиме read-only
	.section	.rodata
	.align 8
.LC0:
	.string	"\n\320\227\320\260\320\264\320\260\320\271\321\202\320\265 \321\200\320\260\320\267\320\274\320\265\321\200 \320\272\320\262\320\260\320\264\321\200\320\260\321\202\320\270\321\207\320\275\320\276\320\271 \320\274\320\260\321\202\321\200\320\270\321\206\321\213 "
.LC1:
	.string	"%d"
	.align 8
.LC2:
	.string	"\n\320\227\320\260\320\277\320\276\320\273\320\275\320\270\321\202\320\265 \320\267\320\275\320\260\321\207\320\265\320\275\320\270\321\217\320\274\320\270 \320\272\320\262\320\260\320\264\321\200\320\260\321\202\320\270\321\207\320\275\321\203\321\216 \320\274\320\260\321\202\321\200\320\270\321\206\321\203 "
.LC3:
	.string	"\n\320\241\321\202\321\200\320\276\320\272\320\260 %d\n"
	.align 8
.LC4:
	.string	"\n \320\222\320\262\320\265\320\264\320\270\321\202\320\265 \320\267\320\275\320\260\321\207\320\265\320\275\320\270\320\265 \321\217\321\207\320\265\320\271\320\272\320\270 i = %d, j = %d\n"
	.align 8
.LC5:
	.string	"\n \320\241\320\276\321\200\321\202\320\270\321\200\320\276\320\262\320\272\320\260 \320\277\320\276\320\261\320\276\321\207\320\275\320\276\320\271 \320\264\320\270\320\260\320\263\320\276\320\275\320\260\320\273\320\270 "
	.align 8
.LC6:
	.string	"\n \320\222\321\213\320\262\320\276\320\264 \320\274\320\260\321\202\321\200\320\270\321\206\321\213 \321\201 \320\276\321\202\321\201\320\276\321\200\321\202\320\270\321\200\320\276\320\262\320\260\320\275\320\275\320\276\320\271 \320\277\320\276\320\261\320\276\321\207\320\275\320\276\320\271 \320\264\320\270\320\260\320\263\320\276\320\275\320\260\320\273\321\214\321\216 "
.LC7:
	.string	"\n \320\241\321\202\321\200\320\276\320\272\320\260 %d \n"
.LC8:
	.string	"%2d "
	.align 8
.LC9:
	.string	"\n\320\227\320\260\320\274\320\265\320\275\320\260 \321\215\320\273\320\265\320\274\320\265\320\275\321\202\320\276\320\262 \320\275\320\260\320\264 \320\277\320\276\320\261\320\276\321\207\320\275\320\276\320\271 \320\264\320\270\320\260\320\263\320\276\320\275\320\260\320\273\321\214\321\216 \321\215\320\273\320\265\320\274\320\265\320\275\321\202\320\260\320\274\320\270 \320\277\320\276\320\264 \320\277\320\276\320\261\320\276\321\207\320\275\320\276\320\271 \320\264\320\270\320\260\320\263\320\276\320\275\320\260\320\273\321\214\321\216"
	.align 8
.LC10:
	.string	"\n \320\222\321\213\320\262\320\276\320\264 \320\272\320\276\320\275\320\265\321\207\320\275\320\276\320\271 \320\274\320\260\321\202\321\200\320\270\321\206\321\213 "




// Наша входная функция
	.text
	.globl	main



// Тип функции определили
	.type	main, @function


// Тело функции
main:
.LFB8:


// Начало функции и слив в стек
	.cfi_startproc
	pushq	%rbp


// Для debagger
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6



// Вот тут начинается интересное. Работаем с массивоми. Задаём три массива
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$328, %rsp


Опять информация для Debugger
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56


// Тут мы начинаем вычисления для матрицы. Подготовка матрицы
	movq	%rsp, %rax
	movq	%rax, %r15
	leaq	.LC0(%rip), %rdi


// Выводим числа на экран определяющие строки и тобцы
	call	puts@PLT
	leaq	-180(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax


// Считываем и вносим данные в матрицу с указанием номера столбца и строки
	call	scanf@PLT
	movl	-180(%rbp), %eax


// Расширение последнего операнда из регистра до 64 бит
	cltq
	leaq	-1(%rax), %rdx
	movq	%rdx, -120(%rbp)
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -320(%rbp)
	movq	$0, -312(%rbp)
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -336(%rbp)
	movq	$0, -328(%rbp)
	movq	%rdx, %rax
	addq	$1, %rax


// Сдвигаем регистр операнда на два для расширения объёма и это происходит циклично.
	salq	$2, %rax
	leaq	3(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx


// Это просто выравнивание после операций для  расчёта матрицы и её размерности
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax


// Логический переход цикла
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -128(%rbp)
	movl	-180(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	%rsi, -136(%rbp)
	movq	%rsi, %rax
	addq	$1, %rax
	movq	%rax, -352(%rbp)
	movq	$0, -344(%rbp)
	movq	%rsi, %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %r12
	movl	-180(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdi
	movq	%rdi, -144(%rbp)
	movq	%rsi, %rax
	addq	$1, %rax
	movq	%rax, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	%rdi, %rax
	addq	$1, %rax
	movq	%rax, %r13
	movl	$0, %r14d
	movq	-208(%rbp), %r8
	movq	-200(%rbp), %r9
	movq	%r9, %rdx
	imulq	%r13, %rdx
	movq	%r8, %rax
	imulq	%r14, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r8, %rax
	mulq	%r13
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rsi, %rax
	addq	$1, %rax
	movq	%rax, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	%rdi, %rax
	addq	$1, %rax
	movq	%rax, -240(%rbp)
	movq	$0, -232(%rbp)
	movq	-224(%rbp), %r8
	movq	-216(%rbp), %r9
	movq	%r9, %rdx
	movq	-240(%rbp), %r10
	movq	-232(%rbp), %r11
	imulq	%r10, %rdx
	movq	%r11, %rax
	imulq	%r8, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r8, %rax
	mulq	%r10
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rsi, %rax
	leaq	1(%rax), %rdx
	movq	%rdi, %rax
	addq	$1, %rax
	imulq	%rdx, %rax
	salq	$2, %rax
	leaq	3(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -152(%rbp)
	movl	-180(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	%rcx, -160(%rbp)
	movq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, -368(%rbp)
	movq	$0, -360(%rbp)
	movq	%rcx, %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rbx
	movl	-180(%rbp), %eax
	cltq
	leaq	-1(%rax), %rsi
	movq	%rsi, -168(%rbp)
	movq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	%rsi, %rax
	addq	$1, %rax
	movq	%rax, -272(%rbp)
	movq	$0, -264(%rbp)
	movq	-256(%rbp), %r8
	movq	-248(%rbp), %r9
	movq	%r9, %rdx
	movq	-272(%rbp), %r10
	movq	-264(%rbp), %r11
	imulq	%r10, %rdx
	movq	%r11, %rax
	imulq	%r8, %rax
	leaq	(%rdx,%rax), %rdi
	movq	%r8, %rax
	mulq	%r10
	addq	%rdx, %rdi
	movq	%rdi, %rdx
	movq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, -288(%rbp)
	movq	$0, -280(%rbp)
	movq	%rsi, %rax
	addq	$1, %rax
	movq	%rax, -304(%rbp)
	movq	$0, -296(%rbp)
	movq	-288(%rbp), %r8
	movq	-280(%rbp), %r9
	movq	%r9, %rdx
	movq	-304(%rbp), %r10
	movq	-296(%rbp), %r11
	imulq	%r10, %rdx
	movq	%r11, %rax
	imulq	%r8, %rax
	leaq	(%rdx,%rax), %rdi
	movq	%r8, %rax
	mulq	%r10
	addq	%rdx, %rdi
	movq	%rdi, %rdx
	movq	%rcx, %rax
	leaq	1(%rax), %rdx
	movq	%rsi, %rax
	addq	$1, %rax
	imulq	%rdx, %rax
	salq	$2, %rax
	leaq	3(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -176(%rbp)
	leaq	.LC2(%rip), %rdi



// Подготовили размерность матрицы и вводим значения
	call	puts@PLT
	movl	$0, -52(%rbp)
.L7:
	movl	-180(%rbp), %eax
	cmpl	%eax, -52(%rbp)
	jge	.L4
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -56(%rbp)
.L6:
	movl	-180(%rbp), %eax
	cmpl	%eax, -56(%rbp)
	jge	.L5
	movl	-56(%rbp), %eax
	leal	1(%rax), %edx
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax

// Выполняем определение побочной диагонали и её сортировку
	call	printf@PLT
	movq	%r12, %rcx
	shrq	$2, %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	%rcx, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	scanf@PLT
	addl	$1, -56(%rbp)
	jmp	.L6
.L5:
	addl	$1, -52(%rbp)
	jmp	.L7
.L4:
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	movl	$0, -60(%rbp)
	movl	-180(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -64(%rbp)
.L9:
	cmpl	$0, -64(%rbp)
	js	.L8
	movq	%r12, %rsi
	shrq	$2, %rsi
	movq	-152(%rbp), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rcx
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rsi, %rdx
	addq	%rcx, %rdx
	movl	(%rax,%rdx,4), %ecx
	movq	-128(%rbp), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	movl	%ecx, (%rax,%rdx,4)
	addl	$1, -60(%rbp)
	subl	$1, -64(%rbp)
	jmp	.L9
.L8:
	movl	-180(%rbp), %eax
	movslq	%eax, %rsi
	movq	-128(%rbp), %rax
	leaq	_Z4compPKvS0_(%rip), %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	qsort@PLT
	movl	$0, -68(%rbp)
	movl	-180(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -72(%rbp)
.L11:
	cmpl	$0, -72(%rbp)
	js	.L10
	movq	%r12, %rdi
	shrq	$2, %rdi
	movq	-128(%rbp), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %edx
	movq	-152(%rbp), %rax
	movl	-68(%rbp), %ecx
	movslq	%ecx, %rsi
	movl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rdi, %rcx
	addq	%rsi, %rcx
	movl	%edx, (%rax,%rcx,4)
	addl	$1, -68(%rbp)
	subl	$1, -72(%rbp)
	jmp	.L11
.L10:
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	movl	$0, -76(%rbp)
.L15:
	movl	-180(%rbp), %eax
	cmpl	%eax, -76(%rbp)
	jge	.L12
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -80(%rbp)
.L14:
	movl	-180(%rbp), %eax
	cmpl	%eax, -80(%rbp)
	jge	.L13
	movq	%r12, %rsi
	shrq	$2, %rsi
	movq	-152(%rbp), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rcx
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rsi, %rdx
	addq	%rcx, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, %esi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -80(%rbp)
	jmp	.L14
.L13:
	addl	$1, -76(%rbp)
	jmp	.L15
.L12:
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	movl	-180(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -84(%rbp)
	movl	$0, -88(%rbp)
.L19:
	movl	-180(%rbp), %eax
	cmpl	%eax, -88(%rbp)
	jge	.L16
	movl	-180(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
.L18:
	movl	-180(%rbp), %eax
	cmpl	%eax, -96(%rbp)
	jge	.L17
	movq	%rbx, %rdi
	shrq	$2, %rdi
	movq	%r12, %rsi
	shrq	$2, %rsi
	movq	-152(%rbp), %rax
	movl	-92(%rbp), %edx
	movslq	%edx, %rcx
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rsi, %rdx
	addq	%rcx, %rdx
	movl	(%rax,%rdx,4), %edx
	movq	-176(%rbp), %rax
	movl	-96(%rbp), %ecx
	movslq	%ecx, %rsi
	movl	-88(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rdi, %rcx
	addq	%rsi, %rcx
	movl	%edx, (%rax,%rcx,4)
	subl	$1, -92(%rbp)
	addl	$1, -96(%rbp)
	jmp	.L18
.L17:
	subl	$1, -84(%rbp)
	addl	$1, -88(%rbp)
	jmp	.L19
.L16:
	movl	$0, -100(%rbp)
	movl	-180(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -104(%rbp)
.L21:
	cmpl	$0, -104(%rbp)
	js	.L20
	movq	%rbx, %rdi
	shrq	$2, %rdi
	movq	-128(%rbp), %rax
	movl	-100(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %edx
	movq	-176(%rbp), %rax
	movl	-100(%rbp), %ecx
	movslq	%ecx, %rsi
	movl	-104(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	%rdi, %rcx
	addq	%rsi, %rcx
	movl	%edx, (%rax,%rcx,4)
	addl	$1, -100(%rbp)
	subl	$1, -104(%rbp)
	jmp	.L21
.L20:
	leaq	.LC10(%rip), %rdi
	call	puts@PLT
	movl	$0, -108(%rbp)
.L25:
	movl	-180(%rbp), %eax
	cmpl	%eax, -108(%rbp)
	jge	.L22
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -112(%rbp)
.L24:
	movl	-180(%rbp), %eax
	cmpl	%eax, -112(%rbp)
	jge	.L23
	movq	%rbx, %rsi
	shrq	$2, %rsi
	movq	-176(%rbp), %rax
	movl	-112(%rbp), %edx
	movslq	%edx, %rcx
	movl	-108(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rsi, %rdx
	addq	%rcx, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, %esi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax


// Вывод об окончании программы
	call	printf@PLT
	addl	$1, -112(%rbp)
	jmp	.L24
.L23:
	addl	$1, -108(%rbp)
	jmp	.L25
.L22:
	movl	$0, %eax
	movq	%r15, %rsp
	leaq	-40(%rbp), %rsp


// Отчистка стека от матрицы
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main

