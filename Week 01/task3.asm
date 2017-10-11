section .text

	global _start

	_start:
		mov rax, 2
		mov rdi, filename
		mov rsi, 2301o
		mov rdx, 404o
		syscall
		
		mov [handle], rax
		
		mov rax, 1
		mov rdi, [handle]
		mov rsi, name
		mov rdx, length
		syscall
		
		mov rax, 3
		mov rdi, [handle]
		syscall
		
		mov rax, 60
		syscall
		
section .data
	filename db "file.txt", 0
	name db "Marchewka"
	length equ $ - name
	handle times 30 db 0
	
