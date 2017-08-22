
//: Playground - noun: a place where people can play

import UIKit
import Foundation

//Tratamento de erro

enum AcessError: Error {
    
    case wrongPassword
    case wrongLogin
    case wrongData
    
}

func login(userName: String, password: String) throws -> String{
    
    let validUser = "alunofiap"
    let validPassword = "23"
    
    if userName  != validUser && password != validPassword {
        
        throw AcessError.wrongData
        
    } else if userName != validUser {

        throw AcessError.wrongLogin

    } else if  password != validPassword {
    
        throw AcessError.wrongPassword

    } else{
        return "logado"
    }
    
}


do {
    
    
    let result2 = try login(userName: "alunofiap", password: "23")
    
} catch {
    
    switch error as! AcessError {
    case .wrongData:
        print("Usuario e senha invaido")
    case .wrongLogin:
        print("Usuario invaido")
    case .wrongPassword:
        print("Senha invaido");

    default:
        print("Desconhecido")
    }
    
}


//Genericos
let array = ["Eric","Brito"]


func swapInts(a: inout Int , b: inout Int){
    let temporaryA = a
    a = b
    b = temporaryA
}

var x = 10
var y = 20
swapInts(a: &x, b: &y)
print(x,y)



func swapValues<T>(a: inout T, b: inout T){
    let temporaryA = a
    a = b
    b = temporaryA
}


var z = "Eu"
var w = "Voces"

swapValues(a: &z, b: &w)
print(z,w)



class Vehicle{
    
    //Propriedade armazenada (stored property)
    private var _speed: UInt  = 0
    
    var model: String
    var speed: UInt{
        get{ return _speed}
        set{
            let finalSpeed = min(maxSpeed, newValue)
            _speed = finalSpeed
        }
    }
    
    
    //propriedade de classe
    static let speedUnit = "km/h"
    
    //propriedade computada ( computed property )
    
    var currentSpeed: String {
       return "\(speed) \(Vehicle.speedUnit)"
    }
    
    var maxSpeed: UInt{
        return 250
    }
    
    init(model: String){
        self.model = model;
    }
    
    //Metodo do instancia
    func descript() -> String {
        return "veiculo: \(model), veloci :\(speed)"
    }
    
    class func alert() {
        print("Se beber  ja sabe")
    }
    

}

var vehicle = Vehicle(model : "Ferrari")

vehicle.speed = 200




print("A unidade  em vehicle e \(Vehicle.speedUnit)")



//heranca


class Car: Vehicle {
    var licensePlate:String
    var drive: String?
    
    
    override var maxSpeed: UInt{
        return 150
    }
    
    
    subscript (index: Int ) -> String{
        
        get{
            let plateArray = Array(self.licensePlate.characters)
            
            return String(plateArray[index])
        }
        set{
            
            var plateArray = Array(self.licensePlate.characters)
            plateArray[index] = Character(newValue)
            self.licensePlate = String(plateArray)
        }
        
        
    }
    
    override func descript() -> String {
        return "\(super.descript()),Placa: \(licensePlate)"
    }
    
    init(model: String, licensePlate: String) {
        self.licensePlate = licensePlate
        super.init(model: model)
    }
    
    
    
    convenience init(driver: String){
        self.init(model:"",licensePlate: "")
    
    }
    
    
    

}




var car = Car(model: "Fusca", licensePlate: "AMP7541")

car[6] = "5"
print(car.licensePlate)


if car[6] == "1" || car[6] == "2" {
    print("Só pode das 20:00h")
}



//extensao

var name : String = "Jose"

extension String {

    var count : Int{
        return self.characters.count
    }
    
    func initials() -> String {
        return self.components(separatedBy: " ").map({String($0.characters.first!)}).joined()
    }
}

print("O meu nome tem \(name.count)")


print("O meu nome tem \(name.initials())")


protocol ACCapable {
    
    var hasAC: Bool { get set}
    
    func turnAC(on: Bool)
    
    
}

/*
extension Car : ACCapable{
    
    var hasAC : Bool = true
    
    
    internal var hasAC: Bool {
        return true
    }
    

}
 */








