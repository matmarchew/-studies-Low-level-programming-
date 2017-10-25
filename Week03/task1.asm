%include "asm64_io.inc"

segment .bss

segment .text
	global asm_main
	asm_main:
		enter 0,0 
		
		mov rbx, 0
		
		for:
			call read_int
			cmp rax, 0
			je isZero
			push rax
			inc rbx
		jmp for
		
		isZero:
			call read_int
			mov rdx, 0
			
		isLe:
			cmp rbx, 0
			je end
			pop rcx
			cmp rax, rcx
			jg gt
			dec rbx
		jmp isLe
		
		gt:
			inc rdx
			dec rbx
			jmp isLe
		
		end:
			mov rax, rdx
			call println_int
		
		mov rax, 0 
		leave
	ret

segment .data

