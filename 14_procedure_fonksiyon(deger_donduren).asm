.data
.text
    main:
    	addi $t0, $zero, 12
	addi $t1, $zero, 8
	
	jal topla
	
	li $v0, 1
	add $a0, $zero, $v1     #dondurulen deger $v1'den a0'a yazilir
	syscall
	
	li $v0, 10
	syscall
		
    topla:
	add  $v1, $t0, $t1	# dondurulecek deger $v1'a yazilir
			
	jr $ra
