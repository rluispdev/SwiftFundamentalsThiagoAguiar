//: [Previous](@previous)

import Foundation

//Caso: Criar uma func que aplaica um desconto em um determinado produto.

func discount (productID: Int) -> Double {
    switch productID {
        case 1:
            return 0.2
        case 2:
            return 0.4
        default:
            return 0.0
    }
}

let d = discount(productID: 2)
print("desconto \(Int(d * 100))%")

 
var message = ""
func printProduct(name: String){
    switch name {
        case "iPhone", "Ipad":
            message = "Produto usando o S.O. do iOS"
            break
        case "Motorola":
            message = "Produto usando o S.O. do Android"
            break
        default:
            message = "Produto não encontrado."
            break
    }
    print(message)
}

 printProduct(name: "Ipad")
 


