# Laboratório 4

## Questão 1
Adapte o programa em `experimento1.asm` para um arranjo com 6 elementos iguais a 3 (**N = 6**), onde cada elemento ocupa 4 *bytes* (**.word**). Responda:

 * Antes de executar o programa, a palavra no endereço **0x10010000** é: `0x00000003`;
 * Quando `j loop1` executa pela **segunda** vez, o conteúdo de `$t2` é: `0x10010004`;
 * Quando a instrução `jr $ra` executa, o conteúdo de `$t2` é: `0x10010014`;

Adapte o programa em `experimento2.asm` para um arranjo com 6 elementos iguais a 3 (**N = 6**), onde cada elemento ocupa 4 *bytes* (**.word**). Responda:

 * Quando a instrução cujo endereço simbólico é `loop2` executa, o conteúdo de `$t2` é: `0x10010018`;
 * Quando `j loop1` executa pela **terceira** vez, o conteúdo de `$t0` é: `0x1001000C`;

---
## Questão 2

Adapte o programa em `experimento1.asm` para um arranjo com 4 elementos iguais a 3 (**N = 4**) de forma que cada elemento ocupe 2 *bytes* (trocando .word por **.half** em `_array`). Você não deve alterar a estrutura do programa, mas será necessário editar **duas** de suas instruções para adaptá-lo ao novo tipo de dado. Teste seu novo programa. Quando você tiver verificado que ele exibe o resultado esperado, responda: 

 * Antes de executar o programa, a palavra no endereço **0x10010000** é: `0x00030003`;
 * Quando `j loop1` executa pela segunda vez, o conteúdo de `$t2` é: `0x10020002`;
 * Quando a instrução `jr $ra` executa, o conteúdo de `$t2` é: `0x10010006`;

Adapte o programa em `experimento2.asm` para um arranjo com 4 elementos iguais a 3 (**N = 4**) de forma que cada elemento ocupe 2 *bytes* (trocando .word por **.half** em `_array`). Você não deve alterar a estrutura do programa, mas será necessário editar **três** de suas instruções para adaptá-lo ao novo tipo de dado. Teste seu novo programa. Quando você tiver verificado que ele exibe o resultado esperado, responda:

* Quando a instrução cujo endereço simbólico é `loop2` executa, o conteúdo de `$t2` é: `0x10010008`;
* Quando a instrução `j loop2` executa pela **segunda** vez, o valor em `$t0` é: `0x10010004`;

---
## Questão 3

Suponha agora que fôssemos executar os Experimentos 1 e 2, mas agora para um arranjo com **N=10.000** elementos. Responda:

 * O número total de instruções executadas pela *procedure* `clear1` seria: **70004**;
 * O número total de instruções executadas pela *procedure* `clear2` seria: **50006**;
>Importante ressaltar que nesta questão deve-se colocar dois *breakpoints* para o uso do contador de intruções nativo do MIPS, um na linha `clear1:   addi $t0,$0,0` e outro na linha `li  	$v0,10`, sendo a primeira a linha de chamada do procedimento e a segunda a instrução apontada por `$ra`
