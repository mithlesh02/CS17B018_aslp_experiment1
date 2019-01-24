	.file	"lab2_4.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp                 ;[stack top-0] <-rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp             ;rbp <- rsp
	.cfi_def_cfa_register 6
	sub	rsp, 112             ;rsp <-rsp -112
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR [rbp-8], rax
	xor	eax, eax                 ;eax <- eax ^eax
	mov	DWORD PTR [rbp-96], 12    ;[rbp-96] <- 12
	mov	DWORD PTR [rbp-92], 23    ;[rbp-92] <- 23
	mov	DWORD PTR [rbp-88], 4     ;[rbp-88] <- 4
	mov	DWORD PTR [rbp-84], 5     ;[rbp-84] <- 5
	mov	DWORD PTR [rbp-80], 6     ;[rbp-80] <- 6
	mov	DWORD PTR [rbp-76], 56    ;[rbp-76] <- 56
	mov	DWORD PTR [rbp-72], 78    ;[rbp-72] <- 78
	mov	DWORD PTR [rbp-68], 90    ;[rbp-90] <- 90
	mov	DWORD PTR [rbp-64], 123   ;[rbp-64] <- 123
	mov	DWORD PTR [rbp-60], 66    ;[rbp-60] <- 66
	mov	DWORD PTR [rbp-48], 4     ;[rbp-48] <- 4
	mov	DWORD PTR [rbp-44], 12    ;[rbp-44] <- 12
	mov	DWORD PTR [rbp-40], 34    ;[rbp-40] <- 34
	mov	DWORD PTR [rbp-36], 51    ;[rbp-36] <- 51
	mov	DWORD PTR [rbp-32], 22    ;[rbp-32] <- 22
	mov	DWORD PTR [rbp-28], 44    ;[rbp-28] <- 44
	mov	DWORD PTR [rbp-24], 11    ;[rbp-24] <- 11
	mov	DWORD PTR [rbp-20], 15    ;[rbp-20] <- 15
	mov	DWORD PTR [rbp-16], 18    ;[rbp-16] <- 18
	mov	DWORD PTR [rbp-12], 19    ;[rbp-12] <- 19
	mov	DWORD PTR [rbp-104], 0    ;[rbp-104] <- 0
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
	cmp	DWORD PTR [rbp-104], 9  ;comparing operands [rbp-104] and 9
	jle	.L3                    ;jump to line 3 if less than equal condition satisfy
	mov	eax, 0
	mov	rcx, QWORD PTR [rbp-8]
	xor	rcx, QWORD PTR fs:40
	je	.L5                   ;jump to line 5 if equal condition satisfy 
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
