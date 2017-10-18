%include "asm64_io.inc"

segment .text
	global asm_main
	asm_main:
		enter 0,0
		call read_int
		
		mov rbx, rax
		mov rcx, 2
		for:
			cmp rcx, rbx
			jg end
			mov rax, rbx
			mov rdx, 0
			mov rsi, rcx
			div rsi
			cmp rdx, 0
			je eq
			inc rcx
		jmp for
		
		eq:
			mov rbx, rax
			mov rax, rcx
			call println_int
			jmp for
		
		end:
		
		mov rax, 60
		syscall
		mov rax, 0
		leave
	ret

segment .data
