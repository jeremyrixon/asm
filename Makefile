AS=yasm
ASFLAGS=-f macho64

LD=ld
LDFLAGS=-e _start

syscall64: syscall64.o
	$(LD) $(LDFLAGS) 

clean:
	rm -f *.o
	rm -f syscall64
