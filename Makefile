SE_PREFIX = $(HOME)

CFLAGS = -g -O2 -Wall
CPPFLAGS = -I$(SE_PREFIX)/include
LDFLAGS = -L$(SE_PREFIX)/lib -Wl,-rpath=$(SE_PREFIX)/lib
LDLIBS = -lse

.PHONY: clean

SDF-reader: SDF-reader.o

clean:
	-$(RM) SDF-reader *.o
