.data
	dizi: .space 12 # 4*3
.text
	main:
	addi $t0, $zero, 0
	addi $s0, $zero, 4
	addi $s1, $zero, 10
	addi $s2, $zero, 12
	
	sw   $s0, dizi($t0)	# dizi[0]=4
	addi $t0, $t0, 4
	sw   $s1, dizi($t0)	# dizi[1]=10
	addi $t0, $t0, 4
	sw   $s2, dizi($t0)	# dizi[2]=12
	
	andi $t0, $zero, 0
	
	while:
		beq $t0, 12, exit
		
		lw $t6, dizi($t0)
		
		addi $t0, $t0, 4
		
		li $v0, 1
		addi $a0, $t6, 0
		syscall
		
		j while
	exit:
		li $v0, 10
		syscall
