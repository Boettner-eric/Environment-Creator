#!/bin/bash
mkdir $1
cd $1
touch Makefile
echo "CC = gcc\nFlags = -Wall -o\n\nall:" $1 "test\n\n"$1":" $1".c\n\t\${CC}" $1".c \${Flags}" $1"\n\ntest: test.c\n\t\${CC} test.c $1.c \${Flags} test\n\nclean:\n\trm -f $1\n\trm -f test" > Makefile
touch Readme.md
echo $1 > Readme.md
touch "$1.h"
touch "$1.c"
echo "#include \"$1.h\"\n\nint main() {\n\n};" > $1.c
touch "test.c"
echo "#include \"$1.h\"\n\nint main() {\n\n};" > test.c

touch ".gitignore"
echo ".*" > .gitignore
git init
git add .
git status
echo "New Git Directory $1 Initialized"
