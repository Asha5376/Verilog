# 4:1 Multiplexer (Behavioral Modeling - Verilog)

## Description
This project implements a 4:1 Multiplexer using behavioral modeling in Verilog with a `case` statement.

The output is selected from four inputs based on a 2-bit select line.

##  Concept
- sel = 00 → y = a  
- sel = 01 → y = b  
- sel = 10 → y = c  
- sel = 11 → y = d  

##  Files
- `mux_4to1.v` → Design code  
- `mux_4to1_tb.v` → Testbench  

##  Testbench Features
- Directed testcases for all select inputs  
- Self-checking using expected values  
- Automatic error reporting  

##  Simulation
- Language: Verilog  
- Platform: EDA Playground  

## Learning Outcome
- Understanding of `case` statement  
- Behavioral modeling using `always`  
- Select-based logic design  
- Writing clean self-checking testbenches
