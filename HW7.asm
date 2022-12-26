# HOMEWORK 7
# Assembly Bubble Sort

# store 10 random numbers into memory
# pull them out of memory and put them into some registers while we work with them a bit
# loop through the data 10 - 1 times so each run will organize one value
	# in each loop, we hold j and j + 1 registers
		# basically, we want to put the j and j + 1 in order so if j > j + 1, then switch them
		# if not, leave them alone
	# after the loop is finished, we shift j and j + 1 (shift to the right 1, and we'll still have one same value)
	
# load address that can hold 8 numbers	
la $s0, 0x10010000

# put 10 numbers into s0 register
# the numbers can be changed if i want
li $t0, 6
li $t1, 3
li $t2, 8
li $t3, 9
li $t4, 2

sw $t0, 0($s0)
sw $t1, 4($s0)
sw $t2, 8($s0)
sw $t3, 12($s0)
sw $t4, 16($s0)

li $t0, 1
li $t1, 5
li $t2, 4
li $t3, 10
li $t4, 7

sw $t0, 20($s0)
sw $t1, 24($s0)
sw $t2, 28($s0)
sw $t3, 32($s0)
sw $t4, 36($s0)

# reset t registers to 0; not necessary but keeps it cleaner
li $t0, 0
li $t1, 0
li $t2, 0
li $t3, 0
li $t4, 0

# keep track of how many times we've sorted
# we want it to run a total of 9 times
li $s4, 10  # i = 10 and we'll count down
li $s5, 1  # j = 1


main:
	j innerLoop

outerLoop:
	# go back to the front of the list
	addi $s0, $s0, -36
	
	# reset the for loop
	add $s4, $s4, -1
	li $s5, 0
	
	# if i == j, then we've traversed the list and we're done
	bne $s4, $s5, innerLoop
	beq $s4, $s5, Exit

innerLoop:
	# pull the next two numbers out of memory
	lw $t0, ($s0)
	addi $s0, $s0, 4
	lw $t1, ($s0)
	
	sgt $t7, $t0, $t1
	bne $t7, $zero, True  # if t0 > t1
	
	# mark that we're moving through the list
	add $s5, $s5, 1
	
	# once we go through as many times (j) as there are numbers (i), start over
	slt $t7, $s5, $s4  # if j < i
	bne $t7, $zero, innerLoop  # true
	beq $t7, $zero, outerLoop  # false
	
True:
	# switch them
	sw $t0, ($s0)
	sw $t1, -4($s0)
	
	# mark that we're moving through the list
	add $s5, $s5, 1
	
	# once we go through as many times (j) as there are numbers (i), start over
	slt $t7, $s5, $s4  # if j < i
	bne $t7, $zero, innerLoop  # true
	beq $t7, $zero, outerLoop  # false
	
Exit:
	
