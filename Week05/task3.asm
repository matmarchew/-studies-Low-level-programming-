%define a dword [ebp+12]
%define b dword [ebp+16]

section .text
   global iloczyn_skalarny  

iloczyn_skalarny:
	enter 0,0
	mov ecx, [ebp+8]
	mov eax, [ebp+12]
	mov edx, [ebp+16]
	
	fild word [one]
	do:
		fld tword [eax]
		add eax, 12
		fld tword [edx]
		add edx, 12
		fmulp st1
		faddp st1
	loop do
	leave
ret

section .data
one dw 0

