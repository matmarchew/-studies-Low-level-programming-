section .text
   global gradientSSE

gradientSSE:
	enter 0,0
	mov rcx, 0
	lea r10, [rsi + 4*rdx]
	mov r12, 0
	sub r12, rdx
	lea r11, [rsi + 4*r12]
	for:
		cmp rcx, rdx
		jge end
		movups xmm0, [rsi + 4*rcx + 4]
		movups xmm1, [rsi + 4*rcx - 4]
		psubsb xmm0, xmm1
		mulps xmm0, xmm0
		movups xmm2, [r10 + 4*rcx]
		movups xmm3, [r11 + 4*rcx]
		psubsb xmm2, xmm3
		mulps xmm2, xmm2
		addps xmm0, xmm2
		sqrtps xmm0, xmm0
		movups [rdi+4*rcx], xmm0
		add rcx, 4
	jmp for
	end:
	leave
ret
