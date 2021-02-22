all:
	gcc -std=c99 -Wall -Werror -o a.exe main.c
	bash ./test.sh
