.data
# Arranjo inicializado com elementos N não nulos. 
_array: .word 3:10000	   # N elementos com o valor 3               [substitua N pelo valor definido no relatório]
_size: .word 10000		   # tamanho do arranjo                      [substitua N pelo valor definido no relatório]

.text
.globl main

main:
    la		$a0,_array                # carrega o endereco de array em $a0      [completar com 1 pseudo-instrução]
    #---------------Completar com valor de N abaixo!
    addi	$a1,$0,10000	                  # carrega size em $a1                     [completar com 1 instrução nativa]
    jal 	clear2
    li  	$v0,10
    syscall
    
clear2:     
   add		$t0,$a0,$0                # $t0 <- $a0                              [completar com 1 instrução nativa]
   sll		$t1,$a1,2                 # $t1 <- size*4                           [completar com 1 instrução nativa]
   add 		$t2,$a0,$t1		  # $t2 <- &array[size]                    
loop2:
   slt		$t3,$t0,$t2                 # $t3 = (p < &array[size])                [completar com 1 instrução nativa]
   beq		$t0,$t2,Exit                 # se (p >= &array[size]) desvia para Exit [completar com 1 instrução nativa]
   sw 		$zero,0($t0)     	# mem[p] = 0                              
   addi 	$t0,$t0,4    		# p = p + ?                               [completar operando faltante]
   j 		loop2
   
Exit:
   jr 		$ra