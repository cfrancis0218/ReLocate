//
//  ParisMap.swift
//  ReLocate
//
//  Created by Christian Elijah on 2020-10-19.
//

import UIKit
import MapKit

class ParisMap: MKMapView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        mapSetup()
    }
    
    func mapSetup() {
        self.showsUserLocation = true
        self.mapType = .hybridFlyover
        self.layer.cornerRadius = 25
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 48.8566, longitude: 2.3522), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        self.setRegion(region, animated: true)
        
        let Paris = MKPointAnnotation()
        Paris.title = "Paris"
        Paris.coordinate = CLLocationCoordinate2D(latitude: 48.8566, longitude: 2.3522)
        self.addAnnotation(Paris)
        
    }
}
