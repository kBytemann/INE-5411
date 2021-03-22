INE 5411 - Organização de computadores I: resolução do compêndio de provas de 20

# INE 5411 - Organização de computadores I: resolução do compêndio de provas de 2020

${toc}
### Disclaim
Esse gabarito foi formulado por um grupo de estudantes, e não corresponde à resolução oficial. Também não é composto pela resolução de todas as questões (em um primeiro momento), mas servindo como orientação para resolução e aperfeiçoamento da percepção do que pode ser encontrado nas provas referentes à matéria de Organização de Computadores I. 
**IMPORTANTE:** não partir do pressuposto que o estudo deste material será suficiente para estar preparado para as provas!

---
## Questão 1
```assembly
div	$a0, $a1
mfhi	$v0
sll	$v0, $v0, 2
jr	$ra
```
`div	$a0, $a1`
> realiza a divisão do valor passado em `$a0` por `$a1`, mantendo apenas o quociente

`mfhi	$v0`
> transporta do resultado de **algum lugar** para o registrador `$v0` 

`sll	$v0, $v0, 2`
> realiza a operação de multiplicação deslocando dois bits à esquerda do resultado obtido.

`jr	$ra`
> retorna à função chamadora
 ---
## Questão 2
* Instrução **R** antes da modificação

|opcode (6 bits)|rs (5 bits)|rt (5 bits)|rd (5 bits)|shamt (5 bits)|funct (6 bits)|
|---|---|---|---|---|---|

* **opcode**: refere-se ao número total de instruções gerais (tipo R, I e J) da arquitetura. Como o MIPS possui 6 bits, é previsto na arquitetura $2^6$ operações;  
* **rs, rt, rd**: definidos de acordo com a necessidade e melhor conveniência da arquitetuta. No caso do MIPS, 5 bits;
* **shamt**: é relacionando ao tamanho dos registradores. Como na arquiterura original do MIPS o regitrador do MIPS possui 32 bits, o tamanho de shamt fica definido como sendo: $\text{log}_{2}{(32)} = 5$ bits;
* **funct**: se refere ao número de instruções do tipo R que a arquitetuta do MIPS apresenta. Assim, como há 6 bits dedicados para esse campo, podem haver até $2^6$ instruções dedicadas à instruções do tipo R;

$i.$ **Extensão do número de registradores: de 32 para 128**: unclear;
$ii.$ **Extensão do comprimento dos registradores: de 32 para 128 bits**: com isso cada campo de registradores deve passar de 5 para 7 bits (cálculo anterior). Como há 3 registradores, soma-se um total de 21 bits. Também afeta o tamanho do campo shamt, passadno de 5 para 7 bits;
$iii.$ **Extensão ISA: o número de instruções foi quadriplicado, mas de forma que o número de instruções do tipo R seja o dobro do original**: deve-se começar com a análise do novo número de funções para as intruções do tipo R. Se o total passa a ser duplicado, então o campo funct passa de 6 para 7 bits (o que implica em uma duplicação do valor original de instruções R e portanto do total). Como o valor total de instruções deve duplicado igualmente, resta ainda que opcode passa de 6 bits para 7 bits. 

Assim ao final da nova mudança no tamanho da arquitetura temos que:

| | opcode |rs |rt | rd | shamt | funct |
| --- | --- | --- | --- | --- | --- | --- |
| original | 6 bits | 5 bits | 5 bits | 5 bits | 5 bits | 6 bits |
| nova | 7 bits | 7 bits | 7 bits | 7 bits | 7 bits | 7 bits |

Sendo que a nova instrução tem 42 bits. Como as instruções do tipo I seguem a cosntrução:

| opcode | rs | rt | immediate |
| --- | --- | --- | --- | --- | --- |
| 6 bits | 5 bits | 5 bits | 16 bits |

temos que a nova instrução I fica como sendo:

| | opcode | rs | rt | immediate |
| ---------- | --- | --- | --- | --- |
| original | 6 bits | 5 bits | 5 bits | 16 bits |
| nova | 7 bits | 7 bits | 7 bits | ?? bits |

