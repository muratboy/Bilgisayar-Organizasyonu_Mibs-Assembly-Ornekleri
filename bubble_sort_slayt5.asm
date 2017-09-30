.data
	dizi: .word 12,3,45,6,8,13
.text
		la $t6, dizi
	loop:
		li $t0, 1		#bayrak=True
		li $t1, 0
	for:
		add $t2, $t6, $t1
		lw  $t3, ($t2)		#elemani yukle
		lw  $t4, 4($t2)		#sonraki elemani yukle
		sub $t5, $t3, $t4
		blez $t5, noswap	#siraliyla sirayi degistirme
		li $t0, 0
		sw $t3, 4($t2)		#yer degistir
		sw $t4, ($t2)
	noswap:
		add $t1, $t1, 4
		sub $t5, $t1, 20	#dizinin sonu olup olmadigini kontrol et(20=(6-1)*4)
		bltz $t5, for
		beq $t0, $zero, loop	
		li $v0,10
		syscall
# $t0	-- algaritmanin tamamlandigini(1) gosteren bayrak
# $t1	-- dizinin elemanlarina ulasabilmek icin offset
# $t2   -- karsilastirilacak elemanin adresi
# $t3   -- karsilastirilacak eleman
# $t4	-- karsilastirilacak diger eleman
# $t5	-- dizinin taban adresi