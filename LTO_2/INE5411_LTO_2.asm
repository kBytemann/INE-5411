.data
# Seção 1: variáveis f, g, h, i, j  armazenadas em memória (inicialização)
_f: .word 1
_g: .word 2
_h: .word 4
_i: .word 8
_j: .word 16

# Seção 2: jump address table
jat: 
.word L0 
.word L1 
.word L2 
.word L3
.word L4
.word default

.text
.globl main
main:
# Seção 3: registradores recebem valores inicializados 
lw $s0, _f
lw $s1, _g
lw $s2, _h
lw $s3, _i
lw $s4, _j

la $t4, jat # carrega em $t4 o endereco-base de jat

# seção 4: testa se k no intervalo [0,4]# colocar "k" em $s5
	sltiu	$t0, $s5, 4		# seta bit em $t0 caso $t1(=k) seja menor que 5
	beq	$t0, $zero, default	# desvio condicional para caso a afirmação acima se verifique
#seção 5: calcula o endereço de jat[k]
	sll	$t2, $s5, 2		# toma-se o valor de saltos propostos por k, rotaciona 2 vezes (x4), armazena em $t2
	add	$t4, $t2, $t4		# armazaena valor final da JAT no registrador $t4
#seção 6: desvia para o endereço em jat[k]
	lw	$t4, 0($t4)		# importa o dado apontado por $t4, no caso o valor da instrucao do label 
	jr	$t4			# salta para o label carregado na linha anterior
#seção 7: codifica as alternativas de execução
L0:	add	$s0, $s2, $s3
	sll	$s0, $s0, 1
	j	exit
L1:	sub	$s0, $s1, $s2
	j	exit
L2:	add	$s0, $s1, $s2
	add	$s0, $s0, $s4 
	j	exit
L3:	or	$t3, $s2, $s3
	or	$s0, $t3, $s4
	j exit
L4:	and	$s0, $s2, $s5
	j exit
default:sub	$s0, $s3, $s5	
	addi	$s0, $s0, 5	
exit:	nop

