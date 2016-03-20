# Source: Professional Assembly Language by Richard Blum
# cpuid_printf.s View the CPUID Vendor ID string using C library calls

.section .data

output:
	.asciz "The processor Vendor ID is '%s'\n"


.section .bss
	.lcomm buffer, 12


.section .text
.globl	main 

main:
	movq	$0, %rax
	cpuid
	movq	$buffer, %rdi
	movq	%rbx, (%rdi)
	movq	%rdx, 4(%rdi)
	movq	%rcx, 8(%rdi)
	movq	$buffer, %rsi
	movq	$output, %rdi
	movq	$0, %rax
	call	printf
	addq	$8, %rsp
	pushq	$0
	call	exit
	
