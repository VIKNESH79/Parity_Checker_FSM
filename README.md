# Parity Checker FSM

## Overview

This project implements a Serial Even Parity Checker using a Finite State Machine (FSM) in Verilog HDL.

The FSM contains two states:

* S0 / EVEN parity
* S1 / ODD parity

## State Transition Rules

* Input = 0 → Stay in current state
* Input = 1 → Toggle to the other state

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
