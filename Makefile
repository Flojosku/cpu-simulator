# Makefile for a simple C++ project

# Define the source files
SRC = main.cpp

# Define the output executable
OUTPUT = simulate.out

# Default C++ compiler
CXX = g++

# Check for clang++ and use it if available
ifeq ($(shell command -v clang++ 2>/dev/null),)
    CXX = g++
else
    CXX = clang++
endif

# Compiler flags
CXXFLAGS = -Wall -Wextra -std=c++17

# Build target
$(OUTPUT): $(SRC)
	$(CXX) $(CXXFLAGS) -o $(OUTPUT) $(SRC)

# Clean target
clean:
	rm -f $(OUTPUT)

.PHONY: clean
