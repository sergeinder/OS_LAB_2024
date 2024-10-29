CC=gcc
CFLAGS=-I.
THFLAGS=-pthread -lsum -L.
UTPATH=../../lab3/src/

all : find_min_max.o utils.o parallel_min_max zombie process_memory threads_sum.o libthreads_sum.a parallel_sum

zombie : 
	$(CC) -o zombie zombie.c

parallel_min_max : utils.o find_min_max.o utils.h find_min_max.h
	$(CC) -o parallel_min_max utils.o find_min_max.o parallel_min_max.c $(CFLAGS)

utils.o : utils.h
	$(CC) -o utils.o -c utils.c $(CFLAGS)

find_min_max.o : utils.h find_min_max.h
	$(CC) -o find_min_max.o -c find_min_max.c $(CFLAGS)

process_memory : 
	$(CC) -o process_memory process_memory.c 

threads_sum.o : threads_sum.h
	$(CC) -c threads_sum.c -o threads_sum.o $(CFLAGS)

libthreads_sum.a : threads_sum.o
	ar rcs libthreads_sum.a threads_sum.o

parallel_sum : utils.o libthreads_sum.a
	$(CC) -pthread -o parallel_sum utils.o parallel_sum.c -L. -lthreads_sum $(CFLAGS)

clean :
	rm utils.o find_min_max.o parallel_min_max zombie process_memory parallel_sum