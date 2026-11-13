# Makefile commun Mac / Windows (MSYS2 UCRT64)
#   make        : compile le programme
#   make run    : compile puis lance le programme
#   make clean  : supprime les fichiers compiles

CC     = gcc
CFLAGS = -Wall -Wextra -g
SRC    = main.c

# Le nom du programme change selon le systeme
ifeq ($(OS),Windows_NT)
    TARGET = packetsniff.exe
else
    TARGET = packetsniff
endif

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

run: $(TARGET)
	./$(TARGET)

clean:
	rm -rf packetsniff packetsniff.exe *.o *.dSYM

.PHONY: all run clean
