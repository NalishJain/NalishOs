all:
	yasm -f elf64 -o Assignment0_2021543.o Assignment0_2021543.asm
	gcc -o Assignment0_2021543 Assignment0_2021543.o -no-pie
	
