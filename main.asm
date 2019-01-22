section .data
	msg:db "Hello, world!", 0xA
	len equ $-msg
section .bss
	buf resb 255
section .text
	global _start
_start:
	mov rax, 0x2000004
	mov rdi, 1
	mov rsi, msg
	mov rdx, len
	syscall
	mov rax, 0x2000001
	mov rdi, 0
	syscall