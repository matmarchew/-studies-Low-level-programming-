section .text
   global diff

diff:
	enter 0,0
	for:
		cmp rcx, 16
		jl ska
		movups xmm0, [rsi+rcx-16]
		movups xmm1, [rdx+rcx-16]
		psubsb xmm0, xmm1
		movups [rdi+rcx-16], xmm0
		sub rcx, 16
	jmp for
	
	ska:
		movss xmm0, [rsi+rcx-1]
		movss xmm1, [rdx+rcx-1]
		psubsb xmm0, xmm1
		movss [rdi+rcx-1], xmm0
	loop ska
	leave
ret

