//
//  Note+CoreDataProperties.swift
//  CoolNotes
//
//  Created by xengar on 2017-12-07.
//  Copyright © 2017 xengar. All rights reserved.
//
//

import Foundation
import CoreData


extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note")
    }

    @NSManaged public var creationDate: NSDate?
    @NSManaged public var text: String?
    @NSManaged public var notebook: Notebook?
    @NSManaged public var photo: PhotoFrame?

}
