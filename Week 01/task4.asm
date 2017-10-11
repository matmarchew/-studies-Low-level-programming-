section .text

	global _start

	_start:
		mov rax, 201
		syscall
		
		mov rdx, 0
		mov rsi, 10
		div rsi
		add dl, '0'
		mov [time+7], dl
	
		mov rdx, 0
		mov rsi, 6
		div rsi
		add dl, '0'
		mov [time+6], dl
		
		mov rdx, 0
		mov rsi, 10
		div rsi
		add dl, '0'
		mov [time+4], dl
		
		mov rdx, 0
		mov rsi, 6
		div rsi
		add dl, '0'
		mov [time+3], dl
		
		mov rdx, 0
		mov rsi, 24
		div rsi
		
		mov rax, rdx
		mov rdx, 0
		mov rsi, 10
		div rsi
		add dl, '0'
		mov [time+1], dl
		
		add al, '0'
		mov [time], al
		
		mov rax, 1
		mov rdi, 1
		mov rsi, time
		mov rdx, length
		syscall
		
		mov rax, 60
		syscall
		
section .data
	time db "XX:XX:XX"
	length equ $ - time
	aa db "0"
