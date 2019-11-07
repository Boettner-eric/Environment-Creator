CC = gcc
Flags = -Wall -o

all: example test

example: example.c
	${CC} example.c ${Flags} example

test: test.c
	${CC} test.c example.c ${Flags} test

clean:
	rm -f example
	rm -f test
