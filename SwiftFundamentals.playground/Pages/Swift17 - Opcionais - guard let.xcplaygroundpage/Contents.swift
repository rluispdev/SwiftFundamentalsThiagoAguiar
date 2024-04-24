//: [Previous](@previous)

import Foundation
 
//Caso: Buscar um produto dentro de BD atraves do id.

func fetchProductById(id: Int) -> String{
    let dict = [
        1: "iPhone",
        2: "Macbook",
        3: "iPad"
    ]
    guard let product = dict[id] else { return "Esse valor não exsite."
    }
    return product
}
print(fetchProductById(id: 3))


 
