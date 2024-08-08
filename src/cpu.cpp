class CPU {
    public:
        int cpuRegister[32];


};


enum Instruction {
    ADD,
    SUB,
    XOR,
    LD,
    STORE
};