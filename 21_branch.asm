.data
    mesaj1: .asciiz "sayilar birbirine esit"
    mesaj2: .asciiz "sayilar birbirine esit degil"
.text
    main:
	addi $t0, $zero, 10
	addi $t1, $zero, 11
	
	# sayilar esitse sayilarEsit'e git
	beq  $t0, $t1, sayilarEsit
	# sayilar birbirine esit degilse sayilarEsitDegile git
	bne  $t0, $t1, sayilarEsitDegil
#       b sayilarEsitDegil --> ayni sonucu verir(kosulsuz dallanma)
	
	#programin sonu
	li $v0, 10
	syscall
	
    sayilarEsit:
	li $v0, 4
	la $a0, mesaj1
	syscall
	
	li $v0,10
	syscall
	
    sayilarEsitDegil:
	li $v0, 4
	la $a0, mesaj2
	syscall
	
	li $v0, 10
	syscall
	