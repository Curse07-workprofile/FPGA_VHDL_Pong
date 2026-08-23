# Verification & Analysis - VHDL Pong

Structural verification (schematics), simulation results, and post-implementation resource/power analysis for the project.
For the source itself, see the [Source Code Breakdown](./source_code.md).

## Structural Verification - Schematics

Used during development to trace signal connectivity between modules and confirm the implemented hierarchy matched the intended design.

**Top-level, collapsed** - confirms the three major modules connect correctly at the top-level ports:

---
![Partial block diagram](./images/Partial_Pong_Diagram.png)
---

**Fully expanded** - the same schematic with every module opened, used to trace individual signals end-to-end across sub-module boundaries:

---
![Full block diagram](./images/Full_pong_diagram.png)
---

**Post-synthesis schematic** - top-level view regenerated after synthesis. 
Comparing this against the two diagrams above confirmed the synthesiser preserved the intended module boundaries and port connectivity (rather than, say, silently optimising an interface away):

---
![RTL schematic partial](./images/RTL_Skem_Partial.png)
---

## Implementation - Fabric Routing

Physical placement of the design on the Artix-7 100T fabric after place & route. 
Each cyan cell is a utilized LUT, register, or other logic primitive, positioned in its assigned location on the die:

---
![Implemented design floorplan](./images/Implemented_design.png)
---

The used logic clusters into a small, contiguous region rather than being spread across the die, consistent with the low overall utilization reported below, and gives a physical sense of how compact this design is relative to the chip's full fabric.

## Testbench & Simulation

The top-level design (pong_top) is verified with a self-checking testbench; see code here: [pong_top_tb.vhd](./Pong_Game/Pong_Game.srcs/sim_1/new/pong_top_tb.vhd).

---

It instantiates the full design as the unit under test, generates a 100 MHz clock, and drives reset before running a UART verification test:

- A pair of procedures (uart_recv_byte, uart_recv_word) bit-bang the UART receive line at the baud rate of the design, sampling each bit at the centre of its period; acting as the "host PC" side of the link.
- The test reads back all 25 title-screen packets sent by the design over UART and compares each one against the expected message array.
- On a mismatch, the testbench reports the specific packet and byte index along with expected vs. received values in hex, making failures easy to trace back to a specific byte rather than just a pass/fail flag.

**Behavioural (pre-synthesis) simulation** - RTL model run against the testbench above:

---
![Simulation run](./images/Sim_run.png)
---

**Post-synthesis (functional) simulation** - the same testbench re-run against the synthesised netlist:

---
![Post-synthesis simulation](./images/Sim_Synthesis.png)
---

Both runs produced identical waveforms (Yes these are different tests), but all to say both passed the title-screen byte-comparison test.
This confirms that synthesis preserved the functional behaviour of the design; nothing was lost or altered in mapping the RTL to gate-level logic.

## Implementation Reports

### Resource Utilization

---
![Utilization](./images/Utilization.png)
---

Post-implementation, the design uses **917 Slice LUTs** and **489 Slice Registers** out of 63,400 and 126,800 available on the Artix-7 100T respectively; roughly **1.4% LUT** and **0.4% register** utilization.
The game_module accounts for the large majority of this (761 LUTs, 337 registers).
This is what can be expected given it contains the core game logic, FSM, and display/message formatting sub-modules.
However, the organisation of these modularity could be optimized further.
One way course with the use of the double-dabble algorithm previously meantioned.
But also more generally as this part of the program was the crux of the project; this meant the code is far from perfect. 
The uart_module and modification_module are comparatively lightweight (98 and 61 LUTs respectively). 
This was due to simiplicity of their tasks and more thoroughly developed structure.
This low overall utilization leaves substantial headroom on the chip; reflected in the main README for future projects and developments.

### Power Consumption

---
![Power consumption](./images/Power_Consumption.png)
---

Estimated on-chip power draw is **0.115 W total**, split between **0.018 W (16%) dynamic** power and **0.097 W (84%) device static** power. 
The dynamic share breaks down further into clocking (18%), signal switching (9%), logic (9%), and I/O (64%); I/O dominates the dynamic figure, which lines up with the continuous use of the 7-segment display, RGB LEDs, and UART interface. 
The I/O will also consume a lot more power naturally in comparison to CMOS switching. 
The static power being the larger overall contributor is typical for a design running well under the total capacity of the chip, since static power (leakage) is largely a dependant on threshold power to opperate the chip itself rather than the dynamic power used because or variable logic implemented on it.

### Game Play

The generated bitstream did run on the FPGA and it did function as intended.
The Fastest speed sets were managable but on minimum paddle size were very difficult to play; this was as intended.
Full game testing was conducted with the attempts to cause it to exhibit undefined behaviour or error; but it passed all **self-contained** tests and proved to be pretty functionally robust.
One problem that was more of an **external issue** was that on the hosts PC one player can hold down their key, this would prevent the transmition of any other input.
This was the terminal interface that was being used as it wouldn't transmit the UART characters of the other play in this case.
This seems to be an unavoidable problem due to the UART control schem used in this project. 
A solution could be to allow direct button/controller to board connection or find terminal software that has faster key read and repeat input ignore on the host PC side.
This was not expanded upon at this point currently though.
To be clear this is a **external issue** because if input ignoring was inplemented on the FPGA side the other player inputs would still be block as the characters are not being **transmitted**.

---
[<- Back to project README](./README.md)
