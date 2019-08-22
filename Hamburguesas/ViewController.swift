//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Desarrollo3 on 8/21/19.
//  Copyright © 2019 com.DiezEquis. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //creamos una variable que obtendra el nombre del pais actual
    //es para evitar que el pais se repita
    var nombrePaisActual : String = ""
    
    //nombre del pais que arrojo el metodo objeto.obtenPais()
    var nombreDePaisNuevo : String = ""
    
    //creamos un objeto
    let objeto = ColeccionDePaises()
    
    @IBAction func btnActualizar()
    {
        //actualizamos la variable con el nombre del pais
        nombrePaisActual = objeto.obtenPais()
        
        if nombrePaisActual == nombreDePaisNuevo
        {
            //validamos si el nombrePaisActual = nombreDePaisNuevo
            while nombrePaisActual == nombreDePaisNuevo
            {
                nombreDePaisNuevo = objeto.obtenPais()
            }
            
            nombrePaisActual = nombreDePaisNuevo
        }
        
        //imprimimos el nombre del pais
        print(nombreDePaisNuevo)
    }
}

