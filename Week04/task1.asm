section .text
   global main 
   extern scanf 
   extern printf     

main:
   push var1
   push formatin
   call scanf
   add esp, 8

   push var2
   push formatin
   call scanf
   add esp, 8

   mov edx, 0
   mov eax, [var1]
   mov esi, [var2]
   mul esi
   
   push eax
   push formatout
   call printf
   add esp, 8

   mov eax, 0
ret

section .data
    formatin db "%i", 0
    formatout db "%i", 10, 0
    var1 times 4 db 0
    var2 times 4 db 0
