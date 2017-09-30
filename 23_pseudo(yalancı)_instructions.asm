.data
    mesaj1: .asciiz "ilk sayi daha buyuk"
    mesaj2: .asciiz "ikinci sayi daha buyuk"
.text
    main:
	addi $t0, $zero, 10
	addi $t1, $zero, 11

# aslinda daha cok satirla yazilan kodlarin kalip komutlarla kisaltilmasi
#pseudo(yalanci) komutlar -> bgt , blt ...
	bgt  $t0, $t1, ilkBuyuk
	blt  $t0, $t1, ikinciBuyuk
	
	#programin sonu
	li $v0, 10
	syscall
	
    ilkBuyuk:
	li $v0, 4
	la $a0, mesaj1
	syscall
	
	li $v0,10
	syscall
	
    ikinciBuyuk:
	li $v0, 4
	la $a0, mesaj2
	syscall
	
	li $v0, 10
	syscall
	
