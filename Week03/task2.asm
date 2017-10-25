%include "asm64_io.inc"

segment .bss

segment .text
	global asm_main
	asm_main:
		enter 0,0 
		
		push 8
		push t
		
		call max
		call println_int
		
		mov rax, 0 
		leave
	ret
	
	max:
		pop r9
		pop rcx 
		pop rbx
		
		mov rax, [rcx]
		mov r8, 1
		for:
			cmp r8, rbx
			je end
			mov rdx, [rcx + 4*r8]
			cmp eax, edx
			jl if
			inc r8
		jmp for
			
		if:
			mov eax, edx
			inc r8
			jmp for
			
		end:
		
		push r9
	ret

segment .data
t dd 23, 33, 1135, 1122, 5, 55, 65, 14

