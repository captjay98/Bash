	.file	"play.c"
	.text
	.section	.rodata
.LC0:
	.string	"Enter your name"
.LC1:
	.string	"How old are you"
.LC2:
	.string	"%i"
.LC3:
	.string	"sarki"
	.align 8
.LC4:
	.string	"%s, you're %i years older than %s You should start behaving your age"
.LC5:
	.string	"bsal"
	.align 8
.LC6:
	.string	"%s, you're %.1f months older than %s You should stop being stupid"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1634558282, -20(%rbp)
	movw	$108, -16(%rbp)
	movl	$23, -24(%rbp)
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movq	stdin(%rip), %rdx
	leaq	-14(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	leaq	-28(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	-14(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rax
	movl	$6, %ecx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	repz cmpsb
	seta	%dl
	setb	%al
	subl	%eax, %edx
	movl	%edx, %eax
	movsbl	%al, %eax
	cmpl	$1, %eax
	jne	.L2
	movl	-28(%rbp), %eax
	cmpl	%eax, -24(%rbp)
	jge	.L2
	movl	-28(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, %edx
	leaq	-20(%rbp), %rcx
	leaq	-14(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L2:
	leaq	-14(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rax
	movl	$5, %ecx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	repz cmpsb
	seta	%dl
	setb	%al
	subl	%eax, %edx
	movl	%edx, %eax
	movsbl	%al, %eax
	cmpl	$1, %eax
	jne	.L3
	movl	-28(%rbp), %eax
	cmpl	%eax, -24(%rbp)
	jge	.L3
	movl	-28(%rbp), %eax
	cvtsi2ssl	%eax, %xmm0
	cvtsi2ssl	-24(%rbp), %xmm1
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	-20(%rbp), %rdx
	leaq	-14(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
.L3:
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
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
