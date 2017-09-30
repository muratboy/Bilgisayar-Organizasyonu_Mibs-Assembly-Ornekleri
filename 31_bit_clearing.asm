.data
	yeniSatir: .asciiz "\n"
.text
	main:
		li  $a1, 111111
		jal sayiGoster
		
		li $a1,111111
		jal bitSil
		
		move $a1, $v0
		jal sayiGoster
		
		li $v0, 10
		syscall
		
	sayiGoster:
		li $v0, 4
		la $a0, yeniSatir
		syscall
		li $v0, 1
		move $a0, $a1
		syscall
		
		jr $ra
	bitSil:
		addi $sp, $sp, -4
		sw $s0, 0($sp)
		
		li $s0, -1
		sll $s0, $s0, 1
		and $v0, $a1, $s0
		
		lw $s0, 0($sp)
		addi $sp, $sp, 4
		
		jr $ra