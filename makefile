CC := gcc
CFLAGS := -std=c99 --coverage -Wall -Werror -Wpedantic -Wextra -Wvla -Wredundant-decls -Wsign-conversion
FILES := $(shell find . -iname "*.c")
OBJECTS := $(FILES:.c=.o)

.PHONY: clean

all: a.exe
	bash ./test.sh

a.exe: $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $^ -lm

$(OBJECTS): %.o : %.c
	$(CC) $(CFLAGS) -o $@ -c $^

clean:
	rm -rf a.exe *.o *.gcda *.gcno temp.txt
