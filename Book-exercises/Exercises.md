# Book exercises

## Index

<center>

|Aula|Páginas do livro|Exercícios||Aula|Páginas do livro|Exercícios||
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
|AEX01|3 ~ 26|-||AEX14|||
|AEX02|A1 ~ A9; 123 ~ 126|-||AEX15|||
|[AEX03](#AEX03)|62 ~ 73|2.7, 2.9, 2.12, 2.14, 2.15, 2.17, 2.18||AEX16|||
|[AEX04](#AEX04)|87 ~ 96|2.19, 2.21, 2.22, 2.26||AEX17|||
|[AEX05](#AEX05)|96 ~ 102 |2.31, 2.34||AEX18|||
| [AEX06](#AEX06) |106 ~ 120|2.24, 2.25, 2.39 ~ 2.42||AEX19|||
|AEX07|145 ~ 159|-||AEX20|||
|AEX08|73 ~ 78, 178 ~ 181, 195, 121 ~ 123|2.43||AEX21|||
|AEX09||||AEX22|||
|AEX10||||AEX23|||
|AEX11||||AEX24|||
|AEX12||||AEX25|||
|AEX13|||||||

</center>

---

## AEX03

### 2.7

`0xABCDEF12`

|Address|`0x0000`|`0x0001`|`0x0002`|`0x0003`|
|:---:|:---:|:---:|:---:|:---:|
|Big endian|`0xAB`|`0xCD`|`0xDE`|`0x12`|
|Little endian|`0x12`|`0xDE`|`0xCD`|`0xAB`|

[topo](#Index)

### 2.9

```
sll $t0,$s3,2
add $t0,$t0,$s6
lw $t1,0($t0)
sll $t2,$s4,2
add $t2,$t2,$s6
lw $t3,0($t2)
add $t4,$t1,$t3
sw $t4,3($s7)
```

### 2.12

#### 2.12.1
`0x150000000` mas os registradores tem tamanho de 32 bits, logo, o resultado é `$t0 = 0x50000000`.
#### 2.12.2
Não, não é o resultado desejado haja visto que ocorre _overflow_.
#### 2.12.3

<table>
<tr>
<td>

```
 0x80000000
-0xD0000000
------------
 0xB0000000
```

</td>
<td>

```
 1000.0000
-1101.0000 (= + 0011.0000)
----------
 1011.0000 (= + 0xB0)
```

</td>
</tr>
</table>

Para o cálculo faz-se uso do complemento de 2.

#### 2.12.5

Tomando como suposto que não há tratamento para somas que resultem em um valor representado por mais de 32 bits, havendo assim um truncamento (_overflow_), o valor em `$t0 = 0x50000000` para a primeira linha, como resolvido na questão [2.12.1](#2.12.1). Para a segunda linha de código, como a soma de `0x5 + 0x8 = 0xD`, não há _overflow_.

#### 2.12.6
Não, o valor encontrado não corresponde ao correto, dado que parte da informação se perdeu com a primeira operação de soma.

[topo](#index)

### 2.14
|opcode|function|
|:---:|:---:|
|`0x00`|`0x20`|

Disso já é possível depreender que trata-se da instrução `add`

|rs|rt|rd|
|:---:|:---:|:---:|
|`0x11 = 17`|`0x01 = 1`|`0x00 = 0`|

de maneira que trata-se da instrução: `add $s1,$at,$zero`

[topo](#index)

### 2.15
`sw $t1,32($t2)` pelo green sheet, `sw` tem formato de instrução I com **opcode** `0x2B = 101011`.

|opcode|rs|rt|immediate|
|:---:|:---:|:---:|:---:|
|101011|01010|01001|0000000000100000|

[topo](#index)

### 2.17
**opcode** = `0x23 = 100011` = `lw`

**rs** = 1 = `$at`

**rt** = 2 = `$v0`

**const** = `0x0004`

de maneira que a instrução total é `lw $at,4($v0)`

> confirmar se nessas operaçõs com uso de _immediate_ o valor não é armazenado já com seu valor deslocado logicamente de 2 bits. Caso sim, passa a ser `lw $at,1($v0)`, sendo necessário também revisar a questão [2.15](#2.15)

[topo](#index)

### 2.18

#### 2.18.1
Segue a análise para as instruções do tipo **R**:

||Tamanho original|Refe-se a: |Tamanho modificado|
|:---:|:---:|:---:|:---:|
|**opcode**|6 bits|número de instruções|8 bits|
|**rs,rd,rt**|5 bits|quantidade de registradores|7 bits|
|**shamt**|5 bits|(?)|7 bits|
|**funct**|6 bits|Também se relaciona com a quantidade de instruções, mas especificamente do tipo **R**|6 bits|

#### 2.18.2
Como originalmente _immediate_ recebe o comprimento de bits correspondente à **rd, shamt, function**,o novo valor de _immediate_ será de `7 + 7 + 6 = 20 bits`

> confirmar com as provas antigas o novo valor para shamt

#### 2.18.3
 * **Diminuição:** operação de soma por constante pode recorrer ao uso do immediate que compreende agora a um valor maior que anteriormente.

 > incerto se isso é realmente válido;

 * **Aumento:**  (?)

[topo](#index)

## AEX04

### 2.19

#### 2.19.1

```
sll $t2,$t0,44  # shift left de 44 bits -> $t2 == 0x0000000
or $t2,$t2,$t1  # or logico de $t1 com 0x00000000
```
`$t2 == $t1 == 0x12345678`

#### 2.19.2

```
sll $t2,$t0,4   # $t2 == 0xAAAAAAA0 = 1010.1010.1010.1010.1010.1010.1010.0000
andi $t2,$t2,-1   # "-1 == 0xFFFF" nao sofre extensao de sinal
```
`$t2 == 0x0000AAA0`

#### 2.19.3

```
srl $t2,$t0,3   --$t2 = 0x15555555
andi $t2,$t2,0xFFEF -- $t2 = 0x00005545
```

`$t2 = 0x00005545`

Os resultados são de acordo com a simulação no MARS

[topo](#index)

### 2.21

<table>
<tb>
<td>
`not $t1,$t2`
</td>
<td>
`nor $t2,$t1,$t1`
</td>
</tb>
</table>

|**A**|**A**|**A or A**|**~(A or A)**|
|:---:|:---:|:---:|:---:|
|0|0|0|1|
|1|1|1|0|

[topo](#index)

### 2.22

<table>
<tb>
<td>

```c
A = C[0] << 4
```

</td>
<td>

```
lw $t3,0($s1)
sll $t1,$t3,4
```

</td>
</tb>
</table>

[topo](#index)

### 2.26

#### 2.26.1

|code|comment|
|:---:|:---:|
|`LOOP: slt $t2,$0,$t1`|`$t2` somente receberá o valor lógico de 1 quando `$t1 ~= 0`, logo é setado |
|`beq $t2,$0,DONE`|desvia se `$t1` chega ao valor de zero|
|`subi $t1,$t1,1`|subtra de `$t1` de 1|
|`addi $s2,$s2,2`|soma 2 em `$s2`|
|`j LOOP`|retorna para o início do loop|

Se `$t1` é inicializado com valor de 10, significa que a operação de loop ocorrerá 11 vezes, de maneira que o valor final de `$s2 == X + 20` sendo X o valor anterior.

#### 2.26.2

Versão otimizada
```c
for(i = 10, i != 0, i--){
  B += 2;
}
```

Versão de acordo com código em _assembly_.
```c
int i = 10;

while(i != 0){
  i -= 1;
  B += 2;
}
```

#### 2.26.3

Enquanto no LOOP e `$t1` válido, são 5 instruções por passagem no loop, então 5\*N. Para `$t1 == 0` e desvio, mais duas instruções, sendo assim um total de 5\*N+2 instruções.

[topo](#index)

## AEX05

### 2.31

<table>
<tb>
<td>

```c
int fib(int n){
  if (n==0)
    return 0;
  else if (n == 1)
    return 1;
  else
    return fib(n−1) + fib(n−2);
}
```

</td>
<td>

```
fib:
	addi $t1,$0,1

loop:
	addi $sp,$sp,-4
	sw $ra,0($sp)
	beq $a0,$0,L0
 	beq $a0,$t1,L1
	addi $a0,$a0,-1

	jal loop

	lw $ra,0($sp)
	addi $sp,$sp,4

	add $t0,$v0,$0
	add $v0,$v0,$v1
	add $v1,$t0,$0

	jr $ra

L0:
	add $v0,$0,$0
	jr $ra

L1:
	addi $v1,$0,1
	jr $ra
```

</td>
</tb>
</table>

[topo](#index)

### 2.34

<table>
<tb>
<td>

```c=
int f(int a, int b, int c, int d){
  return func(func(a,b),c+d);
}
```

</td>
<td>

```
f:
	add $sp,$sp,-4
	sw $ra,0($sp)

	jal func

	add $a1,$a2,$a3		# $a1 = c+d
	add $a0,$v0,$zero	# $a0 = func($a0,$a1) == $v0

	jal func

	lw $ra,0($sp)
	add $sp,$sp,4

	jr $ra

func:
	# example: func(a,b) returns a+b
	add $v0,$a0,$a1

	jr $ra

	# function expression
	# function returns integer at $v0
```

</td>
</tb>
</table>

[topo](#index)

## AEX06

### 2.24

Instruções do tipo _jump_ possuem os 26 bits menos significativos como número de palavras. O valor que se apresenta portanto deve ser multiplicado por 4 (deslocamento lógico de 2 _bits_ para a esquerda) e concatenado aos 4 _bits_ mais significativos do PC atual. Assim se `PC = 0x2000 0000` não há como alcançar o endereço **0x4000 0000**, pois necessitaria a alteração dos 4 _bits_ mais significativos.

> conferir se resposta esta correta ou não

### 2.25

`rpt $t2, loop # if(R[rs]>0) R[rs]=R[rs]−1, PC=PC+4+BranchAddr`

#### 2.25.1

Formato mais adequado é o formato I pois é o que caracteriza também o desvio condicional, de maneira que pode-se implementar o desvio condicional a partir do teste do registrador `$t2`

#### 2.25.2

```
rpt:
  addi $t2,$t2,-1
  bne $t2,$zero,rpt
```

[topo](#index)

### 2.39

```
# code checks, and is quite similar do load address
lui $0,$t1,0x2001 # loads upper 16 bits
ori $t1,0x4924    # loads lower 16 bits
```

[topo](#index)

### 2.40

Não. Para alcançar  o endereço proposto no exercício anterior, o PC deveria ter início `0x2...`. O endereço pode ser alcançado no entanto com o uso da instrução `jr $t1`.

[topo](#index)

### 2.41

Não, não é possível com uma instrução de _branch_ alcançar o endereço proposto no exercício 2.39.

**Endereço máximo alcançável:**

```
PC' = PC + 4 + (immediate << 2)
PC' = PC + 4 + (0x7FFF << 2) # remember signal extension that occurs in branches
PC' = PC + 0x4 + (0x1FFFC)
PC' = PC + 0x0002.0000
PC' = 0x0000.0600 + 0x0002.0000
PC' = 0x0002.0600
```

**Endereço mínimo alcançável:**

```
PC' = PC + 4 + (immediate << 2)
PC' = PC + 4 + (0x8000 << 2)
PC' = PC + 4 + (0xFFFE.0000)
PC' = PC + (0xFFFE.0004)
PC' = 0x0000.0600 + 0xFFFE.0004
PC' = 0xFFFE.0604
```

> Importante notar que apesar de ser tratado como endereço mínimo, o segundo cálculo coloca o PC muito mais a frente do que o endereço máximo. Isso se deve ao fato de que há extensão do sinal.

[topo](#index)

### 2.42

`PC' = 0x2001.4924`
```
0x2001.4924 = 0x1FFFF000 + 0x4 + (imm << 2)
0x0001.5924 = 0x4 + (imm << 2)
0x0001.5920 = (imm << 2)
(0x0001.5920 >> 2) = ((imm << 2) >> 2)
0x0000.5648 = imm
```

Portanto _immediate_ = 22088 que aplicando log2(22088) = 14,43 < 16, logo pode ser representado por 16 bits. Assim pode-se usar apenas uma instrução de _branch_ para alcançar o endereço proposto no exercício 2.39 tendo o PC = **0x2001.4924**

[topo](#index)

## AEX08

### 2.43



[topo](#index)
