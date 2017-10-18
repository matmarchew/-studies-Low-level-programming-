%include "asm64_io.inc"

segment .text
	global asm_main
	asm_main:
		enter 0,0
		call read_int
		
		mov rbx, rax
		mov rcx, rax
		sub rcx, 1
		for:
			cmp rcx, 2
			jl prime
			mov rdx, 0
			mov rax, rbx
			mov rsi, rcx
			div rsi
			cmp rdx, 0
			je noPrime
		loop for
		
			prime:
				cmp rbx, 1
				je noPrime
				mov rax, yes
				jmp end
				
			noPrime:
				mov rax, no
				
		end:
		call println_string
		
		mov rax, 60
		syscall
		mov rax, 0
		leave
	ret

segment .data
yes db "prime number", 0
no db "no prime number", 0
