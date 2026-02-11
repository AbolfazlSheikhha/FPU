# Floating Point Unit (FPU) Implementation

A comprehensive hardware implementation of a Floating Point Unit (FPU) compliant with IEEE 754 standard, integrated into a MIPS-based CPU architecture. This project demonstrates significant performance acceleration for floating-point arithmetic operations through dedicated hardware acceleration.

**Institution**: Sharif University of Technology  
**Course**: Computer Architecture - Final Project  
**Semester**: Summer 1403 (2024)  
**Instructor**: Dr. Hossein Asadi

## Table of Contents

- [Overview](#overview)
- [Project Objectives](#project-objectives)
- [Technical Specifications](#technical-specifications)
  - [Minifloat Format](#minifloat-format)
  - [Supported Operations](#supported-operations)
- [Architecture & Components](#architecture--components)
- [Key Features](#key-features)
- [File Structure](#file-structure)
- [Setup & Installation](#setup--installation)
- [Testing](#testing)
- [Performance Analysis](#performance-analysis)
- [Documentation & Resources](#documentation--resources)

## Overview

This project implements a specialized Floating Point Unit (FPU) using an 8-bit minifloat format, providing significant hardware acceleration over software-based floating-point arithmetic. The FPU is integrated seamlessly into a MIPS-based CPU datapath, allowing the processor to execute floating-point instructions efficiently.

### Key Highlights

- **IEEE 754 Compliance**: Full support for special cases (denormalized numbers, infinity, NaN)
- **Minifloat Format**: 8-bit floating-point numbers with 1-bit sign, 4-bit exponent, and 3-bit mantissa
- **Multiple Operations**: Addition, subtraction, multiplication, and comparison
- **Hardware Acceleration**: ~66x speedup compared to software implementation
- **Seamless Integration**: Non-intrusive CPU modification with parallel FPU/ALU architecture

## Project Objectives

1. Design and implement a fully functional Floating Point Unit compliant with IEEE 754 standard
2. Support essential floating-point arithmetic operations (addition, subtraction, multiplication)
3. Demonstrate special case handling (denormalized numbers, infinity, NaN, zero)
4. Integrate FPU into CPU datapath with appropriate control signals
5. Achieve significant performance acceleration over software-based computation
6. Provide comprehensive test coverage and validation

## Technical Specifications

### Minifloat Format

The FPU uses an 8-bit minifloat format optimized for the project constraints:

| Component | Bits | Details |
|-----------|------|---------|
| Sign | 1 | 0 = positive, 1 = negative |
| Exponent | 4 | Biased by 7 |
| Mantissa | 3 | Fractional part, implicit leading 1 |

**Representation**: `(-1)^sign × (1 + mantissa/8) × 2^(exponent-7)`

**Range**: 
- Normalized: ±[2^-6, 2^8 - 2^5]
- Denormalized: ±[2^-9, 2^-7]

### Supported Operations

| Operation | Opcode | Mnemonic | Description |
|-----------|--------|----------|-------------|
| Floating-Point Addition | 0x00 | FPADD | A + B |
| Floating-Point Subtraction | 0x01 | FPSUB | A - B |
| Floating-Point Multiplication | 0x02 | FPMUL | A × B |
| Set Less Than (Floating-Point) | 0x03 | FPSLT | A < B comparison |
| Absolute Value | 0x04 | FPABS | \|A\| |

### Special Cases Handling

The FPU correctly handles all IEEE 754 special cases:

- **Normal Numbers**: Standard minifloat representation
- **Denormalized Numbers**: Exponent = 0, implicit leading 0, gradual underflow
- **Infinity**: Exponent = all 1s (15), mantissa = 0
- **NaN (Not-a-Number)**: Exponent = all 1s (15), mantissa ≠ 0
- **Zero**: Both +0 and -0 supported

## Architecture & Components

### 1. FP Separator (`fp_separator`)

Decomposes floating-point operands into constituent parts:
- Extracts sign bit
- Extracts exponent bits
- Extracts mantissa bits
- Converts implicit representation to explicit format

### 2. FP Add/Sub Unit (`fp_add_sub`)

Implements IEEE 754 addition and subtraction with the following algorithm:

```
1. Check for special cases (INF, NaN, zero handling)
2. Order operands: exponent_a >= exponent_b
3. Calculate exponent difference
4. Align mantissas by shifting smaller one right
5. Perform addition or subtraction based on signs
6. Normalize result (ensure leading 1)
7. Round to nearest even (IEEE 754)
8. Check for overflow/underflow
```

### 3. FP Multiplier (`fp_mul`)

Implements IEEE 754 multiplication:

```
1. Check for special cases (INF, NaN, zero handling)
2. XOR sign bits for result sign
3. Add exponents: exp_result = exp_a + exp_b - bias
4. Multiply mantissas: result_mantissa = (1 + m_a) × (1 + m_b)
5. Normalize result (shift to ensure leading 1)
6. Round to nearest even
7. Check for overflow/underflow to infinity
```

### 4. FPU Control Unit (`FPUCtrl`)

Decodes FPU instructions and generates control signals:
- Decodes opcode and function bits from instruction
- Generates enable signals for operation selection
- Coordinates with main CPU control unit

### 5. FPSignal Unit (`FPSignal`)

Multiplexer logic for result selection:
- Routes output from FPU or ALU to register file
- Determines based on instruction type
- Ensures proper data flow in CPU datapath

### 6. Enhanced CPU Components

- **Control2**: Modified control unit supporting FP instructions
- **Datapath**: Enhanced datapath with parallel FPU and ALU
- **CPU**: Complete integrated processor with FPU support

## Key Features

### 1. Full IEEE 754 Compliance

The FPU implements complete IEEE 754 standard support:
- Proper handling of normalized and denormalized numbers
- Correct rounding modes (round-to-nearest-even by default)
- Accurate special case handling

### 2. Efficient Normalization

Mantissa representation includes:
- Implicit leading bit (1 for normal, 0 for denormal)
- Two zero bits on right for complement-2 support
- Additional bits for proper rounding capability

### 3. Hardware-Optimized Design

- Implemented using Verilog HDL
- Converted to hardware schematic using Quartus
- Uses Library of Parameterized Modules (LPM) for efficiency
- Combinational logic for single-cycle operations
- Loops unrolled for optimal hardware synthesis

### 4. Seamless CPU Integration

- FPU operates parallel to ALU (non-intrusive modification)
- Shares register file and instruction pipeline
- 2-to-1 multiplexer selects ALU or FPU result for writeback
- Minimal changes to existing CPU architecture

## File Structure

```
CA-Project3-FPU-Group29/
├── FPU Components (Core)
│   ├── FPU.bdf                 # Top-level FPU module
│   ├── FPU.bsf                 # FPU symbol
│   ├── fp_separator.bdf        # Input decomposition module
│   ├── fp_add_sub.bdf          # Addition/subtraction unit
│   ├── fp_mul.bdf              # Multiplication unit
│   ├── FPUCtrl.bdf             # FPU control unit
│   └── FPSignal.bdf            # Result selection logic
│
├── CPU Integration
│   ├── CPU.bdf                 # Complete CPU with FPU
│   ├── Datapath.bdf            # Enhanced CPU datapath
│   ├── Control2.bdf            # Modified control unit
│   ├── ALU.bdf                 # Integer ALU
│   ├── Instruction_Memory.bdf  # Instruction storage
│   └── Data_Memory.bdf         # Data storage
│
├── Helper Modules
│   ├── full_adder.bdf          # Basic full adder
│   ├── adder_16.v              # 16-bit adder
│   ├── incrementor.v           # Incrementor logic
│   ├── exp_incrementor.v       # Exponent increment
│   ├── exp_subtractor.v        # Exponent subtraction
│   ├── infinity.v              # Infinity detection
│   ├── less_than.v             # Comparison logic
│   ├── last_man_add.v          # Mantissa addition
│   └── [Various LPM components]
│
├── Test Programs & Simulation
│   ├── FPU.vwf                 # FPU waveform tests
│   ├── CPU.vwf                 # CPU waveform simulation
│   ├── Datapath.vwf            # Datapath waveform tests
│   ├── BSSqrt.mif              # Binary search sqrt program
│   ├── BSSqrt.vwf              # BSSqrt waveform
│   ├── fibo.mif                # Fibonacci test program
│   ├── FPADD.mif               # Addition test program
│   ├── FPADDData.mif           # Test data
│   ├── BSData.mif              # Binary search data
│   └── FPU_nativelink_simulation.rpt
│
├── Project Configuration
│   ├── FPU.qpf                 # Quartus project file
│   ├── FPU.qsf                 # Project settings
│   └── FPU.qws                 # Workspace state
│
└── Documentation
    ├── CA_Project3_FPU.pdf     # Full project report
    └── README.md               # This file
```

## Setup & Installation

### Prerequisites

- **Quartus Prime**: Intel's hardware design tool (v17.0 or later recommended)
- **SystemVerilog/Verilog**: For synthesis and simulation
- **Simulation Tool**: ModelSim or Quartus integrated simulator

### Installation Steps

1. **Extract Project Files**
   ```bash
   unzip CA-Project3-FPU-Group29.zip
   cd CA-Project3-FPU-Group29
   ```

2. **Open in Quartus**
   ```bash
   quartus FPU.qpf &
   ```

3. **Configure Settings** (if needed)
   - Ensure Device is set to appropriate FPGA (e.g., Cyclone IV)
   - Verify synthesis settings
   - Check compilation options

4. **Compile Project**
   - Click **Processing → Start Compilation**
   - Wait for synthesis to complete
   - Check for any warnings or errors

## Testing

### Test 1: FPU Unit Testing

Tests individual FPU components:

1. Open `FPU.bdf` in Quartus
2. Run simulation with `FPU.vwf` waveform
3. Verify:
   - Input parsing (separator working correctly)
   - Addition/subtraction results
   - Multiplication results
   - Special case handling (NaN, INF, zero)

**Test Coverage**:
- Addition: Various sign combinations, exponent differences
- Subtraction: Operand order independence
- Multiplication: Sign handling, exponent computation
- Special cases: Infinity, NaN propagation, zero handling

### Test 2: Binary Search Square Root (BSSqrt)

**Program**: Find integer square root using binary search algorithm

**Test Case**: √5 ≈ 2.236, floor(√5) = 2

**Steps**:
1. Load `BSSqrt.mif` into instruction memory
2. Set data memory with test value (5.0 in minifloat)
3. Run simulation
4. Verify register R1 contains result (2)

**Algorithm**:
```
low = 0, high = 8
while low <= high:
    mid = (low + high) / 2
    if mid * mid <= target:
        low = mid + 1
        result = mid
    else:
        high = mid - 1
return result
```

### Test 3: Fibonacci Sequence

Tests sequential FP operations and memory access:

1. Load `fibo.mif` program
2. Run simulation
3. Verify correct Fibonacci values in memory

### Test 4: CPU Integration Test

Comprehensive system test:

1. Load `CPU.vwf` waveform
2. Run complete CPU simulation
3. Verify:
   - FPU instruction execution
   - Result selection (ALU vs FPU)
   - Register file updates
   - Memory operations

## Performance Analysis

### Speedup Factor

| Operation | Software | Hardware | Speedup |
|-----------|----------|----------|---------|
| Single Addition | 200 cycles | 3 cycles | **66.7x** |
| Single Multiplication | ~300 cycles | 3 cycles | **100x** |
| 10 Additions | 2000 cycles | 30 cycles | **66.7x** |

### Clock Cycles Breakdown (Example: Addition)

- **Exponent comparison**: 1 cycle
- **Mantissa alignment**: 1 cycle
- **Mantissa arithmetic + normalization + rounding**: 1 cycle
- **Total**: ~3 cycles combinational logic

### Performance with 10ns Clock

- **Hardware FPU**: 30 ns per operation
- **Software emulation**: ~2 microseconds per operation
- **Practical overhead eliminated** in hardware implementation

### Key References

- **IEEE 754-2019**: IEEE Standard for Floating-Point Arithmetic
- **Quartus Prime Documentation**: Intel FPGA design tools
- **Verilog HDL**: SystemVerilog language specification

## Implementation Highlights

### Design Decisions

1. **Minifloat Choice**: Optimal balance between range, precision, and 8-bit constraint
2. **Combinational Design**: Single-cycle operations for maximum throughput
3. **LPM Components**: Leverages optimized library modules for area/speed efficiency
4. **Parallel Architecture**: FPU alongside ALU prevents pipeline stalls
5. **Full IEEE 754**: Complete standard compliance ensures correctness

### Rounding Strategy

- **Default Mode**: Round-to-nearest-even (banker's rounding)
- **Implementation**: Sticky bit technique for proper rounding
- **Edge Cases**: Proper handling of rounding that causes overflow

### Normalization Process

1. Checks for implicit leading 1 in normalized numbers
2. Handles denormalized numbers (leading 0)
3. Shifts mantissa to ensure proper representation
4. Adjusts exponent accordingly
5. Applies minimum exponent constraint (exp ≥ 1)

## Authors & Credits

**Project Team**: Group 29
- Alireza Mirshafieian
- Abolfazl Sheikhha
- Mehdi Bahramian
- Mazdak Timurian

**Instructor**: Dr. Hossein Asadi  
**Institution**: Sharif University of Technology

## License

This project is provided for educational purposes as part of the Computer Architecture course at Sharif University of Technology.