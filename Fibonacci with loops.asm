# Let's do HW6 using loops

# Continuously changing memory
la $t3, 0x10010000
li $t4, 0
li $t5, 10

li $t0, 0
li $t1, 1

sw $t0, 0($t3)
sw $t1, 4($t3)

loop:
	beq $t5, $zero, endofloop
	add $t0, $t1, $zero
	add $t1, $t2, $zero
	add $t2, $t0, $t1

	# load word, but there's a logic error because the bit for store word doesn't change
	sw $t0, 8($t3)
	addi $t4, $t4, 4
	addi $t5, $t5, -1
	j loop
endofloop:

#add $t0, $t1, $zero
#add $t1, $t2, $zero
#add $t2, $t0, $t1

#sw $t0, 4($t3)
#addi $t4, $t4, 4

#add $t0, $t1, $zero
#add $t1, $t2, $zero
#add $t2, $t0, $t1

#sw $t0, 8($t3)
#addi $t4, $t4, 4
