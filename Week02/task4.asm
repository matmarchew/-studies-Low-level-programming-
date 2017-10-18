%include "asm64_io.inc"

segment .text
	global asm_main
	asm_main:
		enter 0,0
		call read_int
		mov rbp, rax
		call read_int
		mov rbx, rax
		
		mov rcx, rbp
		for1:
			cmp rcx, rbx
			jg end
			mov r8, 2
			for2:
				cmp r8, rcx
				jge end2
				mov rax, rcx
				mov rdx, 0
				mov rsi, r8
				div rsi
				cmp rdx, 0	
				je break
				inc r8			
			jmp for2
			
			inc rcx
		jmp for1
		
		end2:
			mov rax, rcx
			call println_int
			inc rcx
		jmp for1
		
		break:
			inc rcx
		jmp for1
		
		end:
		
		mov rax, 60
		syscall
		mov rax, 0
		leave
	ret

segment .data


