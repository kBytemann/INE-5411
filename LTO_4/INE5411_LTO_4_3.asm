.data
_array: .word 3:5		# 5	 palavras com o valor 3
_size: .word 5  		# tamanho do arranjo
.text
.globl main

main:	jal clear2	# Salto para o endereço do procedimento
	li $v0, 10	# Exit syscall
	syscall

clear2:# inicialização dos parâmetros
	la $a0, _array
	lw $a1, _size
	# Prólogo do laço. Deve conter uma única instrução de inicialização de p.
        add $t0, $a0, $0		# inicialização de $t0 com o endereço do primeiro elemento do array
        ########################	otimização de codigo	##############################################
        sll $t2, $a1, 2			# valor a ser somado no endereço apontado por $t0(=p)
        add $t2, $t2, $a0		# $t2 recebe o valor final de endereço 
	# Teste, corpo e iteração do laço.	
Loop2:	slt $t3, $t0, $t2
	beq $t3, $zero, Exit  		# Se (p>=&array[size]) desvia para Exit
	sw $0, ($t0)			# zera o valor no endereco apontado por $a0
	addiu $t0, $t0, 4
	j Loop2
	# Epílogo do procedimento
Exit:	jr $ra  # Retorna ao programa principal
