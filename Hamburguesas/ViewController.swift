//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Oscar Oziel Escamilla Alvarez on 27/03/16.
//  Copyright © 2016 Oscar Oziel Escamilla Alvarez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nombrePaises: UILabel!
    let colores = Colores()
    let paises = ColeccionDePaises()
    
    @IBOutlet weak var hambur: UILabel!
    let burger = ColecciondeHamburguesa()

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func DameUna() {
        nombrePaises.text = paises.obtenPais();
        hambur.text = burger.obtenHamburguesa();
        let colorAleatorio = colores.regresaColorAleatorio()
        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio
    }

}

