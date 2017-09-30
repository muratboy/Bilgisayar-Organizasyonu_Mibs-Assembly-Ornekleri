.data
	sayi: .word 23	#integer icin 4 byte_32 bit(.word)'lik degisken ata
.text
	li $v0, 1	#integer yazdirmak icin $v0 1 olmali
	lw $a0, sayi	#sayinin adresini degil degerini atiyoruz
	syscall
