CC = gcc
CFLAGS = -O2 -Wall
VERSION = 1.0.8

UNAME := $(shell uname)
ifeq ($(UNAME), Darwin)
	CFLAGS += -DOS_OSX
endif

all: ttygif

ttygif: ttygif.o io.o string_builder.o
	$(CC) $(CFLAGS) -o ttygif ttygif.o io.o string_builder.o

clean:
	rm -f *.o ttygif ttyrecord *~
