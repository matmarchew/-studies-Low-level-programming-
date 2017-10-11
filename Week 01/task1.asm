section .text

	global _start

	_start:
		mov rax, 0
		mov rdi, 0
		mov rsi, buf
		mov rdx, 30
		syscall
	  
		mov rdx, rax
	  
		mov rax, 1
		mov rdi, 1
		mov rsi, tekst
		add rdx, dlugosc
		syscall

		mov rax, 60
		syscall

section .data
	tekst db "Czesc "
	dlugosc equ $ - tekst
	buf db "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
  
  
  
