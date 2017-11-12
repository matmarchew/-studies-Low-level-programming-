section .text
   global sumaN   

sumaN:
	enter 0,0
	mov ecx, [ebp+8]
	mov ebx, [ebp+12]
	mov eax, 0
	for:
		add eax, [ebx + 4*ecx - 4]
	loop for

	leave
ret

section .data
