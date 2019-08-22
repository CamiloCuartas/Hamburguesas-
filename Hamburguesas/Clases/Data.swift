import Foundation

//Crea un archivo de Swift llamado: Datos.swift, dentro de él declara las siguientes clases:
import Foundation

class ColeccionDePaises
{
    //La clase tiene como atributos un arreglo de países de tipo [String], al menos debes contar con 20 países.
    var paises: [String] =  [
                                "Argentina ",
                                "Bolivia ",
                                "Brasil ",
                                "Chile ",
                                "Colombia ",
                                "Costa Rica ",
                                "Cuba ",
                                "Ecuador ",
                                "El Salvador ",
                                "Guayana Francesa",
                                "Granada ",
                                "Guatemala ",
                                "Guayana",
                                "Haití",
                                "Honduras ",
                                "Jamaica ",
                                "México ",
                                "Nicaragua ",
                                "Paraguay ",
                                "Panamá",
                                "Perú",
                                "Puerto Rico",
                                "República Dominicana",
                                "Surinam",
                                "Uruguay ",
                                "Venezuela"
                            ]
    
    //La clase define el método: func obtenPais( )->String, regresa de manera aleatoria un país del arreglo,
    //recuerda usar la función de la siguiente manera: Int(arc4random() % x), donde x puede ser el tamaño del
    //arreglo países.
    func obtenPais( )->String
    {
        //obtenemos el numero aleatorio
        let numeroAleatorio : Int = Int(arc4random() % 26)
        //obtenemos el nombre del pais de acuerdo a la posicion aleatoria
        let paisAleatorio : String = paises[numeroAleatorio]
        //retornamos el nombre del pais
        return paisAleatorio
    }
    
}
