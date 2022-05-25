#!Makefile

PROGRAM = Service

C_SOURCE = $(shell find . -name '*.c')
C_OBJECT = $(patsubst %.c, %.o, $(C_SOURCE))

CC = gcc


