//: Playground - noun: a place where people can play

import UIKit

let velocidades = ["Apagado", "VelocidadBaja", "VelocidadMedia", "VelocidaAlta"]

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init (velocidadInicial: Velocidades){
        self = velocidadInicial
    }
    

}

class Auto {
    var velocidad : Velocidades
    
    init () {
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad () -> (actual : Int, velocidadEnCadena : String) {
        var ActCad : (velocidadTemporal : Velocidades, cadenaTemporal : String)
        
        if(self.velocidad == .Apagado) {
            ActCad = (Velocidades.VelocidadBaja, "Velocidad baja")
        } else if (self.velocidad == .VelocidadBaja) {
            ActCad = (Velocidades.VelocidadMedia, "Velocidad media")
        } else if (self.velocidad == .VelocidadMedia) {
            ActCad = (Velocidades.VelocidadAlta, "Velocidad alta")
        } else {
            ActCad = (Velocidades.VelocidadMedia,"Velocidad media")
        }
        self.velocidad = ActCad.velocidadTemporal
        return (ActCad.velocidadTemporal.rawValue, ActCad.cadenaTemporal)
    }
}

var auto = Auto()

var VelFinal : (actual : Int, velocidadEnCadena : String)

VelFinal = (auto.velocidad.rawValue, "Apagado")

for var Velocimetro = 1; Velocimetro <= 20; Velocimetro++ {
  
    print("\(Velocimetro). \(VelFinal.actual), \(VelFinal.velocidadEnCadena)")
    VelFinal = auto.cambioDeVelocidad()
}

