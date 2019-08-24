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
    //Un @IBoutlet para la etiqueta de país.
    @IBOutlet weak var labelPais: UILabel!
    //Un @IBoutlet para la etiqueta de hamburguesa.
    @IBOutlet weak var labelHamburguesa: UILabel!
    
    
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
    
    //creamos una variable que obtendra el nombre de la hamburguesa actual
    //es para evitar que el pais se repita
    var nombreHamburguesaActual : String = ""
    
    //nombre del pais que arrojo el metodo objeto1.obtenerHmaburguesa()
    var nombreDeHamburguesaNuevo : String = ""
    
    //En la clase ViewController: desarrolla lo siguiente:
    //Una instancia de la clase ColeccionDePaises.
    let objetoPais = ColeccionDePaises()
    //Una instancia de la clase ColeccionDeHamburguesas.
    let objetoHamburguesa = ColeccionDeHamburguesa()
    
    //Un @IBAction para implementar cambiar de país y de hamburguesa.
    @IBAction func btnActualizar()
    {
        //obtener los paises de forma aleatoria
        obtenerPaises()
        //obtenemos las hmaburguesas de forma aleatoria
        obtenerHamburguesas()
    }
    
    func obtenerPaises()
    {
        //actualizamos la variable con el nombre del pais
        nombreDePaisNuevo = objetoPais.obtenPais()
        
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
                nombreDePaisNuevo = objetoPais.obtenPais()
            }
        }
        //actualizamos el pais actual con el valor del pais nuevo
        nombrePaisActual = nombreDePaisNuevo
        
        //imprimimos el nombre del pais
        labelPais.text = nombreDePaisNuevo
    }
    
    func obtenerHamburguesas()
    {
        //actualizamos la variable con el nombre del Hamburguesa
        nombreDeHamburguesaNuevo = objetoHamburguesa.obtenHamburguesa()
        
        //validamos que la variable este vacia para llenarla
        if (nombreHamburguesaActual.isEmpty)
        {
            //actualizamos la variables
            nombreHamburguesaActual = nombreDeHamburguesaNuevo
        }
            //validamos si las dos variables tienen la misma informacion
        else if nombreHamburguesaActual == nombreDeHamburguesaNuevo
        {
            //validamos si el nombreHamburguesaActual = nombreDeHamburguesaNuevo
            while nombreHamburguesaActual == nombreDeHamburguesaNuevo
            {
                //actualizamos el nombre del Hamburguesa hasta que este diferente
                nombreDeHamburguesaNuevo = objetoHamburguesa.obtenHamburguesa()
            }
        }
        //actualizamos el Hamburguesa actual con el valor del Hamburguesa nuevo
        nombreHamburguesaActual = nombreDeHamburguesaNuevo
        
        //imprimimos el nombre del Hamburguesa
        labelHamburguesa.text = nombreDeHamburguesaNuevo        
    }
}

