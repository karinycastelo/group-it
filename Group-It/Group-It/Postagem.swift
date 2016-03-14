//
//  Postagem.swift
//  Group-It
//
//  Created by Student on 3/11/16.
//  Copyright © 2016 HACKATRUCK. All rights reserved.
//

import UIKit

class Postagem: NSObject {
    
    var descricao: String
    var data: String
    var hora: String
    
    init(descricao: String, data: String, hora: String) {
        self.descricao = descricao
        self.data = data
        self.hora = hora
    }
    

}
