section .text
   global podatek
   global wypisz
   extern printf 

podatek:
	enter 0,0
	shr rdi, 32
	movq rax, xmm0
	movd xmm0, edi
	movd xmm1, eax
	shr rax, 32
	movd xmm2, eax
	subss xmm0, xmm1
	mulss xmm0, xmm2
	leave
ret

wypisz:
	enter 0,0
	mov r9, rdi
	
	mov rdi, [r9]
	movq xmm0, [r9+8]
	call podatek
	
	mov rax, 2

	mov rsi, [r9]
	mov rdi, formatout
	movss xmm1, xmm0
	movd xmm0, [r9+4]
	cvtss2sd xmm0, xmm0
	cvtss2sd xmm1, xmm1
	call printf
	leave
ret

section .data
	formatout db "Faktura %d : obrot %f podatek %f", 10, 0
