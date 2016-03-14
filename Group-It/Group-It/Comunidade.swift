//
//  Comunidade.swift
//  Group-It
//
//  Created by Student on 3/11/16.
//  Copyright © 2016 HACKATRUCK. All rights reserved.
//

import UIKit

class Comunidade: NSObject {
    
    var nome: String
    var nomeLogo: String
    var tipo: String
    var numMembro: Int
    
    init(nome: String, nomeLogo: String, tipo: String, numMembro: Int) {
        
        self.nome = nome
        self.nomeLogo = nomeLogo
        self.tipo = tipo
        self.numMembro = numMembro
        
    }

}
