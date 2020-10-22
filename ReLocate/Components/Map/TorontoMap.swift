//
//  TorontoMap.swift
//  ReLocate
//
//  Created by Christian Elijah on 2020-10-21.
//

import UIKit
import MapKit

class TorontoMap: MKMapView {

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
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 43.6532, longitude: -79.3832), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        self.setRegion(region, animated: true)
        
        let Toronto = MKPointAnnotation()
        Toronto.title = "Toronto"
        Toronto.coordinate = CLLocationCoordinate2D(latitude: 43.6532, longitude: -79.3832)
        self.addAnnotation(Toronto)
        
    }
}
