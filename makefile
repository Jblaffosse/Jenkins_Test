hello: hello.o main.o
	gcc -o hello hello.o main.o

hello.o: hello.c
	gcc -o hello.o -c hello.c -W -Wall -ansi -pedantic

main.o: main.c hello.h
	gcc -o main.o -c main.c -W -Wall -ansi -pedantic
	
help:
	echo "try -clean option to delete all the saving files "
	echo "try -hello option to compile and build the hello executable file"
	echo "try -mrproper option to clean also the executable file"
	
clean:
	rm -f *~ *.o

mrproper: clean
	rm -f hello
