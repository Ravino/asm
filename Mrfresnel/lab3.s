// Не изменяемые данные
	.section	.rodata



// Первая строковая константа типа объекта
	.type	_ZStL19piecewise_construct, @object


// Размер первой строковой константы
	.size	_ZStL19piecewise_construct, 1



// Тело константы ввиде конструктора
_ZStL19piecewise_construct:



// Указание ссылки как нулевого объекта
	.zero	1



// Определили локальность константы строковой
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1


// Объявление текста программы
	.text


// Задал функцию (рандомное название) для сравнения искомых букв
	.globl	_Z3equPcS_


// Определил тип
	.type	_Z3equPcS_, @function


// Тело функции
_Z3equPcS_:


// Системная директива ассемблера
.LFB1458:


// Системная директива ассемблера с указанием начала процедуры
	.cfi_startproc


// Слили начало процедуры в стек
	pushq	%rbp



// Системные директивы. Вспомню, скажу. Но это по-моему определение размерности 
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16



// Копирование. Везде используется указание типа четвёртой буквой. 
	movq	%rsp, %rbp



// Вспомню, скажу. Но как правило, в нотации intel это нахуй не надо.
	.cfi_def_cfa_register 6


// Директива разности
	subq	$32, %rsp


// Тоже копирование
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi


// Вызов функции определения длины строки
	call	strlen@PLT


// Копирование
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax


// Директива побитового "Или"
	andl	$1, %eax


// Директива для сравнения значения регистра с нулём
	testl	%eax, %eax


//  Команда условного перехода к метке L2
	jne	.L2



// Копирование вновь. Всё тоже самое.
	movl	-4(%rbp), %eax
	movl	%eax, %edx


// Сдвиг на определённое число битов в право, которое задано через $
	shrl	$31, %edx


// Директива добавления
	addl	%edx, %eax


// Арифметический сдвиг в право
	sarl	%eax


// Директива очистки флага T
	cltq


// директива для загрузки эффективного адреса. Применяется при работе с массивами.
	leaq	-1(%rax), %rdx


// Вновь копирование
	movq	-24(%rbp), %rax


// Добавление
	addq	%rdx, %rax


// Производим перемещение беззнакового целого числа в регистр 64 разрядного типа
	movzbl	(%rax), %edx


// Копирование
        movq	-32(%rbp), %rax
	movzbl	(%rax), %eax


	cmpb	%al, %dl



// Условный переход к метке 3
	jne	.L3


// Копирование
	movl	$1, %eax


// Т. к.функция цикличная внутри, то я заюзал что-то на подобии goto. То бишь выход из цикла и функции  "return"
	jmp	.L1



// Это описание первой метки для условного перехода.
.L3:
	movl	$0, %eax
	jmp	.L1


// Описание второй метки условного перехода
.L2:
	movl	-4(%rbp), %eax



// Директива смещения типа от int к long как в c
	cltd


// Эти команды объяснял
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	testl	%eax, %eax
	jle	.L5
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax


// Директива сравнения чисел
	cmpb	%al, %dl
	jne	.L6
	movl	$1, %eax
	jmp	.L1
.L6:
	movl	$0, %eax
	jmp	.L1
.L5:
.L1:
	leave
	.cfi_def_cfa 7, 8
	ret


// Окончилась функция поиска  буквы в  строке
	.cfi_endproc
.LFE1458:



// Определили конечную размерность функции
	.size	_Z3equPcS_, .-_Z3equPcS_


// Задаём несколько строковых констант ввиде закодированых строк числовым представлением
	.section	.rodata
	.align 8
.LC0:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \321\201\321\202\321\200\320\276\320\272\321\203 \321\201\320\273\320\276\320\262 \321\207\320\265\321\200\320\265\320\267 \320\267\320\275\320\260\320\272 '-'"
	.align 8
.LC1:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \320\263\320\273\320\260\321\201\320\275\321\203\321\216 \320\270\321\201\320\272\320\276\320\274\321\203\321\216 \320\261\321\203\320\272\320\262\321\203"
.LC2:
	.string	"-"
	.align 8
.LC3:
	.string	"\320\232\320\276\320\273\320\270\321\207\320\265\321\201\321\202\320\262\320\276 \321\201\320\273\320\276\320\262 \320\262 \321\201\321\202\321\200\320\276\320\272\320\265 \321\201 \320\270\321\201\320\272\320\276\320\274\320\276\320\271 \320\263\320\273\320\260\321\201\320\275\320\276\320\271 \320\261\321\203\320\272\320\262\320\276\320\271 \320\262 \321\201\320\265\321\200\320\265\320\264\320\270\320\275\320\265 \321\200\320\260\320\262\320\275\320\276 "




// Вот всё тоже самое, только уже для глобальной функции main. Тут я буду комментить только то, что не известно. То, что комментил выше, пропущу
	.text
	.globl	main
	.type	main, @function
main:


// Это системная директива AT&t нотации для определения тела функции
.LFB1459:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1056, %rsp
	movl	$0, -4(%rbp)
	leaq	.LC0(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi



// Вызвали нашу функцию поиска буквы в строке
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi



// вновь её вызвали, но уже передали указатель на саму строку. Т. е. в первый раз передали строку и символы искомые, а во второй раз передали уже подстроку и указатель
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-1040(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt3cin(%rip), %rdi
	call	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_@PLT
	leaq	-1040(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rdi


// Вызвали нашу функцию поиска буквы в слове
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC1(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-1048(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt3cin(%rip), %rdi
	call	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_@PLT
	leaq	-1048(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-1040(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi



// Вызвали функцию разбеения строки с разделителем
	call	strtok@PLT
	movq	%rax, -16(%rbp)
.L10:
	cmpq	$0, -16(%rbp)
	je	.L8
	leaq	-1048(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z3equPcS_
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L9
	addl	$1, -4(%rbp)
.L9:
	leaq	.LC2(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -16(%rbp)
	jmp	.L10
.L8:
	leaq	.LC3(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1459:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB1903:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L14
	cmpl	$65535, -8(%rbp)
	jne	.L14
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L14:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1903:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z3equPcS_, @function
_GLOBAL__sub_I__Z3equPcS_:
.LFB1904:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii


//Слили функцию из стека
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1904:
	.size	_GLOBAL__sub_I__Z3equPcS_, .-_GLOBAL__sub_I__Z3equPcS_


// Директива задания массива
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z3equPcS_
	.hidden	__dso_handle

