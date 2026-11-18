CC = gcc
CFLAGS = -Wall -Wextra

hello: main.o greet.o Makefile
	$(CC) $(CFLAGS) main.o greet.o -o hello	

main.o greet.o:greet.h Makefile

.PHONY: clean

clean:
	rm -f hello main.o greet.o
