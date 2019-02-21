hello: helloworld.cpp
	g++ -Wall -o hello helloworld.cpp functions.cpp functions.h
	
help:
	echo "try -clean option to delete all the saving files "
	echo "try -hello option to compile and build the hello executable file"
	echo "try -mrproper option to clean also the executable file"
	
clean:
	rm -f *~ *.o

mrproper: clean
	rm -f hello