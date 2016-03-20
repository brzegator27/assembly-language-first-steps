all: cpuid move_bin remove_o

cpuid: cpuid.o
	ld -o cpuid cpuid.o

cpuid.o: cpuid.s
	as -o cpuid.o cpuid.s

##########################################

move_bin:
	mv cpuid bin/cpuid

remove_o:
	rm -f *.o

.PHONY: move_bin
.PHONY: remove_o
