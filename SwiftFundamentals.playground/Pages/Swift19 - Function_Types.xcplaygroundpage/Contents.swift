//: [Previous](@previous)

import Foundation
 

 //Caso func que retorna 2 numeros

/*
 //MARK: Func com Retorno
 
 func sum(x: Int, y: Int) -> Int{
     return x + y
 }
 let result = sum(x: 2, y: 3)
 print(result)
 
 */

func sum(x: Int, y: Int) -> Int  {
return x + y
}
 
func divide(x: Int, y: Int) -> Int {
return x / y
}
 
 
///Passar funções com parâmetro para uma outra função.
func calc(a: Int, b:Int, operation: (Int, Int) -> Int){
    print("a: \(a)")
    print("b: \(b)")
    let result = operation(a,b)
    
    print("Resultado: \(result)")
}

///Chamndo o método.
calc(a: 4, b: 7, operation: sum(x:y:))
calc(a: 16, b: 2, operation: divide(x:y:))

///Forma exuta
calc(a: 40, b: 3) { a, b in
    a - b
}


 //___________________________

func callServer(url: String, callback: (Int)-> ()){
    //aqui dentro do callServer a gente chama o servidor e ele demora (latencia)
    let code = 200 // Demora
    callback(code)
}

callServer(url: "www.apple.com") { code in
    if code == 200 {
        print("Chamada feita com sucesso no servidor. Mostrar proxiam tela.")
    } else {
        print("erro no servidor.")
    }
}
