section .text
   global _Z6kopiujPiS_j
   global _Z5zerujPij

_Z6kopiujPiS_j:
	enter 0,0
	mov rcx, rdx
	rep movsd
	leave
ret

_Z5zerujPij:
	enter 0,0
	mov rcx, rsi
	mov eax, 0
	rep stosd
	leave
ret

