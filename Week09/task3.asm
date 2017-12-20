section .text
   global scaleSSE

scaleSSE:
	enter 0,0
	mov rcx, 0
	mov rax, 0
	lea r10, [rsi + 4*rdx]
	movups xmm4, [four]
	for:
		cmp rcx, rdx
		jge end
		movups xmm0, [rsi + 4*rcx]
		movups xmm1, [r10 + 4*rcx]
		add rcx, 4
		movups xmm2, [rsi + 4*rcx]
		movups xmm3, [r10 + 4*rcx]
		addps xmm0, xmm1
		addps xmm2, xmm3
		haddps xmm0, xmm2
		divps xmm0, xmm4
		movups [rdi + 4*rax], xmm0
		add rcx, 4
		add rax, 4
	jmp for
	end:
	leave
ret

section .data
four dd 4.0, 4.0, 4.0, 4.0
