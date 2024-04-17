//: [Previous](@previous)

import Foundation


//FUNÇÃO CLÁSSICA - SIMPLES,    TRADICIONAL
func getFullName(firstName: String, lastName: String) -> String{
    return firstName + " " + lastName
}
    let fullname = getFullName(firstName: "Tiago", lastName: "Aguiar")
    print(fullname)

//FUNCÃO COM VALOR PADRÃO
func getFullNameDefault(firstName: String, lastName: String = "Desconhecido") -> String {
    return firstName + " " + lastName
}

let fullnamedefault = getFullNameDefault(firstName: "Rafael")
print(fullnamedefault)


//NÃO DEFINIR O NOME DO ARGUMENTO
func getFullNameNotArgument(_ firstName: String, _ lastName: String) -> String{
    return firstName + " " + lastName
}
let fullnamenotarguemnt = getFullNameNotArgument("Rafael", "Gonzaga")
print(fullnamenotarguemnt)

//APELIDO PARA OS PARÂMETRO

func getFullNameApelido(name firstName: String, lastName: String) -> String {
    return firstName + " " + lastName
}
let fullnameapelido = getFullNameApelido(name: "Rafael", lastName: "Luis")
print(fullnameapelido)

