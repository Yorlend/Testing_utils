CC := gcc
CFLAGS := -std=c99 --coverage -Wall -Werror -Wpedantic -Wextra -Wvla -Wredundant-decls -Wsign-conversion
FILES := main.c

.PHONY: clean

all: a.exe
	bash ./test.sh

a.exe : $(FILES)
	$(CC) $(CFLAGS) -o $@ $^ -lm

clean:
	rm a.exe main.gcda main.gcno temp.txt
