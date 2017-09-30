.data
	mesaj: .asciiz "bir sayi giriniz: "
	sonucMesaj: .asciiz "\nGirdiginiz sayinin faktoriyeli: "
	sayi: .word 0
	sonuc: .word 0
.text
	main:	
		li $v0, 4	#kullanicidan bir sayi oku
		la $a0, mesaj
		syscall
		li $v0, 5
		syscall
		sw $v0, sayi	#okunan sayiyi sayi'ya kopyala
		
		lw, $a0, sayi	#sayi'daki degeri a0'a kopyala
		jal faktoriyel  #faktoriyel prosedurunu cagir
		sw $v0, sonuc	#prosedurden geri donen degeri sonuc'a kopyala
		
		li $v0, 4	#sonucu ekrana yazdir
		la $a0, sonucMesaj
		syscall
		li $v0, 1
		lw $a0, sonuc
		syscall
		
		li $v0, 10	#programin sonu
		syscall
		
	faktoriyel:
		addi $sp, $sp, -8	# stack'te
		sw $ra, 0($sp)		# geri donus adresi
		sw $s0, 4($sp)		# bulunan deger icin yer ayir
		
		li $v0, 1
		beq $a0, $zero, faktoriyelson
		# a0 0 olana kadar a0 ve v0(geri donus degeri) carp v0'a yaz
		move $s0, $a0
		addi $a0, $a0, -1
		jal faktoriyel
		
		mul $v0, $s0, $v0
	faktoriyelson:	#stack'teki deger ve adresi geri ver
		lw $ra, 0($sp)
		lw $s0, 4($sp)
		addi $sp, $sp, 8
		
		jr $ra	# cagrildigin yere geri don
		