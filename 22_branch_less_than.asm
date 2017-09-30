.data
    mesaj1: .asciiz "ilk sayi daha kucuk"
    mesaj2: .asciiz "ikinci sayi daha kucuk"
.text
    main:
	addi $t0, $zero, 12
	addi $t1, $zero, 11
	
	slt $t2, $t0, $t1 # t0<t1 ise t2 <- 1 degilse t2 <- 0
	# t2=0 degilse ilkKucuk'e git
	bne  $t2, $zero, ilkKucuk
	# t2=0 ise ikinciKucuk'e git
	beq  $t2, $zero, ikinciKucuk
#       b ikinciKucuk --> ayni sonucu verir
	
	#programin sonu
	li $v0, 10
	syscall
	
    ilkKucuk:
	li $v0, 4
	la $a0, mesaj1
	syscall
	
	li $v0,10
	syscall
	
    ikinciKucuk:
	li $v0, 4
	la $a0, mesaj2
	syscall
	
	li $v0, 10
	syscall
	
