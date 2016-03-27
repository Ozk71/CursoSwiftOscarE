//
//  Datos.swift
//  Hamburguesas
//
//  Created by Oscar Oziel Escamilla Alvarez on 27/03/16.
//  Copyright © 2016 Oscar Oziel Escamilla Alvarez. All rights reserved.
//

import Foundation
import UIKit

class ColeccionDePaises {
    let paises : [String] = ["México", "Japón", "Corea del Sur", "Argentina", "Alemania", "Italia", "Grecia", "Nueva Zelanda", "Australia", "Brasil", "Estados Unidos", "Canada", "Costa Rica", "China", "Malasia", "Egipto", "España", "Francia", "Polonia", "Suecia"]
    func obtenPais() ->String{
        let pais = Int(arc4random()) % paises.count
        return paises[pais]
    }
}

class ColecciondeHamburguesa {
    let hamburguesas : [String] = ["Temera", "Raza Nostra", "Deportista", "de Pueblo", "Barbacoa", "Bacon", "Parmigiano", "Ranchera", "Ibérica", "A la antigua", "Roquefort", "Cebolla Pochada", "Transilvania", "Foie", "Del Chef", "4 Quesos", "Ternera Blanca", "Trufa", "Setas", "Al Oporto"]
    
    func obtenHamburguesa() ->String{
        let hambur = Int(arc4random()) % hamburguesas.count
        return hamburguesas[hambur]
    }
}

struct Colores {
    let colores = [UIColor(red: 210/255, green: 90/255, blue: 45/255, alpha:1),
        UIColor(red: 40/255, green: 170/255, blue: 45/255, alpha:1),
        UIColor(red: 3/255, green: 180/255, blue: 45/255, alpha:1),
        UIColor(red: 210/255, green: 190/255, blue: 45/255, alpha:1),
        UIColor(red: 120/255, green: 120/255, blue: 45/255, alpha:1),
        UIColor(red: 130/255, green: 80/255, blue: 45/255, alpha:1),
        UIColor(red: 130/255, green: 130/255, blue: 130/255, alpha:1),
        UIColor(red: 3/255, green: 50/255, blue: 90/255, alpha:1)]
    
    func regresaColorAleatorio() ->UIColor{
        let posicion = Int( arc4random()) % colores.count
        return colores[posicion]
    }
}