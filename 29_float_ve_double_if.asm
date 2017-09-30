.data
	mesaj1: .asciiz "True"
	mesaj2: .asciiz "False"
	sayi1: .float 10.5
	sayi2: .float 4.5
.text
	main:
		lwc1 $f0, sayi1
		lwc1 $f2, sayi2
		
		c.eq.s $f0, $f2 # sayilar esitse bayragi true yap degilse false
		bc1t true # bayrak true ise true etiketine git
		bc1f false # bayrak false ise false etiketine git
	
	li $v0, 10
	syscall
	
	true:
		li $v0, 4
		la $a0, mesaj1
		syscall
		
	li $v0, 10
	syscall
	
	false:
		li $v0, 4
		la $a0, mesaj2
		syscall