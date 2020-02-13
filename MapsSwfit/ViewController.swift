//
//  ViewController.swift
//  MapsSwfit
//
//  Created by Shafigh Khalili on 2020-02-13.
//  Copyright © 2020 Shafigh Khalili. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController,MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mapView.setUserTrackingMode(.follow, animated: true)
        mapView.delegate = self
        
        updateRegion()
    }
    
    @IBAction func addPin(_ sender: UIBarButtonItem) {
        let pin = Pin(coordinate: mapView.userLocation.coordinate)
        
        mapView.addAnnotation(pin)
    }
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        //        print("Long: \(userLocation.coordinate.longitude), Lat: \(userLocation.coordinate.latitude)")
        updateRegion()
    }
    
    func updateRegion(){
        let userLocation = mapView.userLocation
        
        let width = 100.0
        let height = 100.0
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        
        let region = MKCoordinateRegion(center: center, latitudinalMeters: width, longitudinalMeters: height)
        mapView.setRegion(region, animated: true)
    }
    
    /*
     @IBAction func showMap(_ sender: UIButton) {
     if let url = URL(string: "http://maps.apple.com/?q=37.456732,-122.03567"){
     
     let app = UIApplication.shared
     
     app.open(url)
     
     }
     }
     */
}
