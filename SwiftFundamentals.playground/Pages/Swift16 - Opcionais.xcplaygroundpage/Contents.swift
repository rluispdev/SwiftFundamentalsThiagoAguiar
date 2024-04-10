//: [Previous](@previous)

import Foundation

 
func mengaSenaGenerator4(total: Int?, maxNumber: Int?) -> Set<Int>{
    var numbers = total ?? 6
    var result: Set <Int> = []
    
    while(numbers > 0){
        ///if let
        if let max = maxNumber{
            let generated = Int.random(in: 1...max) //Gerar numbers aleatorio de 1 a 60.
            let res  = result.insert(generated)
            if (res.inserted){ //Bool
                numbers = numbers - 1
            }
        }else{
            break
        }
    }
    return result
}
//1/ OPTIONALS (consegue especifcar valores padroes (defauts).
var maxNumber: Int?
maxNumber = nil

 let res1 = mengaSenaGenerator4(total: nil, maxNumber: maxNumber)
print(res1)

//2. - Force-unwrap | Retirar o valor de dentro do opcional.
//3. - IF LET | Garantir uma condição se realmente tem o valor dentro do opcional (if let).

var username: String? = nil

if let username = username {
    let chars = username.count
    print("Quantidade de caracters: \(chars)")
} else{
    print("O valor do nome está nulo.")
}

///Forma mais enxuta.
var username2: String? = "Rafael"

if let chars = username2?.count {
    print("Quantidade de caracters: \(chars)")
} else{
    print("O valor do nome está nulo.")
}


//Resumindo

//1. Poder ter valor padrão
//2. Descompactar = Force Uwrraping
//3. Descompactar Seguro.

