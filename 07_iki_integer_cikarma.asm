.data
	sayi1: .word  17
	sayi2: .word   3
.text
	lw $t0, sayi1		# t0 <- 17
	lw $t1, sayi2		# t1 <- 3
	
	sub $t2, $t0, $t1	# t2 = t0 - t1
	
	li   $v0, 1
	move $a0, $t2	# a0 <- 0 + t2 (add  $a0, $zero, $t2)da yazilabilir
	syscall
