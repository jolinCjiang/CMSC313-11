	.file	"hex.c"
# GNU C17 (Ubuntu 13.2.0-23ubuntu4) version 13.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.2.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -m32 -mtune=generic -march=i686 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.globl	getFirstDigit
	.type	getFirstDigit, @function
getFirstDigit:
.LFB0:
	.cfi_startproc
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	subl	$20, %esp	#,
	call	__x86.get_pc_thunk.ax	#
	addl	$_GLOBAL_OFFSET_TABLE_, %eax	# tmp82,
	movl	8(%ebp), %eax	# hex, tmp87
	movb	%al, -20(%ebp)	# tmp88, hex
# hex.c:3:     unsigned char c = hex>>4;
	movzbl	-20(%ebp), %eax	# hex, tmp92
	shrb	$4, %al	#, tmp91
	movb	%al, -1(%ebp)	# tmp91, c
# hex.c:4:     if (c >= 10) {
	cmpb	$9, -1(%ebp)	#, c
	jbe	.L2	#,
# hex.c:5:         return c + 0x30;
	movzbl	-1(%ebp), %eax	# c, tmp93
	addl	$48, %eax	#, _1
	jmp	.L3	#
.L2:
# hex.c:7:         return c + 0x37;
	movzbl	-1(%ebp), %eax	# c, tmp94
	addl	$55, %eax	#, _2
.L3:
# hex.c:9: }
	leave	
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	
	.cfi_endproc
.LFE0:
	.size	getFirstDigit, .-getFirstDigit
	.globl	getSecondDigit
	.type	getSecondDigit, @function
getSecondDigit:
.LFB1:
	.cfi_startproc
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	subl	$20, %esp	#,
	call	__x86.get_pc_thunk.ax	#
	addl	$_GLOBAL_OFFSET_TABLE_, %eax	# tmp82,
	movl	8(%ebp), %eax	# hex, tmp87
	movb	%al, -20(%ebp)	# tmp88, hex
# hex.c:12:     unsigned char c = hex & 0xF;
	movzbl	-20(%ebp), %eax	# hex, tmp92
	andl	$15, %eax	#, tmp91
	movb	%al, -1(%ebp)	# tmp91, c
# hex.c:13:     if (c >= 10) {
	cmpb	$9, -1(%ebp)	#, c
	jbe	.L5	#,
# hex.c:14:         return c + 0x30;
	movzbl	-1(%ebp), %eax	# c, tmp93
	addl	$48, %eax	#, _1
	jmp	.L6	#
.L5:
# hex.c:16:         return c + 0x37;
	movzbl	-1(%ebp), %eax	# c, tmp94
	addl	$55, %eax	#, _2
.L6:
# hex.c:18: }
	leave	
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	
	.cfi_endproc
.LFE1:
	.size	getSecondDigit, .-getSecondDigit
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	leal	4(%esp), %ecx	#,
	.cfi_def_cfa 1, 0
	andl	$-16, %esp	#,
	pushl	-4(%ecx)	#
	pushl	%ebp	#
	movl	%esp, %ebp	#,
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%ecx	#
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	subl	$20, %esp	#,
	call	__x86.get_pc_thunk.ax	#
	addl	$_GLOBAL_OFFSET_TABLE_, %eax	# tmp82,
# hex.c:20: int main() {
	movl	%gs:20, %eax	# MEM[(<address-space-2> unsigned int *)20B], tmp93
	movl	%eax, -12(%ebp)	# tmp93, D.2194
	xorl	%eax, %eax	# tmp93
# hex.c:21:     unsigned char hex[] = {0x83, 0x6A, 0x88, 0xDE, 0x9A, 0xC3, 0x54, 0x9A};
	movl	$-561485181, -20(%ebp)	#, hex
	movl	$-1705720934, -16(%ebp)	#, hex
# hex.c:22:     char first = getFirstDigit(hex[0]); 
	movzbl	-20(%ebp), %eax	# hex[0], _1
# hex.c:22:     char first = getFirstDigit(hex[0]); 
	movzbl	%al, %eax	# _1, _2
	pushl	%eax	# _2
	call	getFirstDigit	#
	addl	$4, %esp	#,
	movb	%al, -22(%ebp)	# tmp89, first
# hex.c:23:     char second = getSecondDigit(hex[0]); 
	movzbl	-20(%ebp), %eax	# hex[0], _3
# hex.c:23:     char second = getSecondDigit(hex[0]); 
	movzbl	%al, %eax	# _3, _4
	pushl	%eax	# _4
	call	getSecondDigit	#
	addl	$4, %esp	#,
	movb	%al, -21(%ebp)	# tmp90, second
	movl	$0, %eax	#, _12
# hex.c:24: }
	movl	-12(%ebp), %edx	# D.2194, tmp94
	subl	%gs:20, %edx	# MEM[(<address-space-2> unsigned int *)20B], tmp94
	je	.L9	#,
	call	__stack_chk_fail_local	#
.L9:
	movl	-4(%ebp), %ecx	#,
	.cfi_def_cfa 1, 0
	leave	
	.cfi_restore 5
	leal	-4(%ecx), %esp	#,
	.cfi_def_cfa 4, 4
	ret	
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
.LFB3:
	.cfi_startproc
	movl	(%esp), %eax	#,
	ret
	.cfi_endproc
.LFE3:
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (Ubuntu 13.2.0-23ubuntu4) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
