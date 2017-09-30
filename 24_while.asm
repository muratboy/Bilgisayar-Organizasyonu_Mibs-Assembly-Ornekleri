.data
	mesaj1: .asciiz " while dongusu sona erdi"
.text
    main:
	# i = 0
	addi $t0, $zero, 0
	
	while:
		bgt $t0, 10, exit  # i > 10 ise exit'e git
		
		jal print	   # i'yi yazdir
		
		addi $t0, $t0, 1   # i++
		
		j while
		
	exit:
		li $v0, 4
		la $a0, mesaj1
		syscall
		
		li $v0, 10
		syscall
	print:
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		
		jr $ra