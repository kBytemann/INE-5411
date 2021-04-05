# Laboratório 5

## Questão 1
Copie o arquivo `experimento1-codigo-base.asm` (fornecido) para um arquivo `experimento1.asm`, monte-o e insira *breakpoints* nas instruções identificadas por `MARCA1` e `MARCA2`. Execute-o e observe o conteúdo de $a1 nos seguintes instantes:

* Quando a `MARCA1` é atingida pela **primeira** vez.
> quando o código executa a instrução com a *label* de `MARCA1`, `$a1` possui valor de `0x0000000A` ou 10
* Quando a `MARCA1` é atingida pela **segunda** vez.
> quando da segunda vez, `$a1` ainda possui o avlor anterior
* Quando a `MARCA2` é atingida pela **primeira** vez.
> quando o procedimento `swap` é invocado, o segundo argumento passado a ele, em `$a1 = 0x0000000A`, que deveria ser o termo a sofrer permuta com o seguinte não é passado corretamente.


Neste cenário, qual(is) das seguintes afirmações é (são) verdadeira(s)?

Escolha uma ou mais:
 - [X] a. Quando a *procedure* **sort** foi chamada, o valor do argumento **n** foi-lhe passado corretamente.
- [ ] b. Quando a *procedure* **sort** foi chamada, o valor do argumento **n** foi-lhe passado incorretamente.
- [ ] c. Quando a *procedure* **swap** foi chamada, o valor do argumento **j** foi-lhe passado corretamente.
- [X] d. Quando a *procedure* **swap** foi chamada, o valor do argumento **j** foi-lhe passado incorretamente.
- [ ] e. Na primeira iteração do laço externo, o laço interno não foi executado devido a um erro no programa.
---

## Questão 2
Copie o arquivo `experimento1.asm` para um novo arquivo `experimento2.asm`. Neste novo arquivo, inclua uma instrução 

```
		move $a1,$s1
```
imediatamente antes da instrução identificada pela **MARCA 2**. Salve-o, monte-o e insira *breakpoints* nas instruções identificadas por `MARCA1` e `MARCA2`. Execute-o e observe o conteúdo de `$a1` nos seguintes instantes:
 * Quando a `MARCA1` é atingida pela **primeira** vez.
> `$a1 = 0x0000000A`, até aqui de acordo com o esperado;
 * Quando a `MARCA1` é atingida pela **segunda** vez.
> `$a1` continua com o valor acima;
 * Quando a `MARCA2` é atingida pela **primeira** vez.
> `$a1 = 0x00000000`, ou seja o valor de `$a1` = **j** está correto, mas o valor anterior não foi preservado (valor de **n**);


Neste cenário, qual(is) das seguintes afirmações é (são) verdadeira(s)?

Escolha uma ou mais:
- [X] a. Quando a *procedure* **swap** foi chamada, o valor do argumento **j** foi-lhe passado corretamente.
- [ ] b. Quando a *procedure* **swap** foi chamada, o valor do argumento **j** foi-lhe passado incorretamente.
- [X] c. Quando se continua a executar o programa até ele **terminar**, percebe-se que apenas 2 iterações do laço externo foram efetivamente executadas, porque o parâmetro **n** não foi preservado através da chamada de **swap**.
- [ ] d. Quando se continua a executar o programa até ele **terminar**, percebe-se que apenas 2 iterações do laço externo foram efetivamente executadas, porque registradores incorretos foram usados para passar parâmetros a **swap**.
---

## Questão 3
Copie o arquivo `experimento2.asm` para um novo arquivo `experimento3.asm`. Neste novo arquivo, inclua uma instrução
```
		move $s3, $a1
```
imediatamente antes da instrução identificada pela `MARCA0`. Agora modifique a instrução que é sucessora imediata da `MARCA1` para
```
		slt $t0,$s0,$s3
```

Salve o novo arquivo, monte-o e execute-o. A *procedure* ***sort***
agora deve estar funcionando corretamente. (Se ela não produziu o resultado esperado, você cometeu algum erro ao inserir as novas instruções solicitadas neste experimento ou no anterior. Neste caso, revise o código obedecendo rigorosamenteas especificações até obter o funcionamento correto). 
Agora que a *procedure* **sort** está funcionando corretamente, faça o ***reset* das condições iniciais de simulação** (opção `Run` → `Reset` ou F12) e insira *breakpoints* nas instruções identificadas por `MARCA3` e `MARCA4`. Execute o programa e observe o conteúdo de `$s3` nos seguintes instantes:

 * Quando a `MARCA3` é atingida.
> `$s3 = 0x000007E3 = 2019`
 * Quando a `MARCA4` é atingida.
> `$s3 = 0x0000000A`

> A função executa como esperado de um algoritmo de *sorting*, contudo não preserva os valores dos regitradores `$s0` a `$s7` quando a função `sort` é chamada, sendo isso uma violação da convenção de chamada.

Neste cenário, qual(is) das seguintes afirmações é (são) verdadeira(s)?

Escolha uma ou mais:
- [ ] a. A *procedure* **main** produz corretamente o valor esperado para o registrador `$t1`.
- [ ] b. A *procedure* **sort** interferiu no correto funcionamento da procedure **main**, mas bastaria substituir todas as ocorrências de `$s3` por `$t0` na *procedure* **main** para corrigir o problema.
- [ ] c. A *procedure* **main** não funciona corretamente porque não obedece à convenção de chamada.
- [X] d. A *procedure* **main** não funciona corretamente porque a *procedure* **sort** não obedece à convenção de chamada.
---

