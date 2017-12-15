//
//  PartidoBE.swift
//  FulgolApp
//
//  Created by Goes on 12/14/17.
//  Copyright © 2017 wips. All rights reserved.
//

import UIKit

class PartidoBE: NSObject {

    var partido_equipo1 = " "
    var partido_equipo2 = " "
    var partido_campo = " "
    var partido_urlImgEquipo1 = " "
    var partido_urlImgEquipo2 = " "
    
    
    class func crearPartido( equipo1: String,equipo2: String, campo: String, distancia: String, urlImgEquipo1: String, urlImgEquipo2 : String) -> PartidoBE{
        
        let objBE = PartidoBE()
        
        objBE.partido_equipo1 = equipo1
        objBE.partido_equipo1 = equipo2
        objBE.partido_campo = campo
        objBE.partido_urlImgEquipo1 = urlImgEquipo1
        objBE.partido_urlImgEquipo2 = urlImgEquipo2
        
        return objBE
    }
    
}
