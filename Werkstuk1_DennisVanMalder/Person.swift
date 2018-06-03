//
//  persoonSingleton.swift
//  Werkstuk1_DennisVanMalder
//
//  Created by student on 01/06/2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class person {
    
    var firstName:String
    var lastName:String
    var foto:String
    var straat:String
    var huisnummer:String
    var postcode:String
    var gemeente:String
    var latitude:Double
    var longtitude:Double
    var telefoonnummer:String
    
    init() {
        firstName = ""
        lastName = ""
        foto = ""
        straat = ""
        huisnummer = ""
        postcode = ""
        gemeente = ""
        latitude = 0.0
        longtitude = 0.0
        telefoonnummer = ""
    }
    
    init(
        lastName: String,
        firstName: String,
        foto:String,
        straat: String,
        huisnummer: String,
        postcode:String,
        gemeente:String,
        latitude:Double,
        longtitude:Double,
        telefoonnummer:String
        )
    {
        self.firstName = firstName
        self.lastName = lastName
        self.foto = foto
        self.straat = straat
        self.huisnummer = huisnummer
        self.postcode = postcode
        self.gemeente = gemeente
        self.latitude = latitude
        self.longtitude = longtitude
        self.telefoonnummer = telefoonnummer
    }
}

