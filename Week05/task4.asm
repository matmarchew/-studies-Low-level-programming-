%define a qword [ebp+8]
%define b qword [ebp+16]
%define P qword [ebp+24]
%define Q qword [ebp+32]
section .text
   global tablicuj 

tablicuj:
	enter 0,0
	mov eax, [ebp+60]
	mov ecx, [ebp+56]
	fld qword [ebp+40]
	fld qword [ebp+48]
	fsub st0, st1
	fild dword [ebp+56]
	fld1
	fsubp st1
	fdivp st1
	
	do:
		fld P
		fld1
		fld1
		faddp st1
		fmulp st1
		fldpi
		fmulp st1
		fmul st0, st2
		fsin
		fldz
		fadd st0, st1
		fmulp st1
		fld a
		fmulp st1
		
		fld Q
		fld1
		fld1
		faddp st1
		fmulp st1
		fldpi
		fmulp st1
		fmul st0, st3
		fsin
		fldz
		fadd st0, st1
		fmulp st1
		fld b
		fmulp st1
		
		faddp st1
		fstp qword [eax]
		add eax, 8
		fadd st1, st0
	loop do
	fstp qword [eax]
	fstp qword [eax]
	leave
ret

section .data
