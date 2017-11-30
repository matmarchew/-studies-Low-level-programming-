section .text
   global iloczyn  

iloczyn:
	enter 0,0
	mov rcx, rdi
	mov rax, 1
	for:
		mov rdi, [rsi + 4*rcx - 4]
		mul rdi
	loop for

	leave
ret

section .data
