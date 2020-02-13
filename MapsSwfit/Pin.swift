//
//  Pin.swift
//  MapsSwfit
//
//  Created by Shafigh Khalili on 2020-02-13.
//  Copyright © 2020 Shafigh Khalili. All rights reserved.
//

import Foundation
import MapKit

class Pin: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    
    init(coordinate: CLLocationCoordinate2D) {
        self.coordinate = coordinate
        self.title = "Been here"
    }
    
    
}
