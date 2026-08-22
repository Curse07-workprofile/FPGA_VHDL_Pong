# Source Code — VHDL Pong

## Top Level

- [pong_top.vhd](./Pong_Game/Pong_Game.srcs/sources_1/new/pong_top.vhd) - top-level entity; instantiates, integrates and/or wires together the UART, modification, and game modules

## Shared Packages

- [common_pkg.vhd](./Pong_Game/Pong_Game.srcs/sources_1/new/common_pkg.vhd) - project-wide constants: UART baud timing, default/max ball speed, default/max paddle size
- [game_module_pkg.vhd](./Pong_Game/Pong_Game.srcs/sources_1/new/game_module_pkg.vhd) - game-specific constants and types: screen geometry, serve-pattern timing, win condition, ANSI escape codes, and the pre-built title-screen / game-over UART message for read only functionality

## UART Module

- [uart_module.vhd](./Pong_Game/Pong_Game.srcs/sources_1/new/uart_module.vhd) - wraps the receive and transmit submodules below into a single interface for modularity

### Internal submodules

- [receive_uart.vhd](./Pong_Game/Pong_Game.srcs/sources_1/new/receive_uart.vhd) - bit-level UART receiver FSM, with a two-stage synchroniser on the asynchronous RXD line to prevent metastability (Very Cool :)
- [transmit_uart.vhd](./Pong_Game/Pong_Game.srcs/sources_1/new/transmit_uart.vhd) - bit-level UART transmitter FSM; buffers up to 10 bytes and shifts them out MSB-first at the configured baud rate

## Modification Module (Parameter Adjustment)

- [modification_module.vhd](./Pong_Game/Pong_Game.srcs/sources_1/new/modification_module.vhd) - owns ball-speed and paddle-size values and the Moore FSM for adjusting them, passes them to application module to use (waiting -> ball speed -> paddle size)
- [button_inputs.vhd](./Pong_Game/Pong_Game.srcs/sources_1/new/button_inputs.vhd) - converts raw button levels into single-cycle pulses per button, so a held press registers once rather than repeating every clock cycle

## Game Module

- [game_module.vhd](./Pong_Game/Pong_Game.srcs/sources_1/new/game_module.vhd) - top-level game FSM (waiting / playing / game over); coordinates the three sub-modules below

### Internal submodules

- [game_mechanics.vhd](./Pong_Game/Pong_Game.srcs/sources_1/new/game_mechanics.vhd) - core gameplay: paddle movement, ball position and velocity, wall/paddle collision detection, scoring, and the serve rotation
- [message_prep.vhd](./Pong_Game/Pong_Game.srcs/sources_1/new/message_prep.vhd) - converts game state into an ANSI/ASCII UART array; separate erase/draw sub-FSMs for the ball and each paddle makes it so only the delta ASCII characters are re-sent each frame
- [display_output.vhd](./Pong_Game/Pong_Game.srcs/sources_1/new/display_output.vhd) - drives the 7-segment displays (score, speed, paddle size) and sets RGB LED colour to indicate game state

## Testbench

- [pong_top_tb.vhd](./Pong_Game/Pong_Game.srcs/sim_1/new/pong_top_tb.vhd) - testbench that will **report** errors; made for the top-level design, see [Verification & Analysis]() for full breakdown

## Constraints File

- [pong_constraints_a7100T.xdc](./Pong_Game/Pong_Game.srcs/constrs_1/new/pong_constraints_a7100T.xdc) - Sets hardware names and configures the correct I/O functionality

---
[← Back to project README](./README.md)