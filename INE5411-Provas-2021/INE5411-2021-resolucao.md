# INE 5411: compêndio e resolução de questões do primeiro semestre de 2021


### Index
<details>
<summary>Tabela de questões</summary>

 - [Questão 1](#questão-1) [Questão 2](#questão-2) [Questão 3](#questão-3)
 - [Questão 4](#questão-4) [Questão 5](#questão-5) [Questão 6](#questão-6)
 - [Questão 7](#questão-7) [Questão 8](#questão-8) [Questão 9](#questão-9)
 - [Questão 10](#questão-10) [Questão 11](#questão-11) [Questão 12](#questão-12)
 - [Questão 13](#questão-13) [Questão 14](#questão-14) [Questão 15](#questão-15)
 - [Questão 16](#questão-16) [Questão 17](#questão-17) [Questão 18](#questão-18)
 - [Questão 19](#questão-19) [Questão 20](#questão-20) [Questão 21](#questão-21)
 - [Questão 22](#questão-22)

</details>


### Disclaim
>Esse compêndio foi formulado por um grupo de estudantes, e não corresponde à resolução oficial. Também não é composto pela resolução de todas as questões (em um primeiro momento), mas servindo como orientação para resolução e aperfeiçoamento da percepção do que pode ser encontrado nas provas referentes à matéria de Organização de Computadores I. 

**IMPORTANTE:** não partir do pressuposto que o estudo deste material será suficiente para estar preparado para as provas!

---
## Questão 1
Considere os dois processadores abaixo:

|**Processador Intelbras:**|**Processador Logitech:**|
|:---:|:---:|
|frequência de relógio de 335 MHz e CPI médio de 2,1|frequência de relógio de 484 MHz e CPI médio de 3,7|

Tendo em vista que ambas as empresas licenciaram a mesma ISA para seusprocessadores, quantas vezes o processador de maior desempenho é mais rápido doque o outro?

**Resposta:** `1,22`

> <p align="center">
> <img src="https://render.githubusercontent.com/render/math?math=T = \frac{\pi}{2}">
> </p>
>> Demais questões seguem o mesmoo raciocínio. 

[topo](#index)

---
## Questão 2

Qual(is) das seguintes afirmações é (são) verdadeira(s) para as extensões do x86?

Escolha uma ou mais:
- [ ] A instrução `vmovsd (%r1), %xmm0` da extensão AVX armazena 4 doubles em registrador.
- [x] A instrução `vbroadcastss` da extensão AVX armazena 8 cópias do mesmo valor em um mesmo registrador.
- [ ] A instrução `addpd` executa 4 somas em paralelo.
- [ ] A instrução `vaddps` da extensão AVX executa 8 somas em paralelo.
- [ ] A instrução `vmovsd %xmm0, (%r1)` da extensão AVX armazena 4 doubles em memória.

[topo](#index)

---

## Questão 3
_i._ Se um chip de memória SRAM armazena 2^20 bytes, qual das seguintes alternativas especifica melhor sua capacidade?

Escolha uma opção:
- [ ] 1 GiB
- [x] 1 MiB
> por definição 2^20 bytes reference-se a 1 MiB
- [ ] 1 MB
- [ ] 1 GB

[topo](#index)


---

_ii._ Se um chip de memória DRAM armazena 2^30 bytes, qual das seguintes alternativas especifica melhor sua capacidade?

Escolha uma opção:
- [X] 1 GiB
> por definição 2^30 bytes reference-se a 1 GiB
- [ ] 1 MiB
- [ ] 1 MB
- [ ] 1 GB

[topo](#index)


---
## Questão 4

Qual(is) das seguintes afirmações é(são) verdadeiras?

Escolha uma ou mais:
- [ ] A instrução `CALL` do x86 descrita na Figura 2.41-b do livro-texto admite dois modos de operação, onde o campo *offset* é interpretado como endereço absoluto ou relativo. Se, todas as instruções de um módulo assembly são aritméticas ou do tipo `CALL` com modo absoluto, então o respectivo código objeto será automaticamente relocável.
- [x] Para implementar a atribuição `x = A[1]`, onde A é um arranjo cujos elementos são do tipo `char`, o ARMv7 e o MIPS32 usam o mesmo número de instruções quando a variável x é alocada em registrador.
- [x] O ARMv7 e o x86 requerem ambos uma única instrução para realizar operações de `PUSH` ou `POP`.
- [ ] Para implementar uma troca atômica (*atomic exchange*), o ARMv7 usa uma única instrução enquanto o MIPS 32 usa duas instruções.
- [ ] Para implementar a atribuição `x = A[i+1]`, onde A é um arranjo cujos elementos são do tipo `char`, o ARMv7 e o MIPS32 usam o mesmo número de instruções quando as variáveis `x` e `i` são alocadas em registradores.

[topo](#index)


---
## Questão 5
_i._ Uma nova arquitetura tem as seguintes características:
* Todas as instruções têm comprimento de 32 bits;
* A operação (que define o comportamento de uma dada instrução) é determinadapelos campos **func3**, **func7** e **opcode**;
* Operandos constantes são codificados no campo **imm**;
* Há 32 registradores arquiteturais, codificados nos campos **rs1**, **rs2** e **rd**;
* Há 2 formatos de instrução, codificados nos bits menos significativos do campo **opcode**;

Um desses formatos é mostrado abaixo. Quantas operações distintas podem ser codificadas neste formato (para um dado conjunto de operandos)?

|**Imm**|**rs1**|**func3**|**rd**|**opcode**|
|---|---|---|---|---|
|12 bits||3 bits|||

|**Resposta**|512|
|---|---|

> comentar aqui o raciocínio para encontrar a resposta. Mas em síntese trata-se de 2^9.
---
_ii._ Uma nova arquitetura tem as seguintes características:
* Todas as instruções têm comprimento de 32 bits;
* A operação (que define o comportamento de uma dada instrução) é determinadapelos campos **func3**, **func7** e **opcode**;
* Operandos constantes são codificados no campo **imm**;
* Há 32 registradores arquiteturais, codificados nos campos **rs1**, **rs2** e **rd**;
* Há 8 formatos de instrução, codificados nos bits menos significativos do campo **opcode**;

Um desses formatos é mostrado abaixo. Quantas operações distintas podem ser codificadas neste formato (para um dado conjunto de operandos)?

|**Imm**|**rs1**|**func3**|**rd**|**opcode**|
|---|---|---|---|---|
|12 bits||3 bits|||

|**Resposta**|128|
|---|---|

> comentar aqui o raciocínio para encontrar a resposta. Mas em síntese trata-se de 2^7.

---
_iii._ Uma nova arquitetura tem as seguintes características:
* Todas as instruções têm comprimento de 32 bits;
* A operação (que define o comportamento de uma dada instrução) é determinadapelos campos **func3**, **func7** e **opcode**;
* Operandos constantes são codificados no campo **imm**;
* Há 64 registradores arquiteturais, codificados nos campos **rs1**, **rs2** e **rd**;
* Há 2 formatos de instrução, codificados nos bits menos significativos do campo **opcode**;

Um desses formatos é mostrado abaixo. Quantas operações distintas podem ser codificadas neste formato (para um dado conjunto de operandos)?

|**Imm**|**rs1**|**func3**|**rd**|**opcode**|
|---|---|---|---|---|
|12 bits||3 bits|||

|**Resposta**|128|
|---|---|

> comentar aqui o raciocínio para encontrar a resposta. Mas em síntese trata-se de 2^7.

---
_iv._ Uma nova arquitetura tem as seguintes características:
* Todas as instruções têm comprimento de 32 bits;
* A operação (que define o comportamento de uma dada instrução) é determinadapelos campos **func3**, **func7** e **opcode**;
* Operandos constantes são codificados no campo **imm**;
* Há 32 registradores arquiteturais, codificados nos campos **rs1**, **rs2** e **rd**;
* Há 2 formatos de instrução, codificados nos bits menos significativos do campo **opcode**;

Um desses formatos é mostrado abaixo. Quantas operações distintas podem ser codificadas neste formato (para um dado conjunto de operandos)?

|**func7**|**rs2**|**rs1**|**func3**|**rd**|**opcode**|
|---|---|---|---|---|---|
|7 bits|||3 bits|||

|**Resposta**|65536|
|---|---|

> comentar aqui o raciocínio para encontrar a resposta. Mas em síntese trata-se de 2^16.
> 
---
_v._ Uma nova arquitetura tem as seguintes características:
* Todas as instruções têm comprimento de 32 bits;
* A operação (que define o comportamento de uma dada instrução) é determinadapelos campos **func3**, **func7** e **opcode**;
* Operandos constantes são codificados no campo **imm**;
* Há 64 registradores arquiteturais, codificados nos campos **rs1**, **rs2** e **rd**;
* Há 8 formatos de instrução, codificados nos bits menos significativos do campo **opcode**;

Um desses formatos é mostrado abaixo. Quantas operações distintas podem ser codificadas neste formato (para um dado conjunto de operandos)?

|**func7**|**rs2**|**rs1**|**func3**|**rd**|**opcode**|
|---|---|---|---|---|---|
|7 bits|||3 bits|||

|**Resposta**|2048|
|---|---|

> comentar aqui o raciocínio para encontrar a resposta. Mas em síntese trata-se de 2^11.

[topo](#index)


---
## Questão 6

_i._ Considerando a hierarquia de tradução de um código escrito em linguagem de alto nível para sua execução em uma máquina, qual dos seguintes componentes é responsável por transformar arquivos em linguagem de montagem para módulos em linguagem de máquina?

Escolha uma opção:
- [ ] Ligador;
- [ ] Compilador;
- [X] Montador;
- [ ] Carregador;
---
_ii._ Considerando a hierarquia de tradução de um código escrito em linguagem de alto nível para sua execução em uma máquina, qual dos seguintes componentes é responsável por transformar um código de alto nível para linguagem de montagem?

Escolha uma opção:
- [ ] Ligador;
- [X] Compilador;
- [ ] Montador;
- [ ] Carregador;
---
_iii._ Considerando a hierarquia de tradução de um código escrito em linguagem de alto nível para sua execução em uma máquina, qual dos seguintes componentes é responsável pela alocação de memória no momento de execução do programa?

Escolha uma opção:
- [ ] Ligador;
- [ ] Compilador;
- [ ] Montador;
- [X] Carregador;
---
_iv._ Considerando a hierarquia de tradução de um código escrito em linguagem de alto nível para sua execução em uma máquina, qual dos seguintes componentes é responsável por unir diferentes módulos em linguagem de máquina em um executável?

Escolha uma opção:
- [X] Ligador;
- [ ] Compilador;
- [ ] Montador;
- [ ] Carregador;

[topo](#index)


---
## Questão 7

_i._ Computadores que rodam uma aplicação (ou uma coleção de software) pré-determinada, pertencem a qual das seguintes classes?
- [x] Embedded Computers
- [ ] Servers
- [ ] Warehouse Scale Computers
- [ ] Personal Mobile Devices
- [ ] PCs
---
_ii._ Qual das seguintes classes acomoda a maior variedade de aplicações e exibe a mais ampla faixa de desempenhos?
- [x] Embedded Computers
- [ ] Servers
- [ ] Warehouse Scale Computers
- [ ] Personal Mobile Devices
- [ ] PCs

[topo](#index)


---
## Questão 8

Qual o objetivo de se usar uma hierarquia de memória em computadores?

Escolha uma opção:
- [ ] minimizar o custo
- [ ] compromisso entre desempenho e custo
- [ ] maximizar o desempenho
- [x] compromisso entre desempenho, capacidade e custo
- [ ] compromisso entre capacidade de armazenamento e custo
- [ ] maximizar a capacidade de armazenamento
- [ ] compromisso entre desempenho e capacidade de armazenamento

[topo](#index)


---
## Questão 9

Qual(is) das seguintes afirmações sobre a métrica MIPS é(são) verdadeiras?

Escolha uma ou mais:
- [ ] Dois computadores rodando o mesmo executável com o mesmo MIPS têm o mesmo CPI.
- [x] Dois executáveis (obtidos com o mesmo compilador) que resultam no mesmo MIPS no mesmo computador têm o mesmo CPI.
- [ ] Dois executáveis com o mesmo número de instruções e o mesmo CPI resultam no mesmo MIPS.
- [ ] Um programa que executa num mesmo computador resulta no mesmo MIPS independentemente do compilador escolhido para compilá-lo.

[topo](#index)


---
## Questão 10

_i._ Qual é a faixa de endereços atingíveis pela instrução `j` no MIPS32 (M = 2^20)?

- [x] Endereços dentro de um bloco de 256M, onde o PC fornece os 4 bits mais significativos;
- [ ] Endereços dentro de um bloco de 256M, onde o PC fornece os 6 bits mais significativos;
- [ ] Endereços desde cerca de 256M antes do desvio até 256M depois do desvio.
- [ ] Endereços entre 0 e 256M – 1.
- [ ] Endereços de desde cerca de 128M antes do desvio até 128M depois do desvio.
- [ ] Endereços entre 0 e 128M – 1.
---
_ii._ Qual é a faixa de endereços atingíveis por  instruções de desvio conditional do MIPS32 (K = 2^10)?

- [x] Endereços desde cerca de 128K antes do desvio até 128K depois do desvio. Correto
- [ ] Endereços entre 0 e 128K – 1.
- [ ] Endereços desde cerca de 256K antes do desvio até 256K depois do desvio.
- [ ] Endereços entre 0 e 256K – 1.
- [ ] Endereços de desde cerca de 32K antes do desvio até 32K depois do desvio.
- [ ] Endereços entre 0 e 64K – 1.

[topo](#index)


---
## Questão 11

Qual (is) das seguintes afirmações é(são) verdadeiras?

Escolha uma ou mais:
- [ ] O padrão para memória principal é o uso de SRAM ou DRAM, que são memórias voláteis.
- [ ] O tempo de acesso de uma DRAM é da ordem de dezenas de microsegundos.
- [ ] O tempo de acesso de um HD é da ordem de dezenas de nanosegundos.
- [ ] O tempo de acesso de uma FLASH é da ordem de dezenas de milisegundos.
- [x] O padrão para memória secundária de PCs e Personal Mobile Devices é o uso de memórias não voláteis.

[topo](#index)


---
## Questão 12

Qual(is) das seguintes afimarções é(são) verdadeira(s)?

Escolha uma ou mais:
- [x] SPEC Power_ssj2008 define uma métrica que corresponde a operações por Joule;
- [ ] SPEC Power_ssj2008 define uma métrica que corresponde a operações por Watt;
- [ ] SPEC Power_ssj2008 define uma métrica para desempenho de servidores;
- [ ] SPEC Power_ssj2008 define uma métrica que é a razão entre *throughput* e energia;

[topo](#index)


---
## Questão 13

Qual(is) das seguintes afirmações é(são) verdadeiras?

Escolha uma ou mais:
- [x] Se, no *assembly* x86 de um módulo, todas as instruções são aritméticas ou `je` ou `jne`, então o respectivo código objeto será automaticamente relocável.
- [ ] Se, no *assembly* x86 de um módulo, todas as instruções são aritméticas ou `je` ou `jmp`, então o respectivo código objeto será automaticamente relocável.
- [ ] Nas arquiteturas x86, ARMv7 e MIPS32 nenhuma instrução aritmética pode ter um operando em memória.
- [x] Na arquitetura x86, os endereços relativos ao PC são especificados em *bytes*.

[topo](#index)


---
## Questão 14

_i._ Os programas A e B implementam a mesma tarefa e foram escritos na mesma linguagem. Entretanto, ao rodarem em computadores com o mesmo conjunto de instruções, percebeu-se que o número de instruções de adição executadas é maior para A do que para B quando ambos processam o mesmo volume de dados. Qual é o gargalo mais improvável para a diferença de desempenho desses programas?

Escolha uma opção:
- [x] Os computadores têm diferentes capacidades de memória DRAM.
- [ ] Os executáveis foram obtidos com diferentes opções de compilação.
- [ ] Os programas-fonte implementam algoritmos diferentes.
- [ ] Os executáveis foram obtidos com compiladores diferentes.
---
_ii._ Os programas A e B implementam a mesma tarefa e foram escritos na mesma linguagem. Entretanto, ao rodarem em computadores com o mesmo conjunto deinstruções, percebeu-se que o número de instruções de adição executadas cresce mais para A do que para B conforme aumenta o volume de dados a processar. Qual é o gargalo mais provável para a diferença de desempenho desses programas?

Escolha uma opção:
- [ ] Os executáveis foram obtidos com compiladores diferentes.
- [ ] Os computadores têm diferentes capacidades de memória DRAM.
- [x] Os programas-fonte implementam algoritmos diferentes.
- [ ] Os executáveis foram obtidos com diferentes opções de compilação.

[topo](#index)


---
## Questão 15

Qual(is) das seguintes afirmações é(são) verdadeira(s)?

Escolha uma ou mais:
- [ ] Dois executáveis com o mesmo SPEC ratio executam o mesmo número de instruções.
- [x] Dois computadores com o mesmo SPEC ratio para o mesmo executável têm a mesma razão CPI/f.
- [ ] Dois executáveis com o mesmo SPEC ratio operam na mesma frequência.
- [ ] Dois executáveis com o mesmo SPEC ratio correspondem ao mesmo CPI.
- [x] Dois executáveis com o mesmo SPEC ratio no mesmo computador têm o mesmo produto CPI x I.

[topo](#index)


---
## Questão 16

_i._ Qual opção melhor representa o código compilado para o teste abaixo tendo em vistaque "a" e "b" estão armazenados nos registradores `$s1` e `$s2`?

	if(a!=b){ }
	
```
		beq $s1,$s2,NAO_ENTRA_NAS_CHAVES
```
---
_ii._ Qual opção melhor representa o código compilado para o teste abaixo tendo em vistaque "a" e "b" estão armazenados nos registradores `$s1` e `$s2`?

	if(a>b){ }
	
```
		slt $t0,$s2,$s1
		beq $t0,$zero,NAO_ENTRA_NAS_CHAVES
```
---
_iii._ Qual opção melhor representa o código compilado para o teste abaixo tendo em vistaque "a" e "b" estão armazenados nos registradores `$s1` e `$s2`?

	if(a>=b){ }
	
```
		slt $t0,$s1,$s2
		bne $t0,$zero,NAO_ENTRA_NAS_CHAVES
```

[topo](#index)


---
## Questão 17

_i._ O procedimento abaixo será ligado a outros que obedecem a convenção de chamadas do MIPS32. Nestas condições, qual das seguintes afirmações é verdadeira?

```
f:	sub $t0,$a0,$a3
		sll $v0,$t0,0x1
		add $v0,$a2,$v0
		sub $v0,$v0,$a1
		jr $ra
```
|**Resposta**|nenhuma instrução precisa ser modificada e nenhuma instrução precisa ser incluída.|
|---|---|

---
_ii._ O procedimento abaixo será ligado a outros que obedecem a convenção de chamadas do MIPS32. Nestas condições, qual das seguintes afirmações é verdadeira?

```
f:	addi $sp,$sp,8
		sw $ra,4($sp)
		move $t0,$a2
		jal g
		add $v0,$v0,$t0
		lw $ra,4($sp)
		addi $sp,$sp,-8
		jr $ra
```
|**Resposta**|4 instuções precisam ser modificadas e 2 instruções precisam ser incluída.|
|---|---|
> comentar quais instruções precisam ser incluídas e modificadas



---
_iii._ O procedimento abaixo será ligado a outros que obedecem a convenção de chamadas do MIPS32. Nestas condições, qual das seguintes afirmações é verdadeira?

```
f:	sub $s0,$a0,$a3
		sll $v0,$s0,0x1
		add $v0,$a2,$v0
		sub $v0,$v0,$a1
		jr $ra
```
|**Resposta**|2 instuções precisam ser modificadas e nenhuma instrução precisa ser incluída.|
|---|---|

> comentar quais instruções precisam ser modificadas
---
_iv._ O procedimento abaixo será ligado a outros que obedecem a convenção de chamadas do MIPS32. Nestas condições, qual das seguintes afirmações é verdadeira?

```
f:	addi $sp,$sp,8
		sw $ra,4($sp)
		sw $s0,0($sp)
		move $s0,$a2
		jal g
		add $v0,$v0,$s0
		lw $ra,4($sp)
		lw $s0,0($sp)
		addi $sp,$sp,-8
		jr $ra
```
|**Resposta**|2 instuções precisam ser modificadas e nenhuma instrução precisa ser incluída.|
|---|---|
> comentar quais instruções precisam ser modificadas

[topo](#index)


---
## Questão 18

_i._ O trecho de programa abaixo foi escrito com a intenção de atualizar uma variável compartilhada em um programa paralelo sincronizado. Para que ele funcione como pretende o programador, quantas linhas do programa precisam ser corrigidas?

```
lock:	ll $t1,0($a0)
		beq $t1,$zero,lock
		addi $t0,$zero,1
		sc $t0,0($a0)
		bne $t0,$zero,lock
		lw $t2,0($a1)
		addi $t2,$t2,1
		sw $t2,0($a1)
		sw $0,0($a1)
```
|**Resposta:**|3 linhas|
|---|---|
> reescrever as linhas que precisam ser reescritas aqui

---
_ii._ O trecho de programa abaixo foi escrito com a intenção de atualizar uma variável compartilhada em um programa paralelo sincronizado. Para que ele funcione como pretende o programador, quantas linhas do programa precisam ser corrigidas?

```
lock:	addi $t0,$zero,1
		ll $t1,0($a0)
		sc $t0,0($a0)
		bne $t0,$zero,lock
		beq $t1,$zero,lock		
		lw $t2,0($a1)
		addi $t2,$t2,1
		sw $t2,0($a1)
		sw $0,0($a1)
```
|**Resposta:**|3 linhas|
|---|---|
> reescrever as linhas que precisam ser reescritas aqui

---
_iii._ O trecho de programa abaixo foi escrito com a intenção de atualizar uma variável compartilhada em um programa paralelo sincronizado. Para que ele funcione como pretende o programador, quantas linhas do programa precisam ser corrigidas?

```
lock:	addi $t0,$zero,1
		ll $t1,0($a0)
		sc $t0,0($a0)
		beq $t0,$zero,lock		
		bne $t1,$zero,lock
		lw $t2,0($a1)
		addi $t2,$t2,1
		sw $t2,0($a1)
		sw $0,0($a1)
```
|**Resposta:**|1 linhas|
|---|---|
> reescrever as linhas que precisam ser reescritas aqui

---
_iv._ O trecho de programa abaixo foi escrito com a intenção de atualizar uma variável compartilhada em um programa paralelo sincronizado. Para que ele funcione como pretende o programador, quantas linhas do programa precisam ser corrigidas?

```
lock:	addi $t0,$zero,1
		ll $t1,0($a0)
		sc $t0,0($a0)
		bne $t0,$zero,lock
		beq $t1,$zero,lock		
		lw $t2,0($a1)
		addi $t2,$t2,1
		sw $t2,0($a1)
		sw $0,0($a1)
```
|**Resposta:**|2 linhas|
|---|---|
> reescrever as linhas que precisam ser reescritas aqui

[topo](#index)


---
## Questão 19

_i._ Cada uma das alternativas abaixo é uma sequência de instruções nativas do MIPS32,onde as variáveis escalares foram alocadas em `$s0` e `$s1`. Os endereços-base de A e B - que são arranjos do tipo `int`- foram alocados em `$s6` e `$s7`, respectivamente. Qualdelas implementa a atribuição `f = g + A[0] + B[4]`, escrita na linguagem C?

```
	lw $t0,16($s7)
	lw $t1,0($s6)
	add $s0,$t1,$t0
	add $s0,$s1,$s0
```
---
_ii._ Cada uma das alternativas abaixo é uma sequência de instruções nativas do MIPS32,onde as variáveis escalares foram alocadas em `$s0` e `$s1`. Os endereços-base de A e B - que são arranjos do tipo `int` - foram alocados em `$s6` e `$s7`, respectivamente. Qual delas implementa a atribuição `A[B[g]+1] = f`, escrita na linguagem C?

```
	sll $t0,$s1,2
	add $t0,$t0,$s7
	lw $t1,0($t0)
	sll $t2,$t1,2
	add $t3,$t2,$s6
	sw $s0,4($t3)
```
---
_iii._ Cada uma das alternativas abaixo é uma sequência de instruções nativas do MIPS32,onde as variáveis escalares foram alocadas em `$s0` e `$s1`. Os endereços-base de A e B - que são arranjos do tipo `int` - foram alocados em `$s6` e `$s7`, respectivamente. Qual delas implementa a atribuição `B[A[4]] = g + f` escrita em linguagem C?

```
	add $t1,$s1,$s0
	lw $t0,16($s6)
	sll $t0,$t0,2
	add $t0,$t0,$s7
	sw $t1,0($t0)
```
---
_iv._ Cada uma das alternativas abaixo é uma sequência de instruções nativas do MIPS32,onde as variáveis escalares foram alocadas em `$s0` e `$s1`. Os endereços-base de A e B - que são arranjos do tipo `int` - foram alocados em `$s6` e `$s7`, respectivamente. Qual delas implementa a atribuição `f = A[B[g]+1]`, escrita em linguagem C?

```
	sll $t0,$s1,2
	add $t0,$t0,$s7
	lw $t1,0($t0)
	sll $t2,$t1,2
	add $t3,$t2,$s6
	lw $s0,4($t3)
```
---
_v._ Cada uma das alternativas abaixo é uma sequência de instruções nativas do MIPS32,onde as variáveis escalares foram alocadas em `$s0` e `$s1`. Os endereços-base de A e B - que são arranjos do tipo `int` - foram alocados em `$s6` e `$s7`, respectivamente. Qual delas implementa a atribuição `A[0] = g + f + B[4]`, escrita em linguagem C?

```
	lw $t0,16($s7)
	add $t0,$s1,$t0
	add $t1,$s0,$t0
	sw $t1,0($s6)
```
---
_vi._ Cada uma das alternativas abaixo é uma sequência de instruções nativas do MIPS32,onde as variáveis escalares foram alocadas em `$s0` e `$s1`. Os endereços-base de A e B - que são arranjos do tipo `int` - foram alocados em `$s6` e `$s7`, respectivamente. Qual delas implementa a atribuição `f = A[g] + B[1] `, escrita em linguagem C?

```
	sll $t0,$s1,2
	add $t0,$t0,$s6
	lw $t1,0($t0)
	lw $t2,4($s7)
	add $s0,$t1,$t2
```
---
_vii._ Cada uma das alternativas abaixo é uma sequência de instruções nativas do MIPS32,onde as variáveis escalares foram alocadas em `$s0` e `$s1`. Os endereços-base de A e B - que são arranjos do tipo `int` - foram alocados em `$s6` e `$s7`, respectivamente. Qual delas implementa a atribuição `A[g] = f + B[1] `, escrita em linguagem C?

```
	sll $t0,$s1,2
	add $t0,$t0,$s6
	lw $t2,4($s7)
	add $t1,$s0,$t2
	sw $t1,0($t0)
```

[topo](#index)


---
## Questão 20

Em qual(is) das alternativas abaixo é automaticamente relocável o código-objeto?

Escolha uma ou mais: 
```
here: 	beq $s0, $s2, there
		…
there: 	add $s0, $s1, $s2
```
```
here: 	bne $s0,$s2,skip
		la $t0,there
		jr $t0
skip: …
there: add $s0,$s1,$s2
```

[topo](#index)


---
## Questão 21

_i._ Cada uma das alternativas abaixo é uma sequência de instruções nativas do MIPS32. Qual delas implementa a atribuição `f = g - ( f + 5 )`, escrita na linguagem C?

```
	addi $s0,$s0,5
	sub $s0,$s1,$s0
```
---
_ii._ Cada uma das alternativas abaixo é uma sequência de instruções nativas do MIPS32. Qual delas implementa a atribuição `f = g + ( f + 5 )`, escrita na linguagem C?

```
	addi $s0,$s0,5
	add $s0,$s1,$s0
```
---
_iii._ Cada uma das alternativas abaixo é uma sequência de instruções nativas do MIPS32. Qual delas implementa a atribuição `f = g + ( h - 5 )`, escrita na linguagem C?

```
	addi $s0,$s2,0xFFFB
	sub $s0,$s0,$s1
```

[topo](#index)


---
## Questão 22

_i._ De qual dos códigos em linguagem de alto nível veio o código em linguagem de montador abaixo?

```
Loop:	sll $t1, $s0, 2
		add $t1, $t1, $s1
		lw $t0, 0($t1)
		slt $t2, $t0, $zero
		bne $t2, $zero, Exit
		addi $s0, $s0, 1
		j Loop
Exit:	...
```
|**Resposta:**|`while (array[i] >= 0){ i++; }`|
|---|---|

---
_ii._ De qual dos códigos em linguagem de alto nível veio o código em linguagem de montador abaixo?

```
Loop:	sll $t1, $s0, 2
		add $t1, $t1, $s1
		lw $t0, 0($t1)
		slt $t2, $zero, $t0
		beq $t2, $zero, Exit
		addi $s0, $s0, 1
		j Loop
Exit:	...
```
|**Resposta:**|`while (array[i] > 0){ i++; }`|
|---|---|

[topo](#index)


---
