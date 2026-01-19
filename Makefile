CC = gcc
CFLAGS = -Wall -Wextra -O2

all: main

main: main.c
	$(CC) $(CFLAGS) main.c -o main

clean:
	rm -f main
