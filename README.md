# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Robert Estrada Chavez, Mason Beckman
## Summary
In this lab we implmented SR-latches to create a D-latch to hold a values after they are removed. Then in part 2 we scaled a four-byte system using demultiplexers to store data and signals to an eight bit memory blocks to select which leds will display.
## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
Lacthes require to combine feedback loops, which are rejected by Vivado. Behavioral Verilog allows the always blocks to work and be able to use the on the acutal hardware. 
### What is the meaning of always @(*) in a sensitivity block?
The meaning of it is to include all input signals used within the block and continuously reevaluate the block any time a signal changes. Mostly to ensure that the code behaves with combinational logic.
### What importance is memory to digital circuits?
The importance of memory in digital circuits is the fact that without it, the cirucit could only react to current inputs. Essentialy you woukdnt be able to run something that has already been ran since a circuit cannot remeber, thus taking more time and energy to run something that has already been ran. 
