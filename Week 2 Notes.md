#### 9.7.22

* George Boole (1815 - 1914)
  * Logic can be applied to math problems
* Boolean algebra
  * 1 == T == asserted
  * 0 == F == deasserted
  * Identity laws:
    * 0 * a = 0
    * 1 * a = a
  * Zero and One laws:
    * 0 * a = 0
    * 1 + a = 1
  * Inverse laws:
    * a * a! = 0
    * a + a! = 1
  * Commutative laws:
    * a + b = b + a
    * a * b = b * a
  * Associative laws:
    * a + (b + c) = (a + b) + c
    * a * (b * c) = (a * b) * c
  * Distributive laws:
    * a * (b + c) = (a * b) + (a * c)
    * a + (b * c) = (a + b) * (a + c)
  * DeMorgan's theorems:
    * !(a + b) = !a * !b
    * !(a * b) = !a + !b
* "!" == NOT operator
* "*" == and == logical product
* "+" == or == logical sum
* This is kind of like discrete math truth tables
* Logic Gates
  * OR gate\
  a b  | a + b\
  ------------\
  0 0  | 0\
  1 0  | 1\
  0 1  | 1\
  1 1  | 1
  * AND gate\
  a b  | a * b\
  ------------\
  0 0  | 0\
  1 0  | 0\
  0 1  | 0\
  1 1  | 1
  * NOT gate\
  a  | !a
  ---------\
  0  | 1\
  1  | 0
  * NOR gate: when it's not a AND not b; opposite of OR gate\
  a b  | Q\
  ------------\
  0 0  | 1\
  1 0  | 0\
  0 1  | 0\
  1 1  | 0
  * NAND gate: opposite of AND gate\
  a b  | a + b\
  ------------\
  0 0  | 1\
  1 0  | 0\
  0 1  | 0\
  1 1  | 0
  * XOR gate
  a b  | X\
  ------------\
  0 0  | 0\
  1 0  | 1\
  0 1  | 1\
  1 1  | 0
* Decoder: a logic block that has an n-bit input and 2^n outputs, where only one output is asserted for each input combination
  * Interprets bits to see which bulb will light up
  * I need two bits to specify 4 items since they can be identified separately as 00, 01, 10, 11
* Multiplexor: might be called a selector more accurately, since its output is selected by a control
  * It picks and chooses what goes through
* Selector Value: aka. control value, the control signal that is used to sleect one of the input values of a multiplexor as the output of the multiplexor
  * The bits are the control of the system, since they choose the datapath to use
  * The datapaths are the letters of lightbulbs

####9.9.22

* Play around with CircuitVerse and look over lecture notes again later
* Use combinatorial logic when making circuits (think of Discrete Math but with electricity)
* 