.data
.text
	addi $t0, $zero, 10
	addi $t1, $zero,  2
	
	div  $t2, $t0, $t1    # t2 <- t0/t1
	
	li $v0, 1
	add $a0, $zero, $t2
	syscall