.data
	dizi: .word 10:6  # 6 elemani da 10 olan bir dizi 
	aralik: .asciiz "\n"
.text
	main:
	
	andi $t0, $zero, 0
	
	while:
		beq $t0, 24, exit
		
		lw $t6, dizi($t0)
		
		addi $t0, $t0, 4
		
		li $v0, 1
		addi $a0, $t6, 0
		syscall
		
		li $v0, 4
		la $a0, aralik
		syscall
		
		j while
	exit:
		li $v0, 10
		syscall
