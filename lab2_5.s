	.file	"lab2_5.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp                ;stack[top-0] <- rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp           ;rbp<-rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64             ;rsp <-[rsp-64]
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR [rbp-8], rax
	xor	eax, eax              ;eax <-eax ^eax
	mov	DWORD PTR [rbp-48], 4   ;[rbp-48] <- 4
	mov	DWORD PTR [rbp-44], 12  ;[rbp-44] <- 12
	mov	DWORD PTR [rbp-40], 34  ;[rbp-40] <- 34
	mov	DWORD PTR [rbp-36], 51  ;[rbp-36] <- 51
	mov	DWORD PTR [rbp-32], 22  ;[rbp-32] <- 22
	mov	DWORD PTR [rbp-28], 44  ;[rbp-28] <- 44
	mov	DWORD PTR [rbp-24], 11  ;[rbp-24] <- 11
	mov	DWORD PTR [rbp-20], 15  ;[rbp-20] <- 15
	mov	DWORD PTR [rbp-16], 18  ;[rbp-16] <- 18
	mov	DWORD PTR [rbp-12], 19   ;[rbp-12] <- 19
	mov	DWORD PTR [rbp-60], 0    ;[rbp-60] <- 0
	mov	DWORD PTR [rbp-56], 100000   ;[rbp-56] <- 100000
	mov	DWORD PTR [rbp-52], 0       ;[rbp-52] <- 0
	jmp	.L2                         ;jump to line 2
.L5:
	mov	eax, DWORD PTR [rbp-52]
	cdqe
	mov	eax, DWORD PTR [rbp-48+rax*4]
	cmp	eax, DWORD PTR [rbp-60]      ;comparing eax and [rbp-52]
	jle	.L3                          ;jump to line 3 if equql condition satisfy
	mov	eax, DWORD PTR [rbp-52]      ;[rbp] <- eax
	cdqe
	mov	eax, DWORD PTR [rbp-48+rax*4]
	mov	DWORD PTR [rbp-60], eax
.L3:
	mov	eax, DWORD PTR [rbp-52]
	cdqe
	mov	eax, DWORD PTR [rbp-48+rax*4]
	cmp	eax, DWORD PTR [rbp-56]
	jge	.L4
	mov	eax, DWORD PTR [rbp-52]
	cdqe
	mov	eax, DWORD PTR [rbp-48+rax*4]
	mov	DWORD PTR [rbp-56], eax
.L4:
	add	DWORD PTR [rbp-52], 1
.L2:
	cmp	DWORD PTR [rbp-52], 9
	jle	.L5
	mov	eax, 0
	mov	rdx, QWORD PTR [rbp-8]
	xor	rdx, QWORD PTR fs:40
	je	.L7
	call	__stack_chk_fail
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
