# OS identification from: https://stackoverflow.com/questions/714100/os-detecting-makefile
OS := $(shell uname -s)

ifeq ($(OS), Darwin) 
  INCLUDE_PATH := /opt/homebrew/Cellar/criterion/2.4.1_1/include
  LIB_PATH := /opt/homebrew/Cellar/criterion/2.4.1_1/lib
  CC = gcc-12
endif
ifeq ($(OS), Linux) 
  INCLUDE_PATH := /util/criterion/include
  LIB_PATH := /util/criterion/lib/x86_64-linux-gnu
  CC = gcc
endif

CC = gcc
NO_DEBUG_FLAGS = -c -Wall -std=c11
DEBUG_FLAGS = -ggdb -O0 -c -Wall -fprofile-arcs -ftest-coverage 
FLAGS = $(DEBUG_FLAGS)

SRC = counts.c
TST = tests.c
GEX = counts-gprof
TEX = tests
FLAGS = -pg -fprofile-arcs -ftest-coverage

.PHONY: clean
clean: 
	rm -rf *~ *.o $(GEX) $(TEX) *.dSYM *.gc?? gmon.out analyze.txt sandbox-gmon.*

counts.o: counts.c
	gcc -c -g -O0 -Wall -std=c11 $(SRC)

tests.o: tests.c
	gcc -c -g -O0 -Wall -std=c11 -I $(INCLUDE_PATH) $(TST)

c-exec: counts.o
	gcc -g -O0 -Wall $(FLAGS) -L $(LIB_PATH) -I $(INCLUDE_PATH)  -o $(GEX) $(SRC) main.c -lcriterion

c-test: tests.o counts.o
	gcc -g -O0 -Wall $(FLAGS) -L $(LIB_PATH) -I $(INCLUDE_PATH)  -o $(TEX) $(SRC) tests.c -lcriterion

.PHONY: andRunPerformance
andRunPerformance:
	make clean
	make c-exec
	./$(GEX)
	gprof -b ... > analyze.txt <-- fix this line
	gcov $(SRC) 
	echo "Look at analyze.txt for gprof timing data"
	echo "Look at $(SRC).gcov for gcov annotated source code with execution counts"

.PHONY: andRunTests
andRunTests:
	make clean
	make c-test
	./tests
	gcov $(SRC) 
	echo "Look at $(SRC).gcov for gcov annotated source code with execution counts"

