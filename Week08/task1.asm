section .text
   global _Z6rotateji
   global _Z6rotatehi

_Z6rotateji:
	enter 0,0
	mov eax, edi
	mov cl, sil
	rol eax, cl
	leave
ret

_Z6rotatehi:
	enter 0,0
	mov al, dil
	mov cl, sil
	rol al, cl
	leave
ret
