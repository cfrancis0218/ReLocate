//
//  Map.swift
//  ReLocate
//
//  Created by Christian Elijah on 2020-10-13.
//

import UIKit
import MapKit

class Map: MKMapView {
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        mapSetup()
    }
    
    func mapSetup() {
        
        self.mapType = .standard
        self.showsUserLocation = true
        
    }
}
