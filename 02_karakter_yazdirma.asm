.data
	karakter:	.byte	'a'
.text  
	li	$v0,	4
	la	$a0,	karakter
	syscall
