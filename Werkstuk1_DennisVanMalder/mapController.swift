//
//  mapController.swift
//  Werkstuk1_DennisVanMalder
//
//  Created by student on 01/06/2018.
//  Copyright © 2018 student. All rights reserved.
//
//mapview https://www.youtube.com/watch?v=wU1XN-Gk1LM
//annotations https://www.youtube.com/watch?v=hRextIKJCnI & https://www.youtube.com/watch?v=LJ7PG-o5XLA

import UIKit
import MapKit
import CoreLocation

class mapController: UIViewController, CLLocationManagerDelegate {
    //get persons out of singleton
    var persons = personSingleton.instance.getPersons()
    //links
    @IBOutlet weak var map: MKMapView!
    
    //https://developer.apple.com/documentation/corelocation/cllocationmanager
    let manager = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        manager.pausesLocationUpdatesAutomatically = true

        for p in persons {
            let location = CLLocationCoordinate2DMake(p.latitude, p.longtitude)
            let annotation:personAnnotation = personAnnotation(
                coordinate: location,
                title: "Person: " + p.firstName,
                subtitle:"is located here"
            )
            //map.addAnnotation(annotation) //Thread 1: Fatal error: Unexpectedly found nil while unwrapping an Optional value
            
        }
        
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[0]
        let span:MKCoordinateSpan = MKCoordinateSpanMake(10,10)
        let myLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
        let region:MKCoordinateRegion = MKCoordinateRegionMake(myLocation, span)
        map.setRegion(region, animated: true)
        self.map.showsUserLocation = true
        
    }
    
   
}

