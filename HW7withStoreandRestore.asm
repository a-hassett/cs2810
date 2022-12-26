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
la $sp, 0x10010000

# put 10 numbers into sp register
# the numbers can be changed if i want
li $t0, 6
li $t1, 3
li $t2, 8
li $t3, 9
li $t4, 2

sw $t0, 0($sp)
sw $t1, 4($sp)
sw $t2, 8($sp)
sw $t3, 12($sp)
sw $t4, 16($sp)

li $t0, 1
li $t1, 5
li $t2, 4
li $t3, 10
li $t4, 7

sw $t0, 20($sp)
sw $t1, 24($sp)
sw $t2, 28($sp)
sw $t3, 32($sp)
sw $t4, 36($sp)

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
	addi $sp, $sp, -36
	
	# reset the for loop
	add $s4, $s4, -1
	li $s5, 0
	
	# if i == j, then we've traversed the list and we're done
	bne $s4, $s5, innerLoop
	beq $s4, $s5, Exit

innerLoop:
	# pull the next two numbers out of memory
	lw $s0, ($sp)
	addi $sp, $sp, 4
	lw $s1, ($sp)
	addi $sp, $sp, 4
	
	sgt $t0, $s0, $s1
	bne $t0, $zero, True  # if s0 > s1
	
	# False
	# store
	addi $sp, $sp, -8
	sw $s0, ($sp)
	sw $s1, 4($sp)
	
	# restore
	lw $s0, ($sp)
	lw $s1, 4($sp)
	addi $sp, $sp, 4
	
	# mark that we're moving through the list
	add $s5, $s5, 1
	
	# once we go through as many times (j) as there are numbers (i), start over
	slt $t0, $s5, $s4  # if j < i
	bne $t0, $zero, innerLoop  # true
	beq $t0, $zero, outerLoop  # false
	
	
True:
	# switch them
	# store
	addi $sp, $sp, -8
	sw $s0, 4($sp)
	sw $s1, ($sp)
	
	# restore
	lw $s0, ($sp)
	lw $s0, 4($sp)
	addi $sp, $sp, 4
	
	# mark that we're moving through the list
	add $s5, $s5, 1
	
	# once we go through as many times (j) as there are numbers (i), start over
	slt $t0, $s5, $s4  # if j < i
	bne $t0, $zero, innerLoop  # true
	beq $t0, $zero, outerLoop  # false
	
Exit:
	
