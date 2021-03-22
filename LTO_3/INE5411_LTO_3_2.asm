	#	i = $s3
	#	k = $s5 = 6
	#	address base do arranjo = $s6
	#	resultado esperado 	R=7
.data
_save: 	.word	6,6,6,6,6,6,6
_k: 	.word	6

.text
.globl main
main:	lw	$s5, _k		# 	armazena em $s5 o valor armazenado em _k no campo .data
	la	$s6, _save	#	move o endereco inicial do array _save para $s6
	addi	$s3, $0, 0	#	inicializar $s3(=0) como indexador inicial
loop:	sll	$t1, $s3, 2
	add	$t1, $t1, $s6
	lw	$t0, 0($t1)
	bne	$t0, $s5, exit
	addi	$s3, $s3, 1
	j	loop
exit:	addi	$v0, $0, 1
	add	$a0, $0, $s3
	syscall
