//: [Previous](@previous)

import Foundation
 
var numbers = 6
var result: Set <Int> = []

while(numbers > 0){
    let generated = Int.random(in: 1...60) //Gerar numbers aleatorio de 1 a 60.
    let res  = result.insert(generated)
    
    if (res.inserted){ //Bool
        numbers = numbers - 1
        print(result)
    }
}

// Funções -> Blocos de códigos que podemos reutilizar em outras partes do projeto.

func mengaSenaGenerator() {
    var numbers = 6 ///Hard Code
    var result: Set <Int> = []
    
    while(numbers > 0){
        let generated = Int.random(in: 1...60) //Gerar numbers aleatorio de 1 a 60.
        let res  = result.insert(generated)
        
        if (res.inserted){ //Bool
            numbers = numbers - 1
            print(result)
        }
    }
}

mengaSenaGenerator()

print("_______________")

// Func podem receber paramentros.
func mengaSenaGenerator2(total: Int) {
    var numbers = total
    
    var result: Set <Int> = []
    
    while(numbers > 0){
        let generated = Int.random(in: 1...60) //Gerar numbers aleatorio de 1 a 60.
        let res  = result.insert(generated)
        
        if (res.inserted){ //Bool
            numbers = numbers - 1
            print(result)
        }
    }
}

mengaSenaGenerator2(total: 10)

print("_______________")

func mengaSenaGenerator3(total: Int, maxNumber: Int) {
    var numbers = total
    
    var result: Set <Int> = []
    
    while(numbers > 0){
        let generated = Int.random(in: 1...maxNumber) //Gerar numbers aleatorio de 1 a 60.
        let res  = result.insert(generated)
        
        if (res.inserted){ //Bool
            numbers = numbers - 1
            print(result)
        }
    }
}

mengaSenaGenerator3(total: 7, maxNumber: 38)

print("_______________")


//Retornar valor
func mengaSenaGenerator4(total: Int, maxNumber: Int) -> Set<Int>{
    var numbers = total
    
    var result: Set <Int> = []
    
    while(numbers > 0){
        let generated = Int.random(in: 1...maxNumber) //Gerar numbers aleatorio de 1 a 60.
        let res  = result.insert(generated)
        
        if (res.inserted){ //Bool
            numbers = numbers - 1
        }
    }
    return result
}

 let res1 = mengaSenaGenerator4(total: 6, maxNumber: 60)
print(res1)

let res2 = mengaSenaGenerator4(total: 8, maxNumber: 60)
print(res2)

//Quando quisermos trabalhor com o valor criamos um retunar
