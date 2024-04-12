//: [Previous](@previous)

import Foundation
 
//Caso: Buscar um produto dentro de BD atraves do id.

func fetchProductById(id: Int) -> String{
    
    ///Simulando BD
    let dict = [
        1: "iPhone",
        2: "Macbook",
        3: "iPad"
    ]
    
//    if let product = dict[id]{
//        return product
//    }
//    ///Não precisa usar o else nesse caso.
//    return "Esse valor não exsite."
//}
//
//print(fetchProductById(id: 12))


    //Guard Let
    
    guard let product = dict[id] else { return "Esse valor não exsite."
    }
    return product
}
print(fetchProductById(id: 3))


 
