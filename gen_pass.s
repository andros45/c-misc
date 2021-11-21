	.file	"gen_pass.c"
	.text
	.globl	r
	.bss
	.align 4
r:
	.space 4
	.globl	illc
	.align 4
illc:
	.space 4
	.comm	num, 32, 5
	.def	__main;	.scl	2;	.type	32;	.endef
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	call	__main
	movl	$0, %ecx
	call	time
	movl	%eax, %ecx
	call	srand
	movl	$0, -4(%rbp)
	jmp	.L2
.L8:
	call	rand
	movl	%eax, %ecx
	movl	$-529516515, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$6, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	leal	50(%rdx), %eax
	movl	%eax, r(%rip)
	movl	r(%rip), %eax
	cmpl	$79, %eax
	je	.L3
	movl	r(%rip), %eax
	cmpl	$108, %eax
	je	.L3
	movl	r(%rip), %eax
	cmpl	$57, %eax
	jle	.L4
	movl	r(%rip), %eax
	cmpl	$64, %eax
	jle	.L3
.L4:
	movl	r(%rip), %eax
	cmpl	$90, %eax
	jle	.L5
	movl	r(%rip), %eax
	cmpl	$96, %eax
	jg	.L5
.L3:
	movl	illc(%rip), %eax
	addl	$1, %eax
	movl	%eax, illc(%rip)
	cmpl	$0, -4(%rbp)
	je	.L7
	subl	$1, -4(%rbp)
	jmp	.L7
.L5:
	movl	r(%rip), %eax
	movl	%eax, %ecx
	call	putchar
.L7:
	addl	$1, -4(%rbp)
.L2:
	cmpl	$7999, -4(%rbp)
	jle	.L8
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 7.4.0"
	.def	time;	.scl	2;	.type	32;	.endef
	.def	srand;	.scl	2;	.type	32;	.endef
	.def	rand;	.scl	2;	.type	32;	.endef
	.def	putchar;	.scl	2;	.type	32;	.endef
