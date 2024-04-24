//: [Previous](@previous)

import Foundation
 

//MARK: Loop For

//Sequenciais( Ranges)
let range = 0...5 // Inclusive
let r = 0..<5 //Exclusive


var limit = 5
let rg = 0..<limit

//For é controlado pelo range.

var sum = 0
let count = 10

for i in 1...count {
    sum += i
}
print(sum)

// Ignorar o índex i fazemos dessa forma
for _ in 1...count {
    print("Neymar")
}

//Fazer comparacão no for usando where.
for _ in 1...count where count > 56 {
    print("Luis Fabiano")
}

//Módulo, é o resto da divisão.

for i in 0...count where i % 2 == 0 {
    print("Index is \(i)")
}


