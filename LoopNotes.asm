li $s1, 5
li $s2, 8

slt $t0, $s1, $s2  # if (s1 < s2)
bne $t0, $zero, L  # branch to L

# slt means "set less than" signed
# sltu is "set less than unsigned"

# the t registers are considered temporary because they can be overwritten without being reset or unsaved
# what does this look like in the code?

# call a leaf function by calling a jump and link (jal ___)
# jump register is jr

addi $sp, $sp, -4
sw $s0, 0($sp)
add $t0, $a0, $a1
add $t1, $a2, $a3
sub $s0, $t0, $t1