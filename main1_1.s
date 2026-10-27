	.file	"main1.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.base64	"0JLQstC10LTQuNGC0LUgNNGFINC30L3QsNGH0L3QvtC1INGH0LjRgdC70L46AA=="
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"%d"
.LC2:
	.base64	"0KfQuNGB0LvQvjogJWQKAA=="
	.section	.rodata.str1.8
	.align 8
.LC3:
	.base64	"0J3QtdC/0YDQsNCy0LjQu9GM0L3Ri9C5INCy0LLQvtC0AA=="
	.text
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdi
	call	printf@PLT
	leaq	4(%rsp), %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc23_scanf@PLT
	movl	4(%rsp), %esi
	leal	-1000(%rsi), %eax
	cmpl	$8999, %eax
	ja	.L2
	movl	$1000, %ecx
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	%eax, %r8d
	imull	$-1000, %eax, %ecx
	addl	%esi, %ecx
	movl	$100, %esi
	movl	%ecx, %eax
	cltd
	idivl	%esi
	imull	$-100, %eax, %r9d
	addl	%r9d, %ecx
	movl	$10, %esi
	movl	%ecx, %eax
	cltd
	idivl	%esi
	imull	$-10, %eax, %edi
	leal	(%rcx,%rdi), %eax
	cltd
	idivl	%esi
	imull	$1000, %edx, %esi
	subl	%r9d, %esi
	subl	%edi, %esi
	addl	%r8d, %esi
	movl	%esi, 4(%rsp)
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L3:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L6
	movl	$0, %eax
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L2:
	.cfi_restore_state
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	jmp	.L3
.L6:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.ident	"GCC: (GNU) 16.2.1 20260810"
	.section	.note.GNU-stack,"",@progbits
