.data
	dizi:      .word 10, 2, 9
	uzunluk:   .word 3
	toplam:    .asciiz "toplam:   "
	ortalama:  .asciiz "\nortalama: "
.text
	main:
		la $t0, dizi	#dizinin baslangic adresi
		li $t1, 0	# i=0
		lw $t2, uzunluk
		li $t3, 0	#toplam = 0
	toplamDongusu:
		lw $t4, ($t0)	# t4 = dizi[i]
		add $t3, $t3, $t4 # sum += dizi[i]
		
		add $t1, $t1, 1 # i++
		add $t0, $t0, 4
		
		blt $t1, $t2, toplamDongusu # i<uzunluk ise donguye devam
		
		li $v0, 4
		la $a0, toplam
		syscall
		li $v0, 1 
		move $a0, $t3
		syscall
		
		div $t5, $t3, $t2	# ortalama=toplam/uzunluk
		
		li $v0, 4
		la $a0, ortalama
		syscall
		li $v0, 1 
		move $a0, $t5
		syscall
		
		li $v0, 10
		syscall
		