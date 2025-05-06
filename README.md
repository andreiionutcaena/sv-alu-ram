# SystemVerilog ALU and RAM Project

A simple SystemVerilog-based digital system that connects a RAM block to an Arithmetic Logic Unit (ALU). It supports basic arithmetic and logic operations, with a modular structure and an included testbench for simulation.

---

## 📦 Features

- **8‑bit RAM (16 addresses)**  
  Dual‑read, single‑write with synchronous write on clock edge.

- **8‑bit ALU**  
  Supports:  
  - Addition (`+`)  
  - Subtraction (`-`)  
  - Bitwise AND (`&`)  
  - Bitwise OR (`|`)  
  - Bitwise XOR (`^`)  
  - Zero and carry flag generation

- **Multiplexer (MUX8)**  
  Selects between ALU operation results.

- **Top Module (TOP.sv)**  
  Connects RAM and ALU.

- **Testbench (tb.sv)**  
  Simulates memory writes, readback, and ALU operations.

---

## 📁 Project Structure

```
sv-alu-ram/
├── ALU.sv         # ALU logic with flags
├── RAM.sv         # 16x8‑bit RAM with dual‑read ports
├── MUX8.sv        # 8‑input multiplexer
├── TOP.sv         # Top module wiring RAM and ALU
├── tb.sv          # Testbench to simulate and verify functionality
├── README.md      # Project overview and instructions
└── .gitignore     # Files and folders to ignore in Git
```

---

## 🚀 Getting Started

### 1. Clone the repository
```bash
git clone https://github.com/yourusername/sv-alu-ram.git
cd sv-alu-ram
```

### 2. Open in your simulator
- Vivado Simulator (`xsim`)
- ModelSim / QuestaSim
- Any SystemVerilog‑compatible tool

### 3. Run the simulation
```bash
# For Vivado xsim example:
xvlog *.sv
xelab tb
xsim tb
```

---

## ⚙️ ALU Operation Codes

| `select` | Operation     |
|:--------:|---------------|
| `000`    | Add           |
| `001`    | Subtract      |
| `010`    | AND           |
| `011`    | OR            |
| `100`    | XOR           |
| `101–111`| Reserved (0)  |

---

## 🛠 Requirements

- SystemVerilog‑capable simulator (Vivado, ModelSim, etc.)
- Basic digital design knowledge
- Timescale: `1ns / 1ps`

---


## 📄 License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).

---

## 🙋‍♂️ Author

**Ionut**  
[GitHub Profile](https://github.com/andreiionutcaena)  
