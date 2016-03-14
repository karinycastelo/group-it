//
//  Atividade+CoreDataProperties.swift
//  Group-It
//
//  Created by Student on 3/14/16.
//  Copyright © 2016 HACKATRUCK. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Atividade {

    @NSManaged var nome: String?
    @NSManaged var urlImg: String?
    @NSManaged var comunidades: NSSet?
    @NSManaged var usuarios: NSSet?

}
