.data
	pi:   .float 3.14
.text
	li    $v0,  2  #float yazdirmak icin $v0 2 olmali
	lwc1  $f12, pi #coprocessor 1'deki $f12 registerina pi'nin degerini yaz
	syscall