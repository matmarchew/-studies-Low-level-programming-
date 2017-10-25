%include "asm64_io.inc"

segment .bss

segment .text
	global asm_main
	asm_main:
		enter 0,0
		push lens
		push s1
		push s2
		push len
		push string
		
		call toCry
		call println_string
		
		mov rax, 0 
		leave
	ret
	
	toCry:
		pop rax
		pop rdx
		pop rcx
		pop r9
		pop r8
		pop r10
		push rax
		
		while:
			cmp rcx, 0
			je end
			call pom
			mov [r + rcx - 1], al
			dec rcx
		jmp while
		
		end:
		
		mov rax, r
	ret
	
	pom:
		mov r11, r10
		mov al, [rdx + rcx - 1]
		for:
			cmp r11, 0
			je break
			cmp [r8 + r11 -1], al
			je swa
			dec r11
		jmp for
		
		swa:
			mov al, [r9 + r11 -1]
		
		break:
	ret
		
	

segment .data
s1 db "abcdefghijklmnopqrstuvwxyz",0
lens equ $-s1-1
s2 db "zyxwvutsrqponmlkjihgfedcba",0
string db "ala ma kota 111",0
len equ $-string-1
r db "                      ",0
