#!/bin/sh
nasm -f elf64 -o prime.o prime.nasm
ld -o prime prime.o -lc -dynamic-linker /lib64/ld-linux-x86-64.so.2

echo "## ASM"
time ./prime > /dev/null
exit 0
