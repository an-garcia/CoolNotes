//
//  Noteboook+CoreDataProperties.swift
//  CoolNotes
//
//  Created by xengar on 2017-12-01.
//  Copyright © 2017 xengar. All rights reserved.
//
//

import Foundation
import CoreData


extension Noteboook {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Noteboook> {
        return NSFetchRequest<Noteboook>(entityName: "Noteboook")
    }

    @NSManaged public var creationDate: NSDate?
    @NSManaged public var name: String?
    @NSManaged public var note: Note?

}
