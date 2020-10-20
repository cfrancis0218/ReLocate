//
//  ParisScreen.swift
//  ReLocate
//
//  Created by Christian Elijah on 2020-10-15.
//

import UIKit
import MapKit

class ParisScreen: UIViewController {
    
    // MARK: Vaiables
    var parisMap = ParisMap()
    var parisView = ParisView()

    // viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: Screen Color
        view.backgroundColor = .white
        
        mapSetup()
        parisSetup()
    }
    
    // MARK: Map Setup
    func mapSetup() {
        parisMap.center = CGPoint(x: 0, y: 0)
        parisMap = ParisMap(frame: CGRect(x: 0, y: 0, width: 400, height: 500))
        self.view.addSubview(parisMap)
        
        parisMap.translatesAutoresizingMaskIntoConstraints = false
        parisMap.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        parisMap.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        parisMap.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        parisMap.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200).isActive = true
    }
    
    func parisSetup() {
        parisView.center = CGPoint(x: 0, y: 0)
        parisView = ParisView(frame: CGRect(x: 0, y: 0, width: 400, height: 500))
        self.view.addSubview(parisView)
        
        parisView.translatesAutoresizingMaskIntoConstraints = false
        parisView.topAnchor.constraint(equalTo: view.topAnchor, constant: 500).isActive = true
        parisView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        parisView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        parisView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}
