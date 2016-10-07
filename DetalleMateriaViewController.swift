//
//  detalleMateriaViewController.swift
//  table
//
//  Created by Maestro on 29/09/16.
//  Copyright © 2016 Maestro. All rights reserved.
//

import Foundation
import UIKit

class DetalleMateriaViewController: UIViewController {
    
    var alumno : Alumno?
    var materia : Materia?
    
    @IBOutlet weak var lblMateria: UILabel!
    
    @IBOutlet weak var lblNombreAlumno: UILabel!
    
    @IBOutlet weak var lblParcialUno: UILabel!
    
    @IBOutlet weak var lblParcialDos: UILabel!
    
    @IBOutlet weak var lblParcialTres: UILabel!
    
    
    override func viewDidLoad() {
        lblMateria.text = materia!.nombre
        lblNombreAlumno.text = "\(alumno!.nombre) \(alumno!.apellidos)"
        
        if let califcacionPrimerParcial = materia!.calificacionPrimerParcial { // el if evalua variables booleanas y opcionales
        
        lblParcialUno.text = String(califcacionPrimerParcial)
            
        }
        
        if let califcacionSegundoParcial = materia!.calificacionSegundoParcial { // si materia!.calificacionXParcial tiene algo, ponlo en calificacionSegundoParcial 
            
            lblParcialDos.text = String(califcacionSegundoParcial)
            
        }
        
        if let califcacionTercerParcial = materia!.calificacionTercerParcial {
            
            lblParcialTres.text = String(califcacionTercerParcial)
            
        }
        
         /* esta cura dejo de ser utilizada pero podria servir
 de referencia en otro m */


    }

}