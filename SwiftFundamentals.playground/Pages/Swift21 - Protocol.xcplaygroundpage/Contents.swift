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


//MARK: COM PROTOCOL

protocol Tracker {
    func monitorarEvento(name: String)
}

//MARK: - Monitoramento - Meu Sistema Analitics
 
class MeuSistemaDeAnalytics: Tracker {
    func monitorarEvento(name: String) {
        print("Hey: \(name)")
    }
}
//MARK: - Monitoramento - Google Analitics
 
class GoogleAnalytics1 : Tracker {
    func monitorarEvento(name: String){
        //A gente faz a chamada aqui
        let dataDoEvento = Date()
        print("\(dataDoEvento): \(name)")
    }
}

//Tela1
class Login1 {
    private let tracker: Tracker
    
    init (tracker: Tracker){
        self.tracker = tracker
    }
    
    func fazerLogin1(){
        
        print("Fazendo login")
        tracker.monitorarEvento(name: "Login ")
    }
}
//Tela2
class Home1{
   
    private let tracker: Tracker
    init (tracker: Tracker){
        self.tracker = tracker
    }
    
    func carregandoProdutos1(){
        print("Carregando produtos")
       tracker.monitorarEvento(name: "Home")
    }
}
//Tela3
class Perfil1 {
    private let tracker: Tracker
    
    init (tracker: Tracker){
        self.tracker = tracker
    }
    
    func editarPerfil1(){
        print("Editando perfil")
        tracker.monitorarEvento(name: "Perfil")
    }
}

 
    //MARK: - Mudar aqui o nome das classe de monitoramento que desejo let t = Classe()

let t = MeuSistemaDeAnalytics()

let login1 = Login1(tracker: t)
login1.fazerLogin1( )
sleep(2)

let perfil1 = Home1(tracker: t)
perfil1.carregandoProdutos1()
sleep(5)

let editPerfil1 = Perfil1(tracker: t)
editPerfil1.editarPerfil1()

print("fim do programa 2")



