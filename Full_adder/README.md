# Full Adder - Dataflow Modeling (Verilog)

## Description
This project implements a Full Adder using dataflow modeling in Verilog. It uses continuous assignment (`assign`) and basic operators.

## Files
- full_adder.v → Design file
- tb.v → Testbench
- dump.vcd → Output waveform

## Tools
- Verilog HDL
- Icarus Verilog (EDA Playground)

## Working
The Full Adder adds three input bits (a, b, cin) and produces:
- Sum = a ^ b ^ cin
- Carry = (a & b) | (b & cin) | (a & cin)

## Result
Simulation waveform verifies correct sum and carry outputs.
