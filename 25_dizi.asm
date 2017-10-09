.data
	dizi: .space 12 	# 4*3
.text
	addi $t0, $zero, 0
	addi $s0, $zero, 4
	addi $s1, $zero, 10
	addi $s2, $zero, 12
	
	sw   $s0, dizi($t0)	# dizi[0]=4
	addi $t0, $t0, 4
	sw   $s1, dizi($t0)	# dizi[1]=10
	addi $t0, $t0, 4
	sw   $s2, dizi($t0)	# dizi[2]=12
#--------------------------------------------------------------------------------	
	li $t0, 0		# t0=0
	lw $t1, dizi($t0)
	
	li $v0, 1
	addi $a0, $t1, 0	# dizi[0]
	syscall
	
	addi $t0, $t0, 4	# t0=t0+4=4
	lw $t1, dizi($t0)

	li $v0, 1
	addi $a0, $t1, 0	# dizi[1]
	syscall
	
	addi $t0, $t0, 4 	# t0=t0+4=8
	lw $t1, dizi($t0)
	
	li $v0, 1
	addi $a0, $t1, 0	# dizi[2]
	syscall
