## CPU

The CPU is the Central Processing Unit in a computer.

### General
We want to use a RISC-V instruction set with a 32-bit system.

The architecture is little endian centric.

We habe 32 registers (x0 to x31), each containing 32-bit values.


### Instruction Set


- R-type instructions: Used for register-to-register operations, such as arithmetic and logical operations. They include three register operands: two source registers and one destination register. Eg:- add (Add 2 registers and store results in another)
- I-type instructions: Used for immediate operations, such as arithmetic and logical operations with an immediate value. They include two register operands and a 12-bit immediate value. Eg:- li (Load immediate value)
- S-type instructions: Used for store operations, which store data from a register to memory. They include two register operands and a 12-bit immediate value for the memory address offset. Eg:- sw (store the value in register)
- B-type instructions: Used for conditional branch operations, which transfer control to a different instruction based on a condition. They include two register operands and a 12-bit immediate value for the branch target address. Eg:- beq (compare and label)
- U-type instructions: Used for operations with a 20-bit immediate value, such as loading a 20-bit constant into a register or setting the upper 20 bits of a register. Eg:- lui (load upper immediate value)
- J-type instructions: Used for unconditional jump operations, which transfer control to a different instruction unconditionally. They include one register operand and a 20-bit immediate value for the jump target address. Eg:- J (jump)

[Source](https://www.wevolver.com/article/risc-v-architecture)

#### Integer Registers

- x0: This register is hardwired to the value 0 and cannot be modified.
- x1-x31: These registers are general-purpose registers, with some having specific names to indicate their intended usage, such as:
    - ra (x1): Return address register, used for storing the return address in function calls.
    - sp (x2): Stack pointer register, used for managing the stack.
    - gp (x3): Global pointer register, used for accessing global data.
    - tp (x4): Thread pointer register, used for thread-local storage.
    - t0-t6 (x5-x11): Temporary registers, used for holding intermediate values during calculations.
    - a0-a7 (x10-x17): Argument registers, used for passing function arguments.
    - s0-s11 (x8, x9, x18-x27): Saved registers, used for preserving values across function calls.
    - t3-t6 (x28-x31): Additional temporary registers.

### Arithmetic Logical Unit (ALU) capabilities