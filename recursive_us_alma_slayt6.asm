.data
.text
	li $t0, 1
	li $t1, 5	# sayinin ussu
	li $t2, 2	# sayinin tabani
	
	jal power
	
	li $v0, 1
	add $a0, $zero, $t0 #sonucu yazdirma
	syscall
	
	li $v0, 10	#son
	syscall
	
    power:
    	sw  $ra, 0($sp)
    	add $sp, $sp, -4
    if:
    	add $t1, $t1, -1 
    	blez $t1, endif
    	jal power
    
    endif:
    	mul $t0, $t0, $t2
    	
    	add $sp, $sp, 4
    	lw $ra, 0($sp)
    	
    	jr $ra
