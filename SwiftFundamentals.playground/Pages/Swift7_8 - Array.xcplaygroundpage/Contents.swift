//: [Previous](@previous)

import Foundation

var  userNames: [String] = []

userNames.append("Rafael")

userNames += ["Steve", "Elen"]
 
print(userNames)

let name = userNames
let nameString = userNames.joined(separator: ", ")
print(nameString)

//Acessar atraves do Range, Fatiar (Slice)
let firstThree = userNames[1...2]
firstThree[1]

//Criar um novo array depois do Slice.
let secondThree = Array(userNames[1...2])
secondThree[0]

//Adicionar Elementos
userNames.append("novo Registro")

//Remover elementos
 userNames.removeAll()


// Funções de condições dos arrays.
userNames.isEmpty // Verificar lista vazia
userNames.count // Verificar tamanho da lista
userNames.contains("Rafael") //Verificar se a lista contem algum elemento.
if let first = userNames.first {
    print(first)
}

// Inserir no index X
userNames.insert("Luis", at: 0)

//Remover no index X
userNames.remove(at: 0)
userNames.removeLast() // Remover o ultimo.
userNames

//Trocar elementos da lista por Slice.
userNames[0...1] = ["NOVO1", "NOVO2", "NOVO3"]
userNames

//Trocar por indice
userNames.swapAt(0, 1)

