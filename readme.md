# Environment Creator

- A simple bash script for creating C coding enviorments and initializing a git repo

## Files

See [Example](https://github.com/Boettner-eric/Environment-Creator/tree/master/example) for an example folder

- name.c
- name.h
- test.c
- Makefile
- Readme.md

## Usage

```bash
$ sh Env.sh (name)
```

- Generates a folder (name) with starter files for a basic c project

## Makefile

Generates helpful Makefiles, making compilation easy

```bash
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
```
