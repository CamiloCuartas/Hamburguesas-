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
        nombreDePaisNuevo = objeto.obtenPais()
        
        //validamos que la variable este vacia para llenarla
        if (nombrePaisActual.isEmpty)
        {
            //actualizamos la variables
            nombrePaisActual = nombreDePaisNuevo
        }
        //validamos si las dos variables tienen la misma informacion
        else if nombrePaisActual == nombreDePaisNuevo
        {
            //validamos si el nombrePaisActual = nombreDePaisNuevo
            while nombrePaisActual == nombreDePaisNuevo
            {
                //actualizamos el nombre del pais hasta que este diferente
                nombreDePaisNuevo = objeto.obtenPais()
            }
        }
        //actualizamos el pais actual con el valor del pais nuevo
        nombrePaisActual = nombreDePaisNuevo
        
        //imprimimos el nombre del pais
        print(nombreDePaisNuevo)
    }
}

