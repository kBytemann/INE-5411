######################################################
#######		contagem sem erro		######
######################################################							
							#	Resultado esperado	R=1														
							#	i = $s3
							#	k = $s5 = 6
							#	address base do arranjo = $s6
.data
_save: 	.word	9999,7,6,1,6,4,5,6,0			#	elementos do arranjo, 2 valor == tamanho do array
_k: 	.word	6					#	valor de teste (?)
_error:	.asciiz	"Index out of Bounds Exception"		#	menagem de erro caso o tamanho não seja condizente

.text
.globl main
main:		addi	$s3, $0, 0			# inicializar $s3(=0) como indexador inicial
		lw	$s5, _k				# armazena em $s5 o valor armazenado em _k no campo .data
		la	$s6, _save			# move o endereco inicial do array _save para $s6
		lw	$t2, 4($s6)			# salva em $t2 o valor do tamanho do array
		
		addi	$s6, $s6, 8			# carrega em $s6 o end. do prim. elem. do array
		
		
loop:		beq	$s3, $s5, indexout		# teste para ver se o contador já não ultrapassou o tamanho do array
		sll	$t1, $s3, 2			# calcula o salto de endereço que deve ser dado e guarda em $t1 para ser somado
		add	$t1, $t1, $s6			# $t1 recebe o valor de endereco do elemento no arranjo
		lw	$t0, 0($t1)			# $t0 recebe o valor do endereco calculado pela soma de $t1 e $s6
		bne	$t0, $s5, exit			# compara o valor em $t0 com o de _k
		addi	$s3, $s3, 1			# aumenta o contador de 1
		j	loop		
		
exit:		addi	$v0, $0, 1
		add	$a0, $0, $s3
		syscall
		j	end
indexout:	addi	$v0, $0, 4
		la	$a0, _error
		syscall
		j	end
end:		nop
