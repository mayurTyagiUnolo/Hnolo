//
//  SomethingCD+CoreDataProperties.swift
//  Hnolo
//
//  Created by Mayur Tyagi on 26/03/25.
//
//

import Foundation
import CoreData


extension SomethingCD {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<SomethingCD> {
        return NSFetchRequest<SomethingCD>(entityName: "SomethingCD")
    }

    @NSManaged public var lat: String?
    @NSManaged public var lon: String?
    @NSManaged public var date: Date?
    @NSManaged public var id: String?

}

extension SomethingCD : Identifiable {

}
