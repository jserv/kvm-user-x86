A simple userspace program to interact with Linux KVM on x86 hardware containing virtualization extensions (Intel VT or AMD-V).

The work was derived from [this article](http://soulxu.github.io/blog/2014/08/11/use-kvm-api-write-emulator/).

## Prerequisites
* Intel processor with VT (virtualization technology) extensions or AMD processor with SVM extensions (also called AMD-V)
  - Enable VT or AMD in advnace.
* Install Linux kernel headers
```
sudo apt-get install linux-headers-generic
```

## Build
Simply execute GNU `make`:
```
make
```
There are two files generated:
* `kvm-user`
* `vm.bin`

## Run
* Enable [KVM](http://www.linux-kvm.org/):
```
sudo modprobe kvm
```
* Execute `kvm-user`
```
./kvm-user
```

Sample output:
```
KVM start run
KVM_EXIT_IO
out port: 0x10, data 0
KVM start run
KVM_EXIT_IO
out port: 0x10, data 1
KVM start run
KVM_EXIT_IO
out port: 0x10, data 2
KVM start run
KVM_EXIT_IO
out port: 0x10, data 3
```
