	li $t1,100
	li $t2,50
	add $t3,$t1,$t2
	la $t4,0x10010000
	sw $t3,($t4)  #offset by 0
	# the chrat to the right marks all of the registers
	# assemble using the screwdriver symbolli $t1,100
	li $t2,50
	add $t3,$t1,$t2
	la $t4,0x10010000
	sw $t3,($t4)  #offset by 0
	# the chrat to the right marks all of the registers
	# assemble using the screwdriver symbol
	# data is byte addressable
	
	# $t#'s are temporary registers (can hold 32 bits of data)
	# $s#'s are saved variables
	# lw is the command that means "load word"
	# sw is the command for "store word"
	# addi is "add immediate"
