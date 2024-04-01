//: [Previous](@previous)

import Foundation

//DRY - Don't reapeat yourself - Não repita a si próprio.
/*
 While CONDICAO {
  BLOCO DE LOOPING
 }
 */

//Com o While ele checa PRIMEIRO a condição.
var i = 1

while i < 10 {
    print(i)
    i += 1
}

print("Nova contagem")

//Com Repeat, ele faz primeiro uma instrução depois ele checa a condição
i = 1
repeat{
    print(i)
    i += 1
}while(i < 10)

 //Em outras liguagens é chamado de do, while.
