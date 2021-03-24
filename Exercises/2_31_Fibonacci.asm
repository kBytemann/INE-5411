f:	  addi $t0,$zero,1
	    addi $a0,$zero,6
	    jal fib
	    nop
	    j end
fib:	beq $a0,$zero,zero
	    beq $a0,$t0,one
	    addi $sp,$sp,-4
	    sw $ra,0($sp)
	    addi $a0,$a0,-1
	
	    jal fib

	    lw $ra,0($sp)
	    add $sp,$sp,4
	    addi $t1,$v1,0
	    add $v1,$v1,$v0
	    addi $v0,$t1,0
	    jr $ra 	
zero:	addi $v0,$zero,0
	    jr $ra
one:	addi $v1,$zero,1
  		jr $ra
end:	nop
