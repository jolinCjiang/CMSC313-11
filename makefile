converter: converter.s
	nasm -f elf32 converter.s -o converter.o
	ld -m elf_i386 -o converter converter.o
	./converter
