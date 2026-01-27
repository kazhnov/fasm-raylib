main.o: main.fasm
	fasm main.fasm

main: main.o
	ld main.o -dynamic-linker /lib64/ld-linux-x86-64.so.2 -lc -lm -L. -lraylib -o main

ldd: main
	ldd main

run: main
	./main
