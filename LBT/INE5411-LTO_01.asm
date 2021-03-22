.text
.globl main
main:
	add $s0, $zero, $gp	#carrega em s0 o endereço de gp
	lbu $t0, 0($s0)		#carrega o valor do byte menos significativo apontado por s0 em t0
	sb $t1, 1($s0)		# sobreescreve no endereço de s0 o valor do segundo byte menos significativo
