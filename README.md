# 🔌 Basic Logic Gates in Verilog HDL

A minimal Verilog HDL project implementing all fundamental digital logic gates: **AND, OR, NOT, NAND, NOR, XOR, XNOR**. Includes a compact testbench to demonstrate and verify each gate, making it ideal for learning, coursework, or interview prep.

---

## Table of Contents

- [About](#about)
- [Features](#features)
- [Modules](#modules)
- [Testbench & Example Output](#testbench--example-output)
- [File Structure](#file-structure)
- [How to Run](#how-to-run)
- [References](#references)
- [License](#license)
- [Contact](#contact)

---

## About

This project is a classic HDL exercise. It defines individual Verilog modules for each basic gate, along with a simple testbench.  
Perfect for learning, interviews, digital design labs, or as a reference implementation.

---

## Features

- **Seven gate modules:** AND, OR, NOT, NAND, NOR, XOR, XNOR  
- **Modular:** Each gate is an independent, synthesizable module  
- **Compact testbench:** Applies all input combinations (00, 01, 10, 11) and prints results  
- **Educational:** Clear code and output for students or interview use

---

## Modules

<details>
<summary>Click to view Verilog source for each gate</summary>

### AND Gate
```verilog
module and_gate(input a, input b, output y);
    assign y = a & b;
endmodule
```
### OR Gate
```verilog
module or_gate(input a, input b, output y);
    assign y = a | b;
endmodule
```
### NOT Gate
```verilog
module not_gate(input a, output y);
    assign y = ~a;
endmodule
```
### NAND Gate
```verilog
module nand_gate(input a, input b, output y);
    assign y = ~(a & b);
endmodule
```
### NOR Gate
```verilog
module nor_gate(input a, input b, output y);
    assign y = ~(a | b);
endmodule
```
### XOR Gate
```verilog
module xor_gate(input a, input b, output y);
    assign y = a ^ b;
endmodule
```
### XNOR Gate
```verilog
module xnor_gate(input a, input b, output y);
    assign y = ~(a ^ b);
endmodule
```
</details>

---

## Testbench & Example Output

**Testbench (`test_gates.v`):**
```verilog
`include "basic_gates.v"

module test_gates;
    reg a, b;
    wire and_y, or_y, nand_y, nor_y, xor_y, xnor_y, not_y;

    and_gate  u1 (.a(a), .b(b), .y(and_y));
    or_gate   u2 (.a(a), .b(b), .y(or_y));
    nand_gate u3 (.a(a), .b(b), .y(nand_y));
    nor_gate  u4 (.a(a), .b(b), .y(nor_y));
    xor_gate  u5 (.a(a), .b(b), .y(xor_y));
    xnor_gate u6 (.a(a), .b(b), .y(xnor_y));
    not_gate  u7 (.a(a), .y(not_y));

    initial begin
        $display("A B | AND OR NAND NOR XOR XNOR NOT");
        for (integer i = 0; i < 4; i = i + 1) begin
            a = i[1];
            b = i[0];
            #1;
            $display("%b %b |  %b   %b   %b    %b    %b    %b    %b", 
                a, b, and_y, or_y, nand_y, nor_y, xor_y, xnor_y, not_y);
        end
        $finish;
    end
endmodule
```

**Example Output:**
```
A B | AND OR NAND NOR XOR XNOR NOT
0 0 |  0   0   1    1    0    1    1
0 1 |  0   1   1    0    1    0    1
1 0 |  0   1   1    0    1    0    0
1 1 |  1   1   0    0    0    1    0
```

---

## File Structure

```
.
├── basic_gates.v    // All logic gate modules
├── test_gates.v     // Testbench for all gates
├── README.md        // Documentation
```

---

## How to Run

> **Requires:** [Icarus Verilog](https://iverilog.fandom.com/wiki/Installation_Guide) (`iverilog`) or any Verilog simulator.

1. **Simulation**
   ```sh
   iverilog -o test_gates test_gates.v basic_gates.v
   vvp test_gates
   ```
   Output will display results for all input combinations.

2. **Waveform (Optional)**
   - Add `$dumpfile("dump.vcd"); $dumpvars;` to your testbench
   - Run:
     ```sh
     vvp test_gates
     gtkwave dump.vcd
     ```

---

## References

- [`basic_gates.v`](basic_gates.v) — Verilog HDL modules for all gates
- [`test_gates.v`](test_gates.v) — Testbench for simulation of all gates
- [NPTEL: Digital Circuits](https://onlinecourses.nptel.ac.in/noc23_ee49/preview) — Indian MOOC covering all logic basics
- [Wikipedia: Logic gate](https://en.wikipedia.org/wiki/Logic_gate) — Overview and truth tables

---

## License

This project is licensed under the [MIT License](LICENSE).

---

## Contact

- **LinkedIn:** [Tejas R Mallah](https://www.linkedin.com/posts/tejas-r-mallah-28052b283_verilog-fpga-digitaldesign-activity-7364343834392113152-s981?utm_source=share&utm_medium=member_desktop&rcm=ACoAAET0mcABoSmVvowkUz7qcSZkG2bhRVZnDQ4)
- **Email:** tejasmallah@gmail.com

---

_Learn, simulate, and verify every fundamental logic gate in Verilog!_

```
#Verilog #DigitalLogic #LogicGates #Testbench #FPGA #RTL #HardwareDesign #EDA
```
