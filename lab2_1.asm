	.file	"lab2_1.c"
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
	push	r12
	push	rbx
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	mov	ebx, 20
	mov	r12d, 10
	lea	eax, [rbx+r12]
	mov	DWORD PTR -32[rbp], eax
	mov	eax, ebx
	sub	eax, r12d
	mov	DWORD PTR -28[rbp], eax
	mov	eax, ebx
	imul	eax, r12d
	mov	DWORD PTR -24[rbp], eax
	mov	eax, ebx
	cdq
	idiv	r12d
	mov	DWORD PTR -20[rbp], eax
	mov	eax, 0
	pop	rbx
	pop	r12
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
