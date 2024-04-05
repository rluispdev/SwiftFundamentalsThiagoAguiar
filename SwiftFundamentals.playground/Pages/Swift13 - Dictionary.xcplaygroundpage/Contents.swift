//: [Previous](@previous)

import Foundation

var products: [String: Int] = [:]

products["Apple"] = 5
products["Google"] = 16

print(products)

//Acessar um Dict Inicializado
var products2: [ Int : String] = [
    1: "Fone de ouvido",
    2: "Macbook",
    3: "Impressora",
    4: "iPhone"
]

print(products2[4] ?? "Produto não encontrado!")

//Atualizar um dict
products2[2] = "Macmini"
print(products2[2])

//Contar elementos
print(products2.isEmpty)
print(products2.count)

//Remover
products2[2] = nil
print(products)

//Buscar todas as chaves
for key in products2.keys{
    print(key)
}

//Buscar todos os valores
for val in products2.values{
    print(val)
}

//Buscando a chave e o valor
for (key, value) in products2 {
    print("chave: \(key), valor: \(value)")
}
