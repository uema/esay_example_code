	.cstring
LC0:
	.ascii "Shell say hello!\0"
LC1:
	.ascii "%d\0"
	.text
.globl _main
_main:
LFB3:
	pushq	%rbp
LCFI0:
	movq	%rsp, %rbp
LCFI1:
	subq	$16, %rsp
LCFI2:
	leaq	LC0(%rip), %rdi
	call	_puts
	movl	$-8, -4(%rbp)
	sall	-4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	imull	-4(%rbp), %ecx
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %eax
	subl	%edx, %eax
	sall	$31, %eax
	sarl	$31, %eax
	xorl	%ecx, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %esi
	leaq	LC1(%rip), %rdi
	movl	$0, %eax
	call	_printf
	movl	$0, %eax
	leave
	ret
LFE3:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0x0
	.byte	0x1
	.ascii "zR\0"
	.byte	0x1
	.byte	0x78
	.byte	0x10
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x90
	.byte	0x1
	.align 3
LECIE1:
.globl _main.eh
_main.eh:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB3-.
	.set L$set$2,LFE3-LFB3
	.quad L$set$2
	.byte	0x0
	.byte	0x4
	.set L$set$3,LCFI0-LFB3
	.long L$set$3
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE1:
	.subsections_via_symbols
