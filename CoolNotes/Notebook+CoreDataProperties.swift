//
//  Notebook+CoreDataProperties.swift
//  CoolNotes
//
//  Created by xengar on 2017-12-06.
//  Copyright © 2017 xengar. All rights reserved.
//
//

import Foundation
import CoreData


extension Notebook {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Notebook> {
        return NSFetchRequest<Notebook>(entityName: "Notebook")
    }

    @NSManaged public var creationDate: Date?
    @NSManaged public var name: String?
    @NSManaged public var note: NSSet?

}


