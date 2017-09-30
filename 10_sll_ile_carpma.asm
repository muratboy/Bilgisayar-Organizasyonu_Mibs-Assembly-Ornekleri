.data
.text
	addi $t0, $zero, 17
	
	sll  $t1, $t0, 1    # sayiyi 1 bit sola kaydir (2 ile carp)
	
	li $v0, 1
	add $a0, $zero, $t1
	syscall
