section .text

	global _start

	_start:
		mov rax, 0
		mov rdi, 0
		mov rsi, a
		mov rdx, 2
		syscall
		
		mov rax, 0
		mov rdi, 0
		mov rsi, b
		mov rdx, 2
		syscall
		
		mov al, [a]
		sub al, '0'
		
		mov bl, [b]
		sub bl, '0'
		
		add bl, al
		
		mov al, bl
		mov bl, 10
		div bl
		
		add al, '0'
		add ah, '0'
		
		mov [result], al
		mov [result+1], ah
		
		mov rax, 1
		mov rdi, 1
		mov rsi, result
		mov rdx, 2
		syscall
	
		mov rax, 60
		syscall
		
section .data
	result db "  "
	a db "  "
	b db "  "
