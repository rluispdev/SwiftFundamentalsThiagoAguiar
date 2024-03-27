//: [Previous](@previous)

import Foundation


let isHungry = true
let  isThisty = false


if isHungry {
    print("Estou com fome!")
} else  if isThisty {
    print("E com sede!")
} else {
    print("Estou sem fome!")
}


//Escopo do Bloco

var product: String

let company = "Apple"

if company == "Google" {
    product = "Android"
}else{
    product = "iPhone"
}
    
print(product)


//IF ELSE -> Operador Ternário
product = company == "Google" ? "Android" : "Iphone"
print(product)
