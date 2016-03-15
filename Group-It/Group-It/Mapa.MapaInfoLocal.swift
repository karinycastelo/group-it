//
//  Mapa.MapaInfo.swift
//  Group-It
//
//  Created by Student on 3/14/16.
//  Copyright © 2016 HACKATRUCK. All rights reserved.
//
//
//  Mapa.Info.swift
//  Group-It
//
//  Created by Student on 3/14/16.
//  Copyright © 2016 HACKATRUCK. All rights reserved.
//


import Foundation
import MapKit
import AddressBook


class MapaInfoLocal: NSObject, MKAnnotation {
    let title: String?
    let locationName: String
    let discipline: String
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, locationName: String, discipline: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.locationName = locationName
        self.discipline = discipline
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String? {
        return locationName
    }
    
    func mapItem() -> MKMapItem {
        let addressDictionary = [String(kABPersonAddressStreetKey): self.subtitle as! AnyObject]
        let placemark = MKPlacemark(coordinate: coordinate, addressDictionary: addressDictionary)
        
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = title
        
        return mapItem
    }
}