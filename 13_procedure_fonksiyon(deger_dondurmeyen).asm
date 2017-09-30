.data
    mesaj: .asciiz "Merhaba"
.text
    main:
	jal yazdir  #yazdir fonksiyonuna git
		# program counterdaki adresi ra($31)(donus adresi)ya kopyala
	
	li $v0, 10  # donguye girmemek icin programin bittigini belirtir
	syscall
		
    yazdir:
	li $v0, 4
	la $a0, mesaj
	syscall
		
	jr $ra # fonksiyonun cagrildigi yerin bir adim sonrasina geri gider