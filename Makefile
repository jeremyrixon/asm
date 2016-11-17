AS=yasm
ASFLAGS=-f macho64

LD=ld
LDFLAGS=-arch x86_64 -static -macosx_version_min 10.10

all: syscall64 cat

syscall64: syscall64.o
	$(LD) $(LDFLAGS) syscall64.o -o syscall64

cat: cat.o
	$(LD) $(LDFLAGS) cat.o -o cat

hello: hello.o
	$(LD) $(LDFLAGS) hello.o -o hello

clean:
	rm -f *.o
	rm -f syscall64
