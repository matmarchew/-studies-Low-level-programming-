section .text
   global iloczyn

iloczyn:
	enter 0,0
	pop r10

	sub rsp, 40
	mov [rsp+32],r9
	mov [rsp+24],r8
	mov [rsp+16],rcx
	mov [rsp+8],rdx
	mov [rsp],rsi
	
	mov rcx, rdi
	mov rax, 1
	for:
		mov rdi, [rsp + 8*rcx - 8]
		mul rdi
	loop for
	add rsp, 40
	push r10
	leave
ret

section .data
