.data
    ilkDeger: .asciiz "ilk deger: "
    fDeger:   .asciiz " fonksiyon cagrilinca: "
    sonDeger: .asciiz " fonksiyondan cikinca: "
.text
    main:
	addi $s0, $zero, 10
	
	# s0'in fonksiyona girmeden onceki degerini yazdir
	li $v0, 4
	la $a0, ilkDeger
	syscall
	li $v0, 1
	add $a0, $zero, $s0
	syscall
	
	jal arttir #fonksiyonu cagir
	
	# s0'in fonksiyona çiktiktan sonraki degerini yazdir
	li $v0, 4
	la $a0, sonDeger
	syscall
	li $v0, 1
	add $a0, $zero, $s0
	syscall
	
	# programin sonu
	li $v0, 10
	syscall
	
    arttir:
    	# s0'daki degeri stack'e kopyala 
    	addi $sp, $sp , -4
    	sw   $s0, 4($sp)
    	
    	addi $s0, $s0, 1 # degeri 1 arttir
    	
    	# s0'in fonksiyonda islendikten sonraki degerini yazdir
    	li $v0, 4
	la $a0, fDeger
	syscall
    	li $v0, 1
	add $a0, $zero, $s0
	syscall
	
	# s0'a stackten fonksiyon cagrilmadan onceki degeri ver 
	lw   $s0, 4($sp)
	addi $sp, $sp, 4
	
	#geri don
	jr $ra
    	
	
	
