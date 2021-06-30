# Book exercises

## Index

<center>

|Aula|Páginas do livro|Exercícios||Aula|Páginas do livro|Exercícios||
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
|AEX01|3 ~ 26|-||AEX14|||
|AEX02|A1 ~ A9; 123 ~ 126|-||AEX15|||
|AEX03|62 ~ 73|2.7, 2.9, 2.12, 2.14, 2.15, 2.17, 2.18||AEX16|||
|AEX04|87 ~ 96|2.19, 2.21, 2.22, 2.26||AEX17|||
|AEX05|96 ~ 102 |2.19, 2.21, 2.22, 2.26||AEX18|||
|AEX06||||AEX19|||
|AEX07||||AEX20|||
|AEX08||||AEX21|||
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
