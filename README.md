# 🔢 7-bit Thermometer Code to 3-bit Binary Converter in Verilog

This project implements a digital logic circuit that converts a **7-bit thermometer code** into its equivalent **3-bit binary value** using **four full adders** in Verilog HDL. The entire design was simulated and verified using **Xilinx Vivado**.

---

## 🚀 What the Project Does

Thermometer codes are unary-encoded sequences where all bits up to a certain point are `1`, and the rest are `0`. For example:
- `0000001` → 1
- `0000111` → 3
- `1111111` → 7

This Verilog project **counts the number of 1’s** in the thermometer code and **outputs a 3-bit binary equivalent**, using custom-built full adders.

---

## 🔌 Inputs and Outputs

| Signal     | Width   | Direction | Description                     |
|------------|---------|-----------|---------------------------------|
| `i[6:0]`   | 7-bit   | Input     | Thermometer-coded binary input |
| `b[2:0]`   | 3-bit   | Output    | Binary output (0 to 7)          |

Example Mapping:

| Thermometer Code (`i`) | Binary Output (`b`) |
|------------------------|----------------------|
| `0000000`              | `000`                |
| `0000001`              | `001`                |
| `0000011`              | `010`                |
| `0000111`              | `011`                |
| `0001111`              | `100`                |
| `0011111`              | `101`                |
| `0111111`              | `110`                |
| `1111111`              | `111`                |

---

## ⚙️ How the Logic Works

- A **custom `FA_case` module** was created using a `case` statement to replicate full adder behavior.
- The 7-bit input is **broken into two groups of 3**, and one leftover MSB.
- These groups are **added using four cascaded full adders** as shown in the block diagram.
- The sum output represents the **population count** of '1's, i.e., the number of bits set in the input.

---

## 🧱 RTL Schematic

Vivado RTL schematic view showing the interconnection of 4 full adder instances (`FA_case`):

![RTL Schematic](rtl_schematic.png)

---

## 📈 Simulation Waveforms

Vivado behavioral simulation showing input thermometer codes and their corresponding 3-bit binary outputs:

![Simulation Waveforms](waveforms.png)

---

## 📂 Files Included

- `FA_case.v`: Full adder module using case statement
- `thermo_to_binary.v`: Top module connecting four full adders
- `tb_thermo_to_binary.v`: Testbench for simulation
- `rtl_schematic.png`: RTL schematic from Vivado
- `waveforms.png`: Simulation waveform from Vivado

---

## 🛠 Tools Used

- Verilog HDL  
- Xilinx Vivado (for simulation and synthesis)

---

## 💡 Future Work 

- Extend design to n-bit thermometer codes
- Implement using behavioral modeling
- Port to FPGA board for hardware testing

---

## 📬 Author

[Yashwanth Sai Poppadi](https://www.linkedin.com/in/YOUR-USERNAME/)  
Computer Engineering | Graduate student at ASU

---

⭐ If you found this project helpful, feel free to star the repo or connect with me!
