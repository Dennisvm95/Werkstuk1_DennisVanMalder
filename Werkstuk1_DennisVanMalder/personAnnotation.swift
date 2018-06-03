//
//  personAnnotation.swift
//  Werkstuk1_DennisVanMalder
//
//  Created by student on 01/06/2018.
//  Copyright © 2018 student. All rights reserved.
//
import Foundation
import MapKit

class personAnnotation:
    NSObject,
    MKAnnotation
{
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init
        (
        coordinate:CLLocationCoordinate2D,
         title:String?,
         subtitle: String?
        )
    {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
    }
    
}
