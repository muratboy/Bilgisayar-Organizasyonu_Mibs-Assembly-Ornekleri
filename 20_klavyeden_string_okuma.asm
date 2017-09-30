.data
    istek: .asciiz "isminizi giriniz: "
    mesaj: .asciiz "Merhaba, "
    isim:  .space 20	# 20 karakterlik yer
.text
    main:
	
	li $v0, 4
	la $a0, istek
	syscall
	# klavyeden girilen texti alma
	li $v0, 8    #string okunurken $v0 8 olmali
	la $a0, isim #okunan string isim'e yazilacak
	li $a1, 20   #okunan deger en fazla 20 karakter olacak(sonlandirma haric 19)
	syscall

	li $v0, 4
	la $a0, mesaj
	syscall
	li $v0, 4
	la $a0, isim
	syscall
    
    #programin sonu
    li $v0, 10
    syscall