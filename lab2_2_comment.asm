	.file	"lab2_2.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp                     ; stack[top-0] <-[rbp]
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp                ;rbp <-[rsp]
	.cfi_def_cfa_register 6
	push	r12                     ;stack[top-1] <-[12]
	push	rbx                     ;stack[top-2] <-[rbx]
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	mov	ebx, 5                   ;ebx <-5
	mov	r12d, 15                 ;r12d <-15
	add	ebx, r12d                ;ebx <- ebx +r12d; ebx<-20
	mov	eax, ebx                 ;eax <- ebx; ebx <- 20
	sub	eax, r12d                ;eax <- eax - r12d;eax <-5
	mov	r12d, eax                ;r12d <-eax; r12d <- 5
	sub	ebx, r12d                ;ebx <-ebx -r12d; ebx <-15
	mov	eax, 0
	pop	rbx
	pop	r12
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
