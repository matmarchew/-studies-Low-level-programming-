section .text
   global minmax 

minmax:
	enter 0,0
	mov ecx, [ebp+12]
	mov eax, [ebp+16]
	mov ebx, [ebp+16]
	dec ecx
	for:
		cmp eax, [ebp + 4*ecx + 16]
		jl max
		
		next:
			cmp ebx, [ebp + 4*ecx + 16]
			jg min
		for2:
	jmp end
	
	max:
		mov eax, [ebp + 4*ecx + 16]
	jmp next
	
	min:
		mov ebx, [ebp + 4*ecx + 16]
	jmp for2
	
	end:
		mov ecx, [ebp+8]
		mov [ecx], eax
		mov [ecx + 4], ebx
	mov eax, 0
	leave
ret

section .data

