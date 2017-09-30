.data
.text
	addi $t0, $zero, -10
	addi $t1, $zero,   5
	
	mult $t0, $t1	# carpimin sonucunu hi ve lo registerlarina atar(sonuc 32 bite sigmayabilir)
	mflo $t2	# sonucun lo daki kismini t2'ye at
	mfhi $t3	# sonucun hi daki kismini t3'ye at
	
	li $v0, 1
	add $a0, $zero, $t3	
	syscall
	
	li $v0, 1
	add $a0, $zero, $t2
	syscall