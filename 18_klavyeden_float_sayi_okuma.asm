.data
	soru:  .asciiz "boyunuz kac(m): "
	cevap: .asciiz "boyunuz: "
	zero:  .float 0.0
.text
	lwc1 $f2, zero
	
	# soruyu yaz
	li $v0, 4
	la $a0, soru
	syscall
	
	# klavyeden girileni al
	li $v0, 6 #klavyeden float veri almak icin $v0 6 olmali ---> $f0
	syscall
	
	#cevabi yaz
	li $v0, 4
	la $a0, cevap
	syscall
	li $v0, 2
	add.s $f12, $f0, $f2
	syscall
