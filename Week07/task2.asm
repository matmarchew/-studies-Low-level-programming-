section .text
   global wartosc

wartosc:
	enter 0,0
	mov rcx, rdi
	dec rcx
	
	mulsd xmm0,xmm2 
	addsd xmm0,xmm1
	movsd xmm1, xmm0
	for:
		mulsd xmm0, xmm1
	loop for
		
	leave
ret

section .data
