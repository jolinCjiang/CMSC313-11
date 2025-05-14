test: test.s
	nasm -f elf32 test.s -o test.o
	ld -m elf_i386 -o test test.o
	./test
