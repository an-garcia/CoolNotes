//
//  PhotoFrame+CoreDataProperties.swift
//  CoolNotes
//
//  Created by xengar on 2017-12-07.
//  Copyright © 2017 xengar. All rights reserved.
//
//

import Foundation
import CoreData


extension PhotoFrame {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PhotoFrame> {
        return NSFetchRequest<PhotoFrame>(entityName: "PhotoFrame")
    }

    @NSManaged public var imageData: NSData?
    @NSManaged public var note: Note?

}
