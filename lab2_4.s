	.file	"lab2_4.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 112
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR [rbp-8], rax
	xor	eax, eax
	mov	DWORD PTR [rbp-96], 12
	mov	DWORD PTR [rbp-92], 23
	mov	DWORD PTR [rbp-88], 4
	mov	DWORD PTR [rbp-84], 5
	mov	DWORD PTR [rbp-80], 6
	mov	DWORD PTR [rbp-76], 56
	mov	DWORD PTR [rbp-72], 78
	mov	DWORD PTR [rbp-68], 90
	mov	DWORD PTR [rbp-64], 123
	mov	DWORD PTR [rbp-60], 66
	mov	DWORD PTR [rbp-48], 4
	mov	DWORD PTR [rbp-44], 12
	mov	DWORD PTR [rbp-40], 34
	mov	DWORD PTR [rbp-36], 51
	mov	DWORD PTR [rbp-32], 22
	mov	DWORD PTR [rbp-28], 44
	mov	DWORD PTR [rbp-24], 11
	mov	DWORD PTR [rbp-20], 15
	mov	DWORD PTR [rbp-16], 18
	mov	DWORD PTR [rbp-12], 19
	mov	DWORD PTR [rbp-104], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR [rbp-104]
	cdqe
	mov	eax, DWORD PTR [rbp-96+rax*4]
	mov	DWORD PTR [rbp-100], eax
	mov	eax, DWORD PTR [rbp-104]
	cdqe
	mov	edx, DWORD PTR [rbp-48+rax*4]
	mov	eax, DWORD PTR [rbp-104]
	cdqe
	mov	DWORD PTR [rbp-96+rax*4], edx
	mov	eax, DWORD PTR [rbp-104]
	cdqe
	mov	edx, DWORD PTR [rbp-100]
	mov	DWORD PTR [rbp-48+rax*4], edx
	add	DWORD PTR [rbp-104], 1
.L2:
	cmp	DWORD PTR [rbp-104], 9
	jle	.L3
	mov	eax, 0
	mov	rcx, QWORD PTR [rbp-8]
	xor	rcx, QWORD PTR fs:40
	je	.L5
	call	__stack_chk_fail
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
