Quantum computing books

* Nielsen & Chuang: _Quantum Computation & Quantum Information_
* Sipsen: _Introduction to the Theory of Computation_
* Barak: _Introduction to Theoretical Computer Science_

# Definition of computation: Being able to calculate an arbitrary function.

An algorithm is a set of instructions to get an output from an input using elementary steps.

You give the algo $x$ and it gives you $f(x)$.

Binary boolean fns take two possible inputs from a size two list and gives off one output.

Unary boolean fns take one input and give one output.

Usual binary B functions are AND, NAND, OR, NOT, XOR, XAND, implies, etc. We can use a subset of all possible such functions and use them
to create the ones remaining. In particular, AND, OR, NOT. NAND gates can give you any function you want. These
are called boolean circuits.

### AON CIRCUITS: Circuits made up of AND, OR, NOT gates.

### BOOLEAN CIRCUITS: Models of computation for functions one can build.

### STRAIGHT LINE PROGRAM: Set of one line instructions that involve an assignment of something and in the inputs can only be the inputs of the program or a variable already defined.

### NAND CIRCUITS: Circuits made up of NAND gates.

**All** circuits are equivalent.

Theorem.- Any function computable from $\{0,1\}^n$ from a circuit with $O(s)$ gates can be computed via any of the circuits.

CHURCH TURING THESIS: If there is a computer that can compute a function $f$ using $s$ resources, then there is a boolean circuit
$C$ which can compute $f$ using $O(s)$ gates (it is believed that quantum computers can break this).