## Questão 4
Copie o arquivo `experimento3.asm` para um novo arquivo `experimento4.asm`. Neste novo arquivo, insira o número **mínimo**
de instruções necessárias e suficientes para preservar o valor de `$s3` através da chamada da *procedure* **sort** (você **não** pode remover instruções pré-existentes). Salve o novo arquivo e monte-o. Insira um *breakpoint* na instrução identificada pela `MARCA5` e execute o programa.
Neste cenário, qual(is) das seguintes afirmações é (são) verdadeira(s)?

Escolha uma ou mais:
- [ ] a. O valor de `$t1` quando a `MARCA5` é atingida é 2019.
- [X] b. O valor de `$t1` quando a `MARCA5` é atingida é 2020.
> ```
> 		addi $t1, $s3, 1
> ```
> Como há a soma de 1 ao valor original de `$s3`, o valor final lido em `$t1`(que agora carrega o valor de `$s3`) é de `0x000007E4 = 2020`;


- [X] c. Para preservar `$s3` com o mínimo número de instruções adicionais basta inserir 2 novas instruções nativas e modificar operandos de 2 outras instruções pré-existentes.
>|Experimento 3|Experimento 4|
>|:---|:---|
>|`addi $sp,$sp,-12`|`addi $sp,$sp,-16`|
>|-|`sw   $s3,12($sp)`|
>|-|`lw   $s3,12($sp)`|
>|`addi $sp,$sp,12`|`addi $sp,$sp,16`|
- [ ] d. Para preservar `$s3` com o mínimo número de instruções adicionais é necessário inserir 4 novas instruções nativas, mas não é necessário fazer quaisquer outras modificações.
---

## Questão 5
Copie o arquivo `experimento4.asm` para um novo arquivo `experimento5.asm`. Neste novo arquivo, modifique duas instruções da *procedure* **swap**: substitua as duas ocorrências do registrador `$t2` por `$a0`. Salve o novo arquivo, monte-o e execute-o.
Neste cenário, qual(is) das seguintes afirmações é (são) verdadeira(s)?

Escolha uma ou mais:
- [ ] a. O programa não executou corretamente porque a *procedure* **swap**, após as modificações, passou a não mais obedecer a convenção de chamada.
- [X] b. O programa não executou corretamente porque a *procedure* **sort** ainda não obedece plenamente a convenção de chamada.
> os valores de `$a0` e `$a1` não são devidamente armazenados de maneira que eles possam ser reconstituídos após a invocação da função `swap`;
- [X] c. O programa não executou corretamente porque uma instrução da *procedure* **sort** causou uma exceção.
> O MARS tenta aessar o endereço apontado por `$t2`, que após a instrução 
> ```
> add $t2,$a0,$t1
> ```
> armazena um valor incoerente pois não se respeitou a convenção de chamadas e armazenamento de registradores na pilha; 
- [ ] d. O programa não executou corretamente porque uma instrução da *procedure* **swap** causou uma exceção.
---

## Questão 6
Copie o arquivo `experimento5.asm` para um novo arquivo
`experimento6.asm`. Neste novo arquivo, insira a instrução 
```
		move $s2, $a0
```
imediatamente antes da instrução identificada pela `MARCA0` e insira a instrução
```
		move $a0,$s2
```
imediatamente antes da instrução identificada pela `MARCA2`. Agora, para que a *procedure* **sort** volte a executar sem erros, falta modificar o operando de uma única instrução. Identifique-a e modifique-a adequadamente. Salve o novo arquivo, monte-o e execute-o.
Neste cenário, qual(is) das seguintes afirmações é (são) verdadeira(s)?
> * **Experimento 5**
> ```
> for2tst:	slti $t0,$s1,0  
>  		bne  $t0,$zero,exit2 
>  		sll  $t1,$s1,2   
>  		add  $t2,$a0,$t1 
> ```
>  * **Experimento 6**
> ```
> for2tst: 	slti $t0,$s1,0  
>			bne  $t0,$zero,exit2 
>			sll  $t1,$s1,2   
>			add  $t2,$s2,$t1
> ```
> O valor do endereço base do vetor está em `$s2` e não mais em `$a0`, por isso deve ser subtituído nesta instrução
> > Nem todos os registradores são deviadamente armazenados na pilha de maneira que se atenda a convenção de chamada, pelo menos assim o é com a função **sort**, já que como função chamadora, ela deveria ser responsável por salvar os valores dos registradores `$a0` ~ `$a3`, o que não se observa;
> > A função **swap** por sua vez, como não faz uso de registradores `$s(x)`, não infringe a convenção de chamada;
> > Ainda assim o programa entrega o resultado esperado; 


Escolha uma ou mais:
- [ ] a. A *procedure* **sort** produz corretamente o resultado esperado e obedece plenamente a convenção de chamada.
- [X] b. A *procedure* **sort** produz corretamente o resultado esperado, mas ainda não obedece plenamente a convenção de chamada.
- [X] c. A *procedure* **swap** produz corretamente o resultado esperado e obedece plenamente à convenção de chamada.
- [ ] d. A *procedure* **swap** produz corretamente o resultado esperado, mas ainda não obedece plenamente à convenção de chamada.
- [ ] e. Pode-se concluir deste experimento que, quando uma *procedure* não obedece à convenção de chamada, o programa onde ela é invocada certamente executa de forma incorreta.
- [X] f. Pode-se concluir deste experimento que, quando uma *procedure* não obedece à convenção de chamada, o programa onde ela é invocada pode executar corretamente.
