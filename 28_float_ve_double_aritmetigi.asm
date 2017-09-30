.data
	sayi1: .float 3.0
	sayi2: .float 2.0
	sayi3: .double 3.14
	sayi4: .double 2.71
	aralik: .asciiz "\n"
.text
	lwc1 $f2, sayi1
	lwc1 $f4, sayi2
	
	li $v0, 2	#iki float sayinin toplamini yazdirma
	add.s $f12, $f2, $f4
	syscall
	
	li $v0, 4
	la $a0, aralik
	syscall
	
	ldc1 $f2, sayi3
	ldc1 $f4, sayi4
	
	li $v0, 3	#iki double sayinin toplamini yazdirma
	add.d $f12, $f2, $f4
	syscall
	
	li $v0, 4
	la $a0, aralik
	syscall
	
	li $v0, 3	#iki double sayinin carpiminin yazdirilmasi
	mul.d $f12, $f2, $f4
	syscall
	
	li $v0, 4
	la $a0, aralik
	syscall
	
	li $v0, 3	#iki double sayinin bolumunun yazdirilmasi
	div.d $f12, $f2, $f4
	syscall