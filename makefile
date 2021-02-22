all:
	gcc -std=c99 -Wall -Werror main.c
	./test.sh
