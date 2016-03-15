//
//  Mapa.MapaViewController.swift
//  Group-It
//
//  Created by Student on 3/14/16.
//  Copyright © 2016 HACKATRUCK. All rights reserved.
//

import UIKit
import MapKit

class MapaViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        let initialLocation = CLLocation(latitude: -3.7319, longitude: -38.5267)
        
        let regionRadius: CLLocationDistance = 1000
        func centerMapOnLocation(location: CLLocation) {
            let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                regionRadius * 2.0, regionRadius * 2.0)
            mapView.setRegion(coordinateRegion, animated: true)
        }
        
        centerMapOnLocation(initialLocation)
        
        mapView.delegate = self
        
        
        let infoLocal = MapaInfoLocal(title: "I Torneio Crossfit Fortaleza",
            locationName: "Somewhere in Fortaleza",
            discipline: "Crossfit",
            coordinate: CLLocationCoordinate2D(latitude: -3.7400, longitude: -38.5147))
        
        let infoLocal2 = MapaInfoLocal(title: "I Encontro Skate MP",
            locationName: "Marina Park",
            discipline: "Encontro Skate",
            coordinate: CLLocationCoordinate2D(latitude: -3.7200, longitude: -38.5267))
        
        mapView.addAnnotation(infoLocal)
        mapView.addAnnotation(infoLocal2)
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //    override func didReceiveMemoryWarning() {
    //        super.didReceiveMemoryWarning()
    //        // Dispose of any resources that can be recreated.
    //    }
    
    
}
