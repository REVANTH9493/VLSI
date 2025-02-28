
## Verilog Coding and Simulation using QuestaSim  

### Overview  
This repository contains Verilog HDL code along with simulation scripts for **designing and verifying digital circuits**. The project demonstrates various Verilog-based digital design concepts, including combinational and sequential logic, finite state machines (FSMs), and testbenches.  

QuestaSim (by Siemens EDA) is used as the **simulation and debugging tool**, providing an efficient environment for **compiling, running, and analyzing** Verilog designs.  

### Features  
- **Verilog HDL Code** for various digital logic circuits  
- **Testbenches** to verify the correctness of designs  
- **QuestaSim Simulation Scripts** for compiling and running simulations  
- **Waveform Analysis** using QuestaSim GUI  

### Getting Started with QuestaSim  
#### **1. Install QuestaSim**  
Ensure that QuestaSim is installed on your system. You can check by running:  
```sh
vsim -version
```

#### **2. Compiling Verilog Code**  
Navigate to the project directory and run:  
```sh
vlog src/<your_design>.v
```

#### **3. Running Simulations**  
To simulate the design along with its testbench:  
```sh
vsim -c -do "do scripts/simulate.do"
```
Alternatively, you can open the GUI and run:  
```sh
vsim work.<testbench_module>
add wave -r *
run -all
```

#### **4. Viewing Waveforms**  
Use QuestaSim's waveform viewer to analyze signal transitions and debug issues:  
```sh
view wave
add wave -r *
run -all
```

### Contributing  
Feel free to contribute by adding **new Verilog modules, optimizing testbenches, or improving documentation**.  
