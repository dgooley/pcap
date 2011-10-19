CC=gcc
CFLAGS=-g
SRC=src
OBJ=obj
BIN=bin

all: main

$(OBJ)/main.o: $(SRC)/main.c
	$(CC) -c -o $(OBJ)/main.o $(SRC)/main.c $(CFLAGS)

main: $(OBJ)/main.o
	$(CC) -o $(BIN)/tolemy $(OBJ)/main.o $(CFLAGS) $(LIBS)



clean:
	rm -f $(OBJ)/*.o $(BIN)/pcap

.PHONY: clean
