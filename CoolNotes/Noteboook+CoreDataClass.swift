//
//  Noteboook+CoreDataClass.swift
//  CoolNotes
//
//  Created by xengar on 2017-12-01.
//  Copyright © 2017 xengar. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Noteboook)
public class Noteboook: NSManagedObject {
    // MARK: Initializer
    
    convenience init(name: String, context: NSManagedObjectContext) {
        
        // An EntityDescription is an object that has access to all
        // the information you provided in the Entity part of the model
        // you need it to create an instance of this class.
        if let ent = NSEntityDescription.entity(forEntityName: "Notebook", in: context) {
            self.init(entity: ent, insertInto: context)
            self.name = name;
            self.creationDate = Date()
        } else {
            fatalError("Unable to find Entity name!")
        }
    }
    
    var humanReadableAge : String {
        get {
            let fmt = DateFormatter()
            fmt.timeStyle = .none
            fmt.dateStyle = .short
            fmt.doesRelativeDateFormatting = true
            fmt.locale = Locale.current
            return fmt.string(from: creationDate!)
        }
    }
    
}
