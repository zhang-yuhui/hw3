CXX := g++
CXXFLAGS := -g -Wall --std=c++11
VALGRIND := valgrind --tool=memcheck --leak-check=yes

all: heap

#-----------------------------------------------------
# ADD target(s) to build your llrec-test executable
#-----------------------------------------------------
llrec-test: llrec-test.cpp llrec.o
	$(CXX) $(CXXFLAGS) $^ -o $@

llrec: llrec.cpp llrec.h
	$(CXX) $(CXXFLAGS) $^ -c -o llrec.o

stack: stack.tpp stack.h
	$(CXX) $(CXXFLAGS) $^ -c -o stack.o

heap: heap_test.cpp
	$(CXX) $(CXXFLAGS) $^ -o $@
	./heap

clean:
	rm -f *.o rh llrec-test *~ *.gch heap
	rm -rf *.dSYM

.PHONY: clean 