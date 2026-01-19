CC = gcc
CFLAGS = -Wall -Wextra -O2

all: main

main: main.c
	$(CC) $(CFLAGS) main.c -o bf

clean: 
	rm -f main bf
