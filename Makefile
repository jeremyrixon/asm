AS=yasm
ASFLAGS=-f macho64

LD=ld
LDFLAGS=-e start -arch x86_64 -static

all: syscall64 cat

syscall64: syscall64.o
	$(LD) $(LDFLAGS) syscall64.o -o syscall64

cat: cat.o
	$(LD) $(LDFLAGS) cat.o -o cat

clean:
	rm -f *.o
	rm -f syscall64
