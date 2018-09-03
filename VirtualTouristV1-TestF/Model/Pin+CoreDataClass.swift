//
//  Pin+CoreDataClass.swift
//  VirtualTouristV1-TestF
//

import Foundation
import CoreData
import MapKit

@objc(Pin)
class Pin: NSManagedObject {
    var coordinate: CLLocationCoordinate2D{
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    convenience init(_ lat:Double,_ lon: Double,_ context: NSManagedObjectContext ){
        let entity = NSEntityDescription.entity(forEntityName: "Pin", in: context)!
        self.init(entity: entity, insertInto: context)
        self.latitude = lat
        self.longitude = lon
    }
    
}
