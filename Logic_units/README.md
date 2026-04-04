# Logic Unit Design and Verification using Verilog HDL

## Overview
Designed a configurable logic unit using Verilog HDL that performs multiple logical operations based on a select input. The design is verified using a testbench with different input combinations and select signals.

## Functionality
The logic unit performs operations based on the `sel` input:
- `00` → AND operation  
- `01` → OR operation  
- `10` → XOR operation  
- `Others` → Output set to 0  

## Key Highlights
- Implemented combinational logic using `always @(*)` and `case` statement  
- Designed a flexible logic unit with multiple operations  
- Verified functionality using a structured testbench  
- Used `$monitor` for real-time output tracking  
- Generated waveform file (VCD) for simulation analysis  
- Included simulation output and waveform files  

## Results
All input combinations and select cases were tested successfully, producing correct outputs for each operation.

## Tools & Technologies
Verilog HDL | Icarus Verilog (EDA Playground) | GTKWave
