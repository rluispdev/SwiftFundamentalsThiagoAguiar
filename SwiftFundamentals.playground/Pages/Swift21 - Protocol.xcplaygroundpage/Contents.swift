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

print("Sem protocolo")
let login = Login()
login.fazerLogin()
sleep(2)

let perfil = Home()
perfil.carregandoProdutos()
sleep(5)

let editPerfil = Perfil()
editPerfil.editarPerfil()

print("fim do programa")

//Se eu tivese umas 20 classes ou quisesse usar outro sistema de monitoramento?

// por isso o Protocolo seria como uma cartola de magico



//Ferramenta de monitorameto do user no app.


class GoogleAnalytics1 {
    func monitorarEvento(name: String){
        //A gente faz a chamada aqui
        let dataDoEvento = Date()
        print("\(dataDoEvento): \(name)")
    }
}

///Sem protocol
//Tela1
class Login1 {
    private let analytics = GoogleAnalytics()
    func fazerLogin1(){
        
        print("Fazendo login")
        analytics.monitorarEvento(name: "Login ")
    }
}
//Tela2
class Home1{
    private let analytics = GoogleAnalytics()
    
    func carregandoProdutos1(){
        print("Carregando produtos")
        analytics.monitorarEvento(name: "Home")
    }
}
//Tela3
class Perfil1 {
    private let analytics = GoogleAnalytics()
    
    func editarPerfil1(){
        print("Editando perfil")
        analytics.monitorarEvento(name: "Perfil")
    }
}

print("Com protocolo ________________" )
let login1 = Login1()
login1.fazerLogin1()
sleep(2)

let perfil1 = Home1()
perfil1.carregandoProdutos1()
sleep(5)

let editPerfil1 = Perfil1()
editPerfil1.editarPerfil1()

print("fim do programa 2")
