# Program name
PROGRAM = program

# Dir of the sources
SRC_DIR = src

# Source
SRCS = $(SRC_DIR)/main.c

# Compiler and flags
CC = gcc
CFLAGS = -I$(SRC_DIR)/include

# Rule for default
all: $(PROGRAM)

# Rule
$(PROGRAM): $(SRCS)
	$(CC) $(CFLAGS) $(SRCS) -o $(PROGRAM)

# Clean rule
clean:
	rm -f $(PROGRAM)

#Not file targets
.PHONY: all clean
