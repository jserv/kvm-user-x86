all: kvm-user vm.bin

kvm-user: kvm-user.c
	gcc -Wall kvm-user.c -o kvm-user -lpthread

vm.bin: vm.S
	as -32 vm.S -o vm.o
	ld -m elf_i386 --oformat binary -N -e _start -Ttext 0x10000 -o vm.bin vm.o

clean:
	rm -f kvm-user vm.o vm.bin
