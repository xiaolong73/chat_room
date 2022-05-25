#!Makefile

PROGRAM = Service

C_SOURCE = $(shell find . -name '*.c')
C_OBJECT = $(patsubst %.c, %.o, $(C_SOURCE))

CC = gcc

C_FLAGS = -DEBUG -c -Wall -Wextra -ggdb -I.

all: $(C_OBJECTS)
		@echo comppile...
		$(CC) $(C_OBJECTS) -o $(PROGRAM)

.c.o:
		@echo link$< ...
		$(CC) $(C_OBJECTS) $< -o $@

.PHONY:clean
clean:
		$(RM) $(C_OBJECTS) Service


