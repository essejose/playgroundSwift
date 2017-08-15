//: Playground - noun: a place where people can play

import UIKit


//variavel
var age: Int = 39 //
//constante
let iceage: Int = 39 //

print(age - iceage);

//Tipos
//Int, Double, Float, String, Character, Bool
//Int, UInt, int8, Int16, Int32, Int64
//Int


var count = 77
var dolarRate: Float = 3.45
var fiapClass = "13MOB"
var gende: Character = "M"

var isMale: Bool = true



let names = ["José","Rafael"]

for name in names {
    
    if name == "Rafael" {
        
        print(name, ("biscoito"));
    
    }else if (name == "José"){
        
        print(name, ("Legal"));
    }
}


let 🐶1 = "Beethoven"
let 🐶2 = "Beethoven"
let 💩 = "Cocö"

print("Meus cachorros são \(🐶1) \(🐶2) e eles vivem fazendo \(💩)")

//Tuplas



var address: (street: String, number: Int, postalCode: String) = ("Av. Paulista",1000,"0000-00")

print("Eu moro na \(address.street) no numero \(address.postalCode)")


var (street,_,postalCode) = address


//Optional

var student: String?
student = "Jose"

print(student!)


//unwarp

if let student = student {
    print(student)
}else{
    print(" Aluno não  cadastrado")
}


if student != nil{
    print(student!)
}


/*var addressNumber = "1000"
if let addNumber = Int(address){
    print(addNumber)
}*/


var grade: Int!
grade = 10
print(grade)



var 😀 = 1
var 😤 = 2
var 😡 = 3


if 😀 < 😤{
    print(😡)
}

//Array

var tupleArray: [(String, Int)] = [
    ("Fulano", 22),
    ("Fulano", 22),
    ("Fulano", 22),
    ( "X", 22),
    ("Fulano", 22),
    
]
for tuple in tupleArray{
     print(tuple.0)
}


tupleArray.append(("Novo",28))
tupleArray += [("Novco", 23)]


let firstAndSecundTuple = tupleArray[0..<2]

tupleArray.insert(("XXX",28), at: 2 )
print(tupleArray)

tupleArray.remove(at: 2)
print(tupleArray)


//Dicionarios

let states:[String:String] = [
    "BA": "Bahia",
    "SP": "São Paulo",
    "PA": "Pará"
]


print("\(states["SP"])")

states.count

// For in



for (code, state) in states{
    print(state)
}


