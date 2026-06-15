# Parity Checker FSM

## Overview

This project implements a Serial Even Parity Checker using a Finite State Machine (FSM) in Verilog HDL.

The FSM contains two states:

* S0 / EVEN parity
* S1 / ODD parity

## State Transition Rules

* Input = 0 → Stay in current state
* Input = 1 → Toggle to the other state

State Diagram

The parity checker is implemented using a Moore Finite State Machine (FSM).
<img width="1740" height="904" alt="State Diagram" src="https://github.com/user-attachments/assets/91f0f5be-4580-4a20-a872-35cf32fd9b3b" />


## Project Structure

```text
Parity_Checker_FSM
│
├── docs
├── rtl
├── tb
├── waveforms
└── README.md
```

## Simulation
<img width="1365" height="719" alt="parity_fsm_waveform" src="https://github.com/user-attachments/assets/b28068d0-30b1-463f-939e-2bd81e82964b" />


Compile:

```bash
iverilog -o sim rtl/parity_fsm.v tb/parity_fsm_tb.v
```

Run:

```bash
vvp sim
```

## Tools Used

* Verilog HDL
* Icarus Verilog
* GTKWave
* VS Code

## Author

Viknesh Vijayakumar
