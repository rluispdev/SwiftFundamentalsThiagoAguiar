//: [Previous](@previous)

import Foundation

let coords: (Double, Double) = (23.4, 54.33)
coords.0
coords.1


let coords2 =  (lat: 23.33, lng: 54.22)
coords2.lat
coords2.lng

let camera = (x: 10, y: 20, z: 1)

//Destruir, decompactar o conteúdo da variavel camera.
let (x, y, z) = camera
print(x)
print(y)
print(z)

//let (x, y, _ ) = camera, podemos descartar um variavel usando _, caso nao precisemos dela.

let user = (name: "Rafael", age: 33)
user.name
user.age
