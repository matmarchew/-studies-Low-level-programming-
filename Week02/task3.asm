%include "asm64_io.inc"

segment .text
	global asm_main
	asm_main:
		enter 0,0
		call read_int
		mov rbx, rax
		
		call read_int
		mov rcx, rax
		
		mov rdi, rbx
		mul rdi
		mov rbp, rax
	
		for:
			cmp rcx, 0
			je end
			mov rax, rbx
			mov rdx, 0
			mov rsi, rcx
			div rsi
			mov rbx, rcx
			mov rcx, rdx
		jmp for
		
		end:
			mov rax, rbp
			mov rdx, 0
			mov rsi, rbx
			div rsi
			call println_int
		
		mov rax, 60
		syscall
		mov rax, 0
		leave
	ret

segment .data

