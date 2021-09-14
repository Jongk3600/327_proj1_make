CFLAGS = -Wall
#target exe
all: myfunc.o
	g++ -o myexe myfunc.o
	
#rebuild if either of the files below change	
myfunc.o: myfunc.cpp myfunc.h
	g++ $(CFLAGS) -c myfunc.cpp 

#type 'make clean' to remove following	
clean:
	rm -f *.o myexe
