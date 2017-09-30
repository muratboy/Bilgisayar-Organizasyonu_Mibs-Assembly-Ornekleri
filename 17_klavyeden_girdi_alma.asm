.data
	soru:  .asciiz "yasiniz kac: "
	cevap: .asciiz "yasiniz: "
.text
	# soruyu yaz
	li $v0, 4
	la $a0, soru
	syscall
	
	# klavyeden girileni al
	li $v0, 5 #klavyeden integer veri almak icin $v0 5 olmali
	syscall
	
	move $t0, $v0
	
	#cevabi yaz
	li $v0, 4
	la $a0, cevap
	syscall
	li $v0, 1
	move $a0, $t0
	syscall
