extern printf
extern exit

section .text
global _start

%define LIMIT 10000000

_start:
	push rax
	mov eax, 2

loop:
	; Check if the current number is prime, if not, increment eax and continue.
	cmp byte [array + eax],1
	jl inc
	
	; If we are still here, the number is prime, so we print it
	push rax ; save rax
	mov rdi, format 
	mov esi, eax
	mov eax, 0
	call printf
	pop rax


	mov ebx,eax ; Copy eax to ebx, to use for computing multiples.
mult:
	; Mark multiple as not prime.
	mov byte [array + ebx],0
	; Advance to next multiple until at end of array.
	add ebx,eax;
	cmp ebx, LIMIT
	jl mult
	
inc:
	add eax, 1
	cmp eax, LIMIT
	jle loop

exit:
	; We dont care about eax or ebx anymore
	mov rax, 60
	syscall
	jmp $

section .rodata
format:
	db "%d",10,0

zero:
	db 0
one:
	db 1

section .data
array:
	times 10000000 db 1
