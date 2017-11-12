section .text
   global sortuj   

sortuj:
	enter 0,0
	mov eax, [ebp + 8]
	mov ebx, [ebp + 12]
	mov ecx, [ebp + 16]
	
	mov [L1], eax
	mov [L2], ebx
	mov [L3], ecx
	
	mov eax, [eax]
	mov ebx, [ebx]
	mov ecx, [ecx]
	
	cmp eax, ebx
	jl lab1
	
	plab1:
		cmp eax, ecx
		jl lab2
		
	plab2:
		cmp ebx, ecx
		jl lab3
	jmp end
	
	lab1:
		mov edx, eax
		mov eax, ebx
		mov ebx, edx
	jmp plab1
	
	lab2:
		mov edx, eax
		mov eax, ecx
		mov ecx, edx
	jmp plab2
	
	lab3:
		mov edx, ebx
		mov ebx, ecx
		mov ecx, edx
		
	end:
	mov edx, [L1]
	mov [edx], eax
	mov edx, [L2]
	mov [edx], ebx
	mov edx, [L3]
	mov [edx], ecx
	
	leave
ret

section .data
L1 dd 0
L2 dd 0
L3 dd 0
