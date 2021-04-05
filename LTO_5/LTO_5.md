# Laboratório 5

## Questão 1
Copie o arquivo `experimento1-codigo-base.asm` (fornecido) para um arquivo `experimento1.asm`, monte-o e insira *breakpoints* nas instruções identificadas por `MARCA1` e `MARCA2`. Execute-o e observe o conteúdo de $a1 nos seguintes instantes:

* Quando a `MARCA1` é atingida pela **primeira** vez.
* Quando a `MARCA1` é atingida pela **segunda** vez.
* Quando a `MARCA2` é atingida pela **primeira** vez.


Neste cenário, qual(is) das seguintes afirmações é (são) verdadeira(s)?

Escolha uma ou mais:
 - [X] a. Quando a procedure **sort** foi chamada, o valor do argumento **n** foi-lhe passado corretamente.
- [ ] b. Quando a procedure **sort** foi chamada, o valor do argumento **n** foi-lhe passado incorretamente.
- [ ] c. Quando a procedure **swap** foi chamada, o valor do argumento **j** foi-lhe passado corretamente.
- [X] d. Quando a procedure **swap** foi chamada, o valor do argumento **j** foi-lhe passado incorretamente.
- [ ] e. Na primeira iteração do laço externo, o laço interno não foi executado devido a um erro no programa.
---

## Questão 2
Copie o arquivo `experimento1.asm` para um novo arquivo `experimento2.asm`. Neste novo arquivo, inclua uma instrução 

```
		move $a1,$s1
```
imediatamente antes da instrução identificada pela **MARCA 2**. Salve-o, monte-o e insira *breakpoints* nas instruções identificadas por `MARCA1` e `MARCA2`. Execute-o e observe o conteúdo de `$a1` nos seguintes instantes:
 * Quando a `MARCA1` é atingida pela **primeira** vez.
 * Quando a `MARCA1` é atingida pela **segunda** vez.
 * Quando a `MARCA2` é atingida pela **primeira** vez.

Neste cenário, qual(is) das seguintes afirmações é (são) verdadeira(s)?

Escolha uma ou mais:
- [X] a. Quando a procedure **swap** foi chamada, o valor do argumento **j** foi-lhe passado corretamente.
- [ ] b. Quando a procedure **swap** foi chamada, o valor do argumento **j** foi-lhe passado incorretamente.
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
 * Quando a `MARCA4` é atingida.

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
- [X] c. Para preservar `$s3` com o mínimo número de instruções adicionais basta inserir 2 novas instruções nativas e modificar operandos de 2 outras instruções pré-existentes.
- [ ] d. Para preservar `$s3` com o mínimo número de instruções adicionais é necessário inserir 4 novas instruções nativas, mas não é necessário fazer quaisquer outras modificações.
---

## Questão 5
Copie o arquivo `experimento4.asm` para um novo arquivo `experimento5.asm`. Neste novo arquivo, modifique duas instruções da *procedure* **swap**: substitua as duas ocorrências do registrador `$t2` por `$a0`. Salve o novo arquivo, monte-o e execute-o.
Neste cenário, qual(is) das seguintes afirmações é (são) verdadeira(s)?

Escolha uma ou mais:
- [ ] a. O programa não executou corretamente porque a *procedure* **swap**, após as modificações, passou a não mais obedecer a convenção de chamada.
- [X] b. O programa não executou corretamente porque a *procedure* **sort** ainda não obedece plenamente a convenção de chamada.
- [X] c. O programa não executou corretamente porque uma instrução da *procedure* **sort** causou uma exceção.
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

Escolha uma ou mais:
- [ ] a. A *procedure* **sort** produz corretamente o resultado esperado e obedece plenamente a convenção de chamada.
- [X] b. A *procedure* sort produz corretamente o resultado esperado, mas ainda não obedece plenamente a convenção de chamada.
- [X] c. A *procedure* **swap** produz corretamente o resultado esperado e obedece plenamente à convenção de chamada.
- [ ] d. A *procedure* **swap** produz corretamente o resultado esperado, mas ainda não obedece plenamente à convenção de chamada.
- [ ] e. Pode-se concluir deste experimento que, quando uma *procedure* não obedece à convenção de chamada, o programa onde ela é invocada certamente executa de forma incorreta.
- [X] f. Pode-se concluir deste experimento que, quando uma *procedure* não obedece à convenção de chamada, o programa onde ela é invocada pode executar
corretamente.
