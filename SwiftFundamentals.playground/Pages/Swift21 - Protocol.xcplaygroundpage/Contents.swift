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
    func fazerLogin(){
        print("Fazendo login")
    }
}
//Tela2
class Home{
    func carregandoProdutos(){
        print("Carregando produtos")
    }
}
//Tela3
class Perfil {
    func editarPerfil(){
        print("Editando perfil")
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


