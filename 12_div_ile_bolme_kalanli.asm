.data
	bolum: .asciiz "bolum: "
	kalan: .asciiz " kalan: "
.text
	addi $t0, $zero, 20
	addi $t1, $zero,  7
	
	div  $t0, $t1    # lo <- bolum , hi <- kalan
	mflo $t2	 # bolum
	mfhi $t3	 # kalan
	
	# bolum: t2 kalan: t3 yazmak icin			
	li $v0, 4
	la $a0, bolum
	syscall
	
	li $v0, 1
	add $a0, $zero, $t2
	syscall
	
	li $v0, 4
	la $a0, kalan
	syscall
	
	li $v0, 1
	add $a0, $zero, $t3
	syscall