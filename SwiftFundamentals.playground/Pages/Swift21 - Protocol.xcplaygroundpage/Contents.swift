//: [Previous](@previous)

import Foundation

//Cenário - Cirar um app em iOS e vamos que esse app tenha 03 telas

//Ferramenta de monitorameto do user no app.
class GoogleAnalytics {
    func monitorarEvento(name: String){
        //A gente faz a chamada aqui
        let dataDoEvento = Date()
        print("\(dataDoEvento): \(name)")
    }
}

///Sem protocol
//Tela1
class Login {
    private let analytics = GoogleAnalytics()
    func fazerLogin(){
        
        print("Fazendo login")
        analytics.monitorarEvento(name: "Login ")
    }
}
//Tela2
class Home{
    private let analytics = GoogleAnalytics()
    
    func carregandoProdutos(){
        print("Carregando produtos")
        analytics.monitorarEvento(name: "Home")
    }
}
//Tela3
class Perfil {
    private let analytics = GoogleAnalytics()
    
    func editarPerfil(){
        print("Editando perfil")
        analytics.monitorarEvento(name: "Perfil")
    }
}


let login = Login()
login.fazerLogin()
sleep(2)

let perfil = Home()
perfil.carregandoProdutos()
sleep(5)

let editPerfil = Perfil()
editPerfil.editarPerfil()

print("fim do programa")


