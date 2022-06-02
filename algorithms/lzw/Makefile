CC=gcc
CFLAGS=-O3

all: lzw

stainless.c:
	stainless-dotty LZWa.scala --genc -J-Xms10G -J-Xss20M

lzw: stainless.c
	$(CC) $(CFLAGS) stainless.c -o lzw

clean:
	rm -f lzw stainless.c stainless.h