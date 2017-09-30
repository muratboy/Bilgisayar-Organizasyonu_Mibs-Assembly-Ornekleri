.data
    fDeger:   .asciiz "fonksiyon cagrilinca: "
.text
    main:
	addi $s0, $zero, 10
		
	jal arttir # fonksiyonu cagir
	
	# programin sonu
	li $v0, 10
	syscall
	
    arttir:
    	# s0'daki degeri stack'e kopyala 
    	addi $sp, $sp , -4 # s0 icin 4 byte
    	sw   $s0, 4($sp)
    	    	
    	addi $s0, $s0, 1 # degeri 1 arttir
    	
    	# s0'in fonksiyonda islendikten sonraki degerini yazdir
    	li $v0, 4
	la $a0, fDeger
	syscall
	
	#fonksiyon icinden fonksiyon cagirma
	addi $sp, $sp, -4
	sw   $ra, 4($sp) # *** icice fonksiyon kullanýmýnda donus adresini stack'e itiyoruz
    	jal print
	lw   $ra, 4($sp) # *** eski donus adresini stackten cek
	addi $sp, $sp, 4
	
	# s0'a stackten fonksiyon cagrilmadan onceki degeri ver 
	lw   $s0, 4($sp)
	addi $sp, $sp, 4
	
	#geri don
	jr $ra
	
	#print fonksiyonu
    print:
    	li $v0, 1
	add $a0, $zero, $s0
	syscall
	
	jr $ra
