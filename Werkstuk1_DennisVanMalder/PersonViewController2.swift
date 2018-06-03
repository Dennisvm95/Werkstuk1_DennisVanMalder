//
//  PersonViewController2.swift
//  Werkstuk1_DennisVanMalder
//
//  Created by student on 01/06/2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit
import MapKit

import CoreLocation

class personViewController2 : UIViewController, MKMapViewDelegate {
    
    
    
    //get p
    var p = person()
    //links to ui
    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var lastName: UILabel!
    @IBOutlet weak var phone: UILabel!
    @IBOutlet weak var gpscoords: UILabel!
    @IBOutlet weak var adress: UILabel!
    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var map: MKMapView!
    

    
    // https://www.youtube.com/watch?v=fo3nSRBWfRA
    //show zoomed in image
    
    
    
    
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        let imageView = sender.view as! UIImageView
        let newImageView = UIImageView(image: imageView.image)
        newImageView.frame = UIScreen.main.bounds
        //what to do with aspect ratio when zooming in
        newImageView.contentMode = .scaleAspectFit
        //backgroundcolor when zooming in
        newImageView.backgroundColor = .white
        //interactable true or false
        newImageView.isUserInteractionEnabled = true
        //when tapped do an action in this case - dismiss the full screen
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissFullscreenImage))
        newImageView.addGestureRecognizer(tap)
        self.view.addSubview(newImageView)
    }
    // https://www.youtube.com/watch?v=fo3nSRBWfRA
    //discard zoomed in image
    @objc func dismissFullscreenImage(_ sender: UITapGestureRecognizer) {
        self.navigationController?.isNavigationBarHidden = false
        self.tabBarController?.tabBar.isHidden = false
        sender.view?.removeFromSuperview()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.foto.image = UIImage(named: p.foto)
        self.firstName.text = "firstname: " + p.firstName
        self.lastName.text = "lastname: " + p.lastName
        
        self.adress.text = "address: " + p.straat + "\n " + p.huisnummer + "\n" + p.gemeente + "\n" + p.postcode
        
        self.phone.text = "phone number: " + p.telefoonnummer
        
        self.gpscoords.text = "gps coordinates: " + p.latitude.description + ", " + p.longtitude.description
        
        let location = CLLocationCoordinate2DMake(p.latitude, p.longtitude)
        let span = MKCoordinateSpanMake(0.5, 0.5)
        let region = MKCoordinateRegion(center: location, span: span)
         map.setRegion(region, animated: true)
         let annotation:personAnnotation = personAnnotation(coordinate:
         location, title: "Person: ",
         subtitle: "currently located at " + p.firstName)
         
         map.addAnnotation(annotation)
        
    }
    
    
}
