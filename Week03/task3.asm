%include "asm64_io.inc"

segment .bss

segment .text
	global asm_main
	asm_main:
		enter 0,0
		
		push lenT
		push t
		call toInt
		call println_int
		
		push 34535475
		call toString
		call println_string
		
		mov rax, 0 
		leave
	ret
	
	toInt:
		pop rax
		pop r10
		pop rcx
		push rax
		
		mov rax, 0
		mov rdx, 0
		
		sub rcx, 1
		mov r11, 0
		mov rdi, 1
		
		for:
			cmp rcx, 0
			jl end
			mov rbx, [t + rcx]
			sub bl, '0'
			movzx rax, bl
			mul rdi
			add r11, rax
			mov rax, rdi
			mov rdi, 10
			mul rdi
			mov rdi, rax
		loop for
			
		end:
		mov rbx, [t]
		sub bl, '0'
		movzx rax, bl
		mul rdi
		add rax, r11
	ret
	
	toString:
		pop rbx
		pop rax
		push rbx
		mov rcx, 0
		mov rsi, 10
		for1:
			div rsi
			add rdx, '0'
			push rdx
			mov rdx, 0
			inc rcx
			cmp rax, 0
			je end1
		jmp for1
		
		end1:
		mov rbx, 0
		while:
			cmp rcx, 0
			je break
			pop rax
			mov [r + rbx], al
			inc rbx
		loop while
			
		break:
			
		mov rax, r
	ret
	

segment .data
t db "23225",0
lenT equ $-t-1
r db "           ",0
