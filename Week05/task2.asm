%define a dword [ebp+8]
%define b dword [ebp+12]
%define c dword [ebp+16]

section .text
   global prostopadloscian  

prostopadloscian:
	enter 0,0
	fld a
	fld b
	fmulp st1
	fld c
	fmulp st1
	mov eax, [ebp+20]
	fstp dword [eax]
	
	fld a
	fld c
	fmulp st1
	fld a
	fld c
	faddp st1
	fld b
	fmulp st1
	faddp st1
	fild word [two]
	fmulp st1
	mov eax, [ebp+24]
	fstp word [eax]
	leave
ret

section .data
two dw 2
