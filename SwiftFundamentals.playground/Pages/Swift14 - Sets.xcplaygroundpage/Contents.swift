//: [Previous](@previous)

import Foundation

// Coleção parecido com array mas não permite valores repetidos.
var newSet: Set<Int> = []
newSet.insert(10)
newSet.insert(3)
newSet.insert(10)

print(newSet)

//Check
let response = newSet.insert(4)
print(response)
print(newSet)

//Verficar se contem o elemento
print(newSet.contains(3))

// Remover o elemento

if let removed = newSet.remove(4){
    print(newSet)
    print(removed)
}

//Limpar a lista inteira
newSet.removeAll()
print(newSet)

