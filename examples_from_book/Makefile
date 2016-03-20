all: cpuid cpuid_printf cpuid_printf_gcc move_bin remove_o

cpuid: cpuid.o
	ld -o cpuid cpuid.o
cpuid.o: cpuid.s
	as -o cpuid.o cpuid.s

cpuid_printf: cpuid_printf.o
	ld -dynamic-linker /lib64/ld-linux-x86-64.so.2  -o cpuid_printf -lc cpuid_printf.o
cpuid_printf.o: cpuid_printf.s
	as -o cpuid_printf.o cpuid_printf.s

cpuid_printf_gcc: cpuid_printf_gcc.s
	gcc -o cpuid_printf_gcc cpuid_printf_gcc.s

##########################################

move_bin:
	mv cpuid bin/cpuid
	mv cpuid_printf bin/cpuid_printf
	mv cpuid_printf_gcc bin/cpuid_printf_gcc

remove_o:
	rm -f *.o

.PHONY: move_bin
.PHONY: remove_o
