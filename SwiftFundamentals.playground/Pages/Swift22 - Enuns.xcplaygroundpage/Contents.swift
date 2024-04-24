//: [Previous](@previous)

import Foundation

 //Cenario = Criar um enum dias da semana

enum DiaDaSemana: String {
    
    case segunda = "Monday"
    case terca = "Tuesday"
    case quarta = "Wednesday"
    case quinta = "Thursday"
    case sexta = "Friday"
    case sabado = "Saturday"
    case domingo = "Sunday"

}

print(DiaDaSemana.sexta.rawValue)
 
//Cenario - E-commerce que vende memoria de computador

enum Memory: Int {
    case small = 2
    case medio = 4
    case big = 8
}

print(Memory.medio.rawValue)

enum CartaoDeCretido {
    case master
    case visa
    case americanXpress
    
    var nome: String{
        switch self {
            case.master:
                return "MASTERCARD"
            case.visa :
                return "VISA"
            case.americanXpress:
                return "American Xpress"
           
        }
        
    }
}

print(CartaoDeCretido.master.nome)



enum StatusPhone{
    case ligado(nivel: Int)
    case desligado
    
    func status() -> String {
        switch self{
            case .ligado (let nivelBateria):
                return "Ligado \(nivelBateria) % de bateria."
            case .desligado:
                return "Ops! Desligado"
        }
    }
}

let phone : StatusPhone = StatusPhone.ligado(nivel: 68)
print(phone.status())


