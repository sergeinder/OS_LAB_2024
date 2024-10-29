CC=gcc
CFLAGS=-I.

all: mutex mutex_off task2 task3 
	
mutex: 
	$(CC) -o mutex mutex.c -lpthread $(CFLAGS)

mutex_off: 
	$(CC) -o mutex_off mutex_off.c -lpthread $(CFLAGS)

task2:
	$(CC) -o task2 task2.c -lpthread $(CFLAGS)

task3:
	$(CC) -o task3 task3.c -lpthread $(CFLAGS)

clean:
	rm mutex mutex_off task2 task3