# PONG — FPGA Terminal Game

## Project Description

In this project the aim was to become familular with FPGA circuitry and flow logic.
This involved gaining experience using VHDL and the Vivado software aswell as learning the general real world applications of the technology.
This project shows the creative implementation of the simple pong game.

Some of involved features that were developed:
- A from strach implementation of full duplex UART communication that runs concurrently.
- I/O board functionality with the buttons, LEDs, and 7 - segment display.
- Pong Game Logic, Game Control Logic, and Modular Integration
- The Moore Finite State Machine model is implemented for submodular synchronous sequencial flow logic
- Use of the double dabble algorithm to convert a number value to the ASCII representation 
- Use of ANSI escape sequences and encoding

From the development of these features developed the following skills:
- A good understanding of VHDL syntax and varible typing
- A greater and intuitive ability to read and convert binary, hexidecimal, and ASCII characters
- Conceptual understanding around concurrent and synchronous sequential flow logic
- General low level computer archetecture understanding
- Understanding of memory, latches, structure of MOSFET's within this circuitry
- Register Transfer Level logic programming

Personally I enjoyed this project and this course a lot as it demistified down to the individual MOSFET level (with CMOS and their implementation) on how computer logic works.
I want to in the future refine my understanding of ASICs and Embedded systems further by implementing my own design of CPU on an FPGA chip similar to this.
Aswell as attempt to more fully utilize the avalible hardware as this project barely puts a scratch in the avaliable compute of this chip.

## Game Description

A two-player Pong game running on the Nexys A7 FPGA board. The game renders
via ANSI commands and ASCII characters over UART to a connected terminal. The
board handles all game logic and physical I/O; your PC acts as the display and
the keyboard provides the player inputs. Parameter adjustment is available
directly on the FPGA board so players can configure the game to their
preference.

---

## Requirements and setup

- **FPGA board**  : Digilent Nexys A7-100T
- **Terminal**    : TeraTerm or equivalent, configured for UART serial at
  **115200 baud, 8-bit data packet, No parity checking**
- **Bitstream** — program the board with the generated bitstream before use

---

## Title screen

Once programmed and connected the terminal displays:

```
  ###    ##   #  #   ##
  #  #  #  #  ## #  #
  ###   #  #  # ##  #
  #     #  #  #  #  #  ##
  #      ##   #  #   ###

  ================
  P1: W=up  S=dn
  P2: O=up  K=dn
  ================

  >>> PRESS ANY KEY <<<
```

---

## Controls

Both players share the same keyboard. Player 1 controls the left paddle,
Player 2 the right.

| Player | Move up | Move down |
|---|---|---|
| Player 1 | `w` | `s` |
| Player 2 | `o` | `k` |

Key presses are transmitted over UART immediately — no Enter required.

---

## Game states

### Waiting (idle)

On startup the game enters the waiting state. The 7-segment display shows
`waiting` and both RGB LEDs show purple. The terminal shows the title screen
with the ASCII art, control instructions, and the press-any-key prompt.

From this state the game can move to either **Playing** or **Modification**.

---

### Playing

A key press from the host PC over the serial port starts the game immediately.
The ball begins moving on the first of four serve patterns directed toward
Player 2.

**Scoring and serve patterns**

Each point changes the serve pattern to the next in the sequence, with the
direction dependent on who won the previous point. The sequence cycles through
four unique patterns before resetting to the first. The game ends when one
player reaches a score of 3, with a maximum of 5 rounds possible.

During play the 7-segment display shows the current score as
`P1 score — P2 score` and both RGB LEDs show red.

**Game over**

When the game ends the terminal displays a message naming the winning player.
The 7-segment display scrolls a message showing the winner and the final score
reformatted as `Winner score — Loser score`. Here the status LED's both show green. Pressing any key on the host PC returns the game to the waiting state.

---

### Modification

Pressing the **centre button** (BTNC) on the FPGA from the waiting state enters
modification mode. The terminal display does not change during this mode.

**Ball speed**

The display enters the ball speed adjustment state first, shown on the
7-segment display as `SPEED  n`. The value blinks to indicate it is selected.
The default value is **4** and the range is **1 – 9**. Here the status LED's both show cyan.

**Paddle size**

Pressing **left or right** (BTNL / BTNR) toggles to the paddle size adjustment
state, shown on the 7-segment display as `PSIZE  n`. The value blinks the same
way. The default value is **3** and the range is **1 – 6**. Pressing left or
right again toggles back to ball speed. Here the status LED's both show orange.

**Adjusting values**

| Button | Action |
|---|---|
| Up (BTNU) | Increment the selected value |
| Down (BTND) | Decrement the selected value |
| Left / Right (BTNL / BTNR) | Toggle between ball speed and paddle size |
| Centre (BTNC) | Confirm and return to waiting state |

---

## Other notes

- The game cannot be started from modification mode, and modification mode
  cannot be entered during play or game over.
- Pressing the **RESET** button at any time returns the game to the waiting
  state and resets all values including the score to their defaults.
- All other board I/O is non-responsive and will not affect game operation.

---

## Potential future improvements

- Adjustable vertical ball speed ratio
- Paddle movement and collision interactions affecting the ball's vertical speed
- Increased variety in the serve pattern algorithm

---