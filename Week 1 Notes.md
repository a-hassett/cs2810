## CS 2810 Notes
### Week 1

#### 8.29.22

* Working with assembly language in this class
* Mostly learning hardware
* Use the cs2810 Master Schedule to plan ahead
* Two exams a semester that are worth 50% of your grade, taken in testing center
* 90% or higher is an A
* Eight Great Ideas:
  * Moore's Law: processing power of computers doubles every 18-24 months while the size of the computer shrinks in half
  * Use **abstraction** to simplify
  * Speed up the **common case**... if something is a very common problem, make an easy solution
  * Performance via parallelism: making many small pieces work together at the same time
    * Using many washing machines at the same time for your 10 loads
  * Performance via pipelining: fast-track processes, move things through a series of resources
    * Doing 10 loads of laundry one at a time
  * Performance via prediction: estimate the amount of time required for a task
    * Assuming the results of a process before it's done. Better used when there's very few errors doing this
  * Hierarchy of memories: cache, RAM, flash storage
  * Dependability via redundancy: make up for errors with a back-up plan
    * Semi-trucks have extra wheels so that they're okay with a flat tire until they can stop
* Five Classic Components of a Computer:
  * Input
    * Sequential access (not memory)
  * Output
    * Sequential access (not memory)
  * Memory
    * i.e. RAM (Random Access Memory); holds information for an amount of time until it is needed again
  * Datapath
    * Where the instructions go through; the math
    * If it's a 32-bit data processor, the width of the datapath is 32 bits
  * Control
    * What you have to move around to be able to make things happen; the code?

#### 8.31.22

* Binary numbers
  * Keep in mind, numbers and numerals are distinct from one another. Numbers are for counting; numerals are the symbols that represent them
    * However, we'll be using those words pretty much interchangeably
  * Base (a.k.a. radix): number of numerals in the number system
  * We use the base-10 number system all the time
  * When using a non-10 base, multiply each digit by the base to power of increasing numbers.
    * ie. base-5 system: 32412 = 2*5^0 + 1*5^1 + 4*5^2 + 2*5^3 + 3*5^4 = 2 + 5 + 100 + 250 + 1875 = 2232 in decimal
  * The same thing happens in binary, except it's base 2
  * Convert 2021 to binary below:
2048.1024,512,256,128,64,32,16,8,4,2,1
2021-1024 = 997
1000000000
997-512 = 485
1100000000
485-256 = 229
1110000000
229-128 = 101
1111000000
101-64 = 37
1111100000
37-32 = 5
111111000
5-4-1 = 0
11111100101

  * Convert 67 to binary:
128,64,32,16,8,4,2,1
67-64 = 3, 64 is 2^6, so there will be 7 slots
1000000
3-2-1 = 0
1000011

  * LSB and MSB: least significant bit and most significant bit, respectively
    * **0**000000010**1**
      * In the binary number above, 0 is MSB and 1 is LSB. Especially if the zero was a 1, this would drastically change the number's total, but the 1 as a 0 would only change the number by 1
* Octal numbers are a base-8 number system that use digits 0-7 and is usually identified to the reader with a leading zero (ie. 7 = 07 in octal)
  * It's useful because it can translate binary quickly by taking groups of 3 bits (and vice versa)
    * Ex: Binary 001 010 111 110 100 000 translates to 1 2 7 6 4 0 in octal
* The hexadecimal system is a base-16 number system, and is identified by starting with 0x (ie. 13 in decimal, 1101 in binary, 0xD)
  * 0=0, 1=1, 2=2, 3=3, 4=4, 5=5, 6=6, 7=7, 8=8, 9=9, A=10, B=11, C=12, D=13, E=14, F=15
  * Convert between binary and hexadecimal by translating it 4 bits at a time
    * Ex: Binary 0010 1011 1110 1000 translates to 0x2 0xB 0xE 0x8 in hexadecimal

####9.2.22

* Adding binary numbers
  * Always carry the 1 to the next column when you add two 1's
  
_00110101\
+00110100\
---------------\
=01101001

* Two's Complement is a mathematical operation on binary numbers and is an example of a radix complemenet
  * It is used in computing as a method of signed number representation (negative numbers)
  * Steps to find Two's complement:
    * Invert all the bits (switch all 0's to 1's and vice versa)
    * Add 1 to the result
  * After you find two's complement of a binary number, if you add the original number back to the result, you will get 0
  * We use this for negative numbers, because when you add a negative number to its positive counterpart in decimal, the result is 0. This does the same thing
  * Example: 
  
01011011 to inverse 10100100\
Add 1 makes 10100101 which is the Two's complement\
Add original to two's complement\
_01011011\
+10100101\
-------------------\
=00000000\

* If 1 is the most significant bit (furthest to the left), then we assume the number is negative
* Multiplication in binary works just like multiplying with decimal numbers
  * (Have a bunch of partial sums that we add together at the end)
  * Let's try with binary. Example below:

_00010110\
x00000101\
-------------------\
___+10110\
______+00\
_+1011000\
-------------------\
__1101110

* Division in binary
  * We're only doing integer binary numbers, no floating point, so truncate at the end
  * Basically just do regular long division but binary (be careful with the subtraction)