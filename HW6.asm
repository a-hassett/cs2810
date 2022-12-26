# Find first 10 Fibonacci numbers and store them in the first bit of registers s0-s7 and t3-t4

# Set first two Fibonacci numbers, F(0) and F(1)
li $t0, 0
li $t1, 1

# Calculate F(0)
add $t2, $t0, $t1

# store F(0) in s0
la $s0, 0x10010000
sw $t0, ($s0)

# Calculate F(1)
add $t0, $t1, $zero
add $t1, $t2, $zero
add $t2, $t0, $t1

# store F(1) in s1
la $s1, 0x10010020
sw $t0, ($s1)

# Calculate F(2)
add $t0, $t1, $zero
add $t1, $t2, $zero
add $t2, $t0, $t1

# store F(2) in s2
la $s2, 0x10010040
sw $t0, ($s2)

# Calculate F(3)
add $t0, $t1, $zero
add $t1, $t2, $zero
add $t2, $t0, $t1

# store F(3) in s3
la $s3, 0x10010060
sw $t0, ($s3)

# Calculate F(4)
add $t0, $t1, $zero
add $t1, $t2, $zero
add $t2, $t0, $t1

# store F(4) in s4
la $s4, 0x10010080
sw $t0, ($s4)

# Calculate F(5)
add $t0, $t1, $zero
add $t1, $t2, $zero
add $t2, $t0, $t1

# store F(5) in s5
la $s5, 0x100100a0
sw $t0, ($s5)

# Calculate F(6)
add $t0, $t1, $zero
add $t1, $t2, $zero
add $t2, $t0, $t1

# store F(6) in s6
la $s6, 0x100100c0
sw $t0, ($s6)

# Calculate F(7)
add $t0, $t1, $zero
add $t1, $t2, $zero
add $t2, $t0, $t1

# store F(7) in s7
la $s7, 0x100100e0
sw $t0, ($s7)

# Calculate F(8)
add $t0, $t1, $zero
add $t1, $t2, $zero
add $t2, $t0, $t1

# store F(8) in t3
la $t3, 0x10010100
sw $t0, ($t3)

# Calculate F(9)
add $t0, $t1, $zero
add $t1, $t2, $zero
add $t2, $t0, $t1

# store F(9) in t4
la $t4, 0x10010120
sw $t0, ($t4)

# All done!
