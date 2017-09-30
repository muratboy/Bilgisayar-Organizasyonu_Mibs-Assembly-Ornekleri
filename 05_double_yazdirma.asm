.data
	e:      .double 2.71828
	sifir:  .double 0.0	# $zero registeri gibi kullanmak icin
.text
	ldc1 $f2, e		#double 64 bit oldugu icin 2 tane register kullaniyoruz
	ldc1 $f0, sifir
	
	li $v0, 3		#double yazdirmak icin $v0 3 olmali
	add.d $f12, $f2, $f0	#$f12'ye 0.0+2.71828 toplanarak atilir
	syscall