sendo que o número de bits definido no campo **immediate** é dado por:

	immediate: 42 bits - [(# bits opcode) + 2.(# bits registrador)] 
	immediate: 42 - [7 + 2.7] 
	immediate: 42 - 21 = 21 bits
---
## Questão 4

(incompleto até 22/03/2021 17:00)
* Código **A**
```assembly
lock: 	addi $t0,$zero,1 
		ll $t1,0($a0)
		sc $t0,0($a0) 
		beq $t0,$zero,lock 
		bne $t1,$zero,lock 
		jr $ra 
```
`addi $t0,$zero,1`
> `$t0` guarda o valor de 1 sinalizando uso de memória

`ll $t1,0($a0)`
> salva em `$t1` o valor apontado por `$a0` adicionado do immediate (no caso nulo)

`sc $t0,0($a0)`
> armazena o valor de `$t0` em `$a0` caso ...

* Código **B**
```assembly
lock: 	ll $t1,0($a0)
 	beq $t1,$zero,lock
 	addi $t0,$zero,1
 	sc $t0,0($a0)
 	bne $t0,$zero,lock
 	jr $ra
```
---
## Questão 5
```assembly
beq	$s1, $s2, label
```

A instrução `beq`  é do tipo I, apresentando assim 16 bits de valor imediato que podem ser somados ao valor de endereço. Contudo, o valor representado corresponde ao número de palavras e será multiplicado por 4 (deslocamento à esquerda por 2 bits) após a extensão do sinal para todos os 32 bits. Assim se o endereço original é de `0x 0FF8 0018`, o endereço final deve ser 

	PC = PC + 4 + (immediate)<<2
	PC = PC + 4 + (1000.0000.0000.0000b)<<2
	PC = PC + 4 + (1111.1111.1111.1111.1000.0000.0000.0000b)<<2
	PC = PC + 4 + 1111.1111.1111.1110.0000.0000.0000.0000b
	PC = PC + 0x4 + 0xFFFE0000
	PC = PC + 0xFFFE0004
	PC = 0x0FF80018 + 0xFFFE0004
	PC = 0x(1)0FFC001C

Como o bit mais significativo corresponde ao 33º bit, este perde-se como sendo um sinal de *overflow*.

---
## Questão 6
```assembly
		.data
met: 	.word M0, M1, M2, M3, M4...
		.text
		.globl main
main:
		...
```
`la $s0, met`
> instrução necessária para carregar em algum registrador o endereço base da *string* contendo os M's;

`lw $t0,4*n($s0)`
> instrução em que efetivamente havia o carregamento do registrador com o endereço apontado por `$s0` somado à 4*n

`jalr $t0`
> salto para o endereço apontado pelo método $M_n$

---
## Questão 7

Tomando o segundo exexmplo, que apresenta uma resposta válida (correta):

```assembly
0x3C01FACE
0x8C290000
```
desmembrando os 6 primeiros bits da primeira instrução temos:  

||binário|hexadecimal|
|---|---|---|
|opcode|`001111`|`0F`|

Analisando o opcode, vemos que trata-se de uma instrução do tipo `lui` e que é uma instrução do tipo I, logo:

||opcode|rs|rt|immediate|
|---|---|---|---|---|---|---|
|binário|`001111`|`00000`|`00001`|`1111101011001110`|
|hexa|`0F`|`00`|`01`|`FACE`|

o que indica que trata-se da seguinte instrução:
`lui	$at,0(FACE)`

desmembrando os 6 primeiros bits da segunda instrução temos:  

||binário|hexadecimal
|---|---|---|
|opcode|`001101`|`0D`|

sendo assim, trata-se da instrução `ori`, e assim a instrução completa fica como sendo:

||opcode|rs|rt|immediate|
|---|---|---|---|---|---|---|
|binário|`001101`|`00001`|`01001`|`0000000000000000`|
|hexa|`0D`|`01`|`09`|`0000`|

o que indica que trata-se da seguinte instruçõa:
`ori	$t1,0($at)`

de maneira que o conjunto total de instruções é dado por:

```assembly
lui	$at,0(FACE)
ori	$t1,0($at)
``` 
Este conjunto de instruções carrega em `$t1` o endereço `0xFACE0000`, que pode corresponder ao *label* FACE2020. Ou seja, representa a seguinte pseudo-instrução:

```assembly
la	$t1,FACE2020
``` 
(rever resolução da questão)

---
## Questão 8 
Para as instruções do tipo J, o immediate é multiplicado por 4 (deslocamento de 2 bits) e concatenado com os 4 bits mais significativos do PC atual.

$i.$ **Endereço máximo:**

	PC = MSB(PC, 4 bits) & (11.1111.1111.1111.1111.11111.1111b)<<2
	PC = MSB(PC, 4 bits) & (1111.1111.1111.1111.1111.1111.1100b)
	PC = MSB(PC, 4 bits) & 0xFFFFFFC
	PC = 0xFFFFFFFC
	
$ii.$ **Endereço mínimo:** 

	PC = MSB(PC, 4 bits) & (00.0000.0000.0000.0000.0000.0000b)<<2
	PC = MSB(PC, 4 bits) & (0000.0000.0000.0000.0000.0000.0000b)
	PC = MSB(PC, 4 bits) & 0x0000000
	PC = 0xF0000000
	
---
## Questão 9
(incompleto até 22/03/2021 17:00)
