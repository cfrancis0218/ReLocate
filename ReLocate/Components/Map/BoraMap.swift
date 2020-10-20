//
//  BoraMap.swift
//  ReLocate
//
//  Created by Christian Elijah on 2020-10-16.
//

import UIKit
import MapKit

class BoraMap: MKMapView {

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
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -16.509701, longitude: -151.740538), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
        self.setRegion(region, animated: true)
        
        let BoraBora = MKPointAnnotation()
        BoraBora.title = "Bora Bora"
        BoraBora.coordinate = CLLocationCoordinate2D(latitude: -16.439498242, longitude: -151.751496994)
        self.addAnnotation(BoraBora)
        
        let Hotel = MKPointAnnotation()
        Hotel.title = "Hotel Bora Bora"
        Hotel.coordinate = CLLocationCoordinate2D(latitude: -16.5356, longitude: -151.7464)
        self.addAnnotation(Hotel)
    }
}

