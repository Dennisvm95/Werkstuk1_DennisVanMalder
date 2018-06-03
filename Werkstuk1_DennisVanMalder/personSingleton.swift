//
//  persoonSingleton.swift
//  Werkstuk1_DennisVanMalder
//
//  Created by student on 01/06/2018.
//  Copyright © 2018 student. All rights reserved.
//


import UIKit

import Foundation
import MapKit

final class personSingleton {
    //call singleton
    static let instance = personSingleton()
    //make an array called persons of person
    private var persons = [person]()
    //initialize persons
    private init(){
        self.persons =
            [
            person(lastName: "Squarepants", firstName: "SpongeBob", foto: "Spongebob", straat: "ananas", huisnummer: "1", postcode: "1500", gemeente: "Bikini bottom", latitude: 49.0,longtitude: 10.0, telefoonnummer: "0474 111111"),
            
            person(lastName: "Star", firstName: "Patrick", foto: "patrick", straat: "rock", huisnummer: "2", postcode: "1500", gemeente: "Bikini bottom", latitude: 51.2,longtitude: 5.0, telefoonnummer: "0474 222222"),
            
            person(lastName: "Tentacles", firstName: "Squidward", foto: "octo", straat: "easter island head", huisnummer: "3", postcode: "1500", gemeente: "Bikini bottom", latitude: 50.0,longtitude: 5.0, telefoonnummer: "0474 333333")
        ]
    }
    //function getperson
    public func getPersons() -> [person]{
        return self.persons
    }
}

