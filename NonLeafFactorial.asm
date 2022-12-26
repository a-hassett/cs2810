# We are finding the factorial of an integer n

# v0 stores the final product, and we build it up as we move through
# a0 stores the n 
# t0 stores temporary true or false checks
# ra is the return address


main:
	li $a0, 3  #find the factorial of 3
	jal fact
	j exit
	
fact:
	addi $sp, $sp, -8
	sw $ra, 4($sp)  #save return address on the stack
	sw $a0, 0($sp)
	slti $t0, $a0, 1  #set less than immediate; 
	beq $t0, $zero, L1
	
	addi $v0, $zero, 1  #sets v0 to 1
	addi $sp, $sp, 8  #restores the stack
	jr $ra

L1:
	addi $a0, $a0, -1  #subtract 1 from our n in factorial(n)
	jal fact
	lw $a0, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8  #restore stack
	mul $v0, $a0, $v0  #multiplies the current factorial by the next step
	jr $ra  #return

exit:
	