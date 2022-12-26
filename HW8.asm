# $a registers are parameters
# $v registers are results
# $ra is return address
# $t are temporary registers
# $s registers are more permanent storage than $t
# $sp is the stack

la $sp, 0x10010000
li $s0, 10  # n = 10
li $v0, 1  # result = 1


# factorial(n)
fact:
	# make space in the stack for the return address and n parameter
	# store
	addi $sp, $sp, -8
	sw $ra, ($sp)
	sw $s0, 4($sp)
	
	# base case
	slti $t0, $s0, 1  # if n < 1, continue
	beq $t0, $zero, recurse  # if n >= 1, keep going finding the factorial
	
	# if n < 1
	addi $v0, $zero, 1  # result = 1
	
	# restore
	lw $ra, ($sp)
	lw $s0, 4($sp)
	addi $sp, $sp, 8
	
	# return
	jr $ra
		
	
recurse:
	# n = n - 1
	addi $s0, $s0, -1
	
	# check if this new n-value is < 1
	jal fact
	
	# if not, it will return back to here and we continue
	# restore
	lw $ra, ($sp)
	lw $s0, 4($sp)
	addi $sp, $sp, 8
	
	# first part of factorial
	mul $v0, $s0, $v0  # result = result * n or n * factorial(n - 1)
	
	# return
	jr $ra
