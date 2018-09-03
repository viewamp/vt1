//
//  Photo+CoreDataProperties.swift
//  VirtualTouristV1-TestF
//
//
//

import Foundation
import CoreData

extension Photo {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Photo> {
        return NSFetchRequest<Photo>(entityName: "Photo");
    }
    
    @NSManaged public var imageData: NSData?
    @NSManaged public var url: String?
//    @NSManaged var pin: Pin?
    @NSManaged var photo: Pin?
    
}

