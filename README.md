# -studies-Low-level-programming-
How to compile and running:<br />
-Week01:<br />
nasm -felf64 name.asm -o name.o <br />
ld -m elf_x86_64  name.o -o name <br />

-Week02 and Week03<br />
Download asm64_io libraryfrom: https://sites.google.com/site/prognisk/biblioteka-asm_io/asm64_io.zip<br />
Compilie library in folder
gcc -c driver64.c -o driver64.o <br />
nasm -f elf64 asm64_io.asm -o asm64_io.o <br />

nasm -felf64 -o name.o name.asm  <br />
gcc -o name name.o driver64 p asm64_io.o <br />

-Week04<br />
nasm -felf32 name.asm -o name.o<br />
gcc -m32 -o name2.o -c name2.c<br />
gcc -m32 name2.o name.0 name <br />