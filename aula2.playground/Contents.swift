
import Foundation

enum Bussola {
    case norte
    case sul
    case leste
    case oeste
}

var heading: Bussola = .norte
heading = .leste

//Operadores
//Atribuicao: =
//Aritiméticos: +, -, *, / , %
//Composto: +=, -=, *=, /= , %=
//Lógicos: &&, || , !
//Comparacao: >, <, >=, <=, ==, !=
//Identidade: ===, !===
//Ternário: (condicao) ? valor1 : valor2
//closed range: 1...100
//Half-closed Range: 1... <100
//Coalescencia Nula


//operadoes personalizados

prefix operator >-

prefix func >- (right: Int) -> Int {
    
    return right * right  * (-1)
    
}
print(>-5)

let letter = "a"


switch letter {
case "a","e":
    print("vogal")
default:
    print("nop")
}

//controle de fluxo

let names = ["Jose","Jose2","Jose3","Jose4"]


for name in names{
    print(name)
}

for number in 0..<50{
    number
}

for letter in names[0].characters{
    print(letter)
}

let dic = [
    "RA":"Rafael",
    "AR":"Rafael"
]

for (ini,name) in dic{
    print(name)
    print(ini)
}


var i = 0

while i < dic.count{
    print("qqq")
    i  += 1
}


print(>-5)



infix operator <->

func <-> (ini: Int, final: UInt32 ) -> Array<Any> {
    
    var retun : [UInt32] = []
    
    var i = 1
    
    while i < 9{
        
        let randon = arc4random_uniform(final)
        
        if !retun.contains(randon){
        retun.append(randon)
    
        }
        
        i += 1
    }
    
    return retun
    
}

print(5<->25)


//funcoes

func doSomething(a:Int, b: Int) -> Int{
    return a - b
}

doSomething(a: 2, b: 3)


func say(_ sentence: String, to name: String = "Fulano"){
    print(sentence,name);
}

say("Olá")

let student = "Jose Eu;28"
func getNameAndAge( _ data: String) -> (name : String , age: Int){
    let student = data.components(separatedBy: ";")
    guard let name = student.first, let ageStr = student.last, let age = Int(ageStr) else{ return ("",0)}
    
    return (name,age)
    
}

let (myName, myAge) = getNameAndAge(student)

func multiply (a: Int, b: Int) -> Int {
    return a * b
}


func divide (a: Int, b: Int) -> Int {
    return a / b
}


func subtract (a: Int, b: Int) -> Int {
    return a - b
}

typealias Operation = (Int,Int) -> Int

func calculate (a: Int, b: Int, operation: Operation) -> Int{
    
    return operation(a,b)
}

let result = calculate(a: 5, b: 5, operation: multiply)



// Sintaxe de uma Clousure
/*
    {
    (parametro:Tipo) -> TipoDeRetorno in 
        codigo
        return TipoDeRetorno
    }
 
 
 */


calculate(a: 50, b: 5, operation: {(param1: Int, param2: Int) -> Int in
    let result = param1 / param2
    return result
})



calculate(a: 50, b: 5, operation: {(param1, param2) in
    let result = param1 / param2
    return result
})


calculate(a: 50, b: 5,operation: {$0 % $1})


var ames = ["jose1","jose3","jose4",]

ames.sort(by: >)

let upN = ames.map{$0.uppercased()}
upN


enum Compass: String {
    case norte = "Norte"
    case sul = "Sul"
    case leste = "Leste"
    case oeste = "Oeste"
}
var compass: Compass = .norte

print("Estou indo na direcao \(compass)")




