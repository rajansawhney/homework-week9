CC = gcc

largest_number: largest_number.c
	gcc largest_number.c -o largest_number -lm

clean:
	rm largest_number

test: largest_number
	bash test.sh
