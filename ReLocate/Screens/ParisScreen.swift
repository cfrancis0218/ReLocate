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
    var parisLabel = ParisHeaderLabel()
    var hotelButton = HotelButton()
    var foodButton = FoodButton()
    var transportButton = TransportButton()
    var hotelLabel = HotelLabel()
    var foodLabel = FoodLabel()
    var transportLabel = TransportLabel()

    // viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: Screen Color
        view.backgroundColor = .white
        
        mapSetup()
        parisSetup()
        headerLabelSetup()
        hotelSetup()
        foodSetup()
        transportSetup()
        labelSetup()
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
    
    func headerLabelSetup() {
        parisLabel.center = CGPoint(x: 0, y: 0)
        parisLabel = ParisHeaderLabel(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
        view.addSubview(parisLabel)
        parisLabel.translatesAutoresizingMaskIntoConstraints = false
        
        parisLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 450).isActive = true
        parisLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        parisLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100).isActive = true
        parisLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200).isActive = true
    }
    
    func hotelSetup() {
        hotelButton.center = CGPoint(x: 0, y: 0)
        hotelButton = HotelButton(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
        view.addSubview(hotelButton)
        hotelButton.translatesAutoresizingMaskIntoConstraints = false
        
        hotelButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 550).isActive = true
        hotelButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        hotelButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -250).isActive = true
        hotelButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150).isActive = true
    }
    
    func transportSetup() {
        transportButton.center = CGPoint(x: 0, y: 0)
        transportButton = TransportButton(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
        view.addSubview(transportButton)
        transportButton.translatesAutoresizingMaskIntoConstraints = false
        
        transportButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 550).isActive = true
        transportButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 135).isActive = true
        transportButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -135).isActive = true
        transportButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150).isActive = true
    }
    
    func foodSetup() {
        foodButton.center = CGPoint(x: 0, y: 0)
        foodButton = FoodButton(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
        view.addSubview(foodButton)
        foodButton.translatesAutoresizingMaskIntoConstraints = false
        
        foodButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 550).isActive = true
        foodButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 250).isActive = true
        foodButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        foodButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150).isActive = true
    }
    
    func labelSetup() {
        hotelLabel.center = CGPoint(x: 0, y: 0)
        transportLabel.center = CGPoint(x: 0, y: 0)
        foodLabel.center = CGPoint(x: 0, y: 0)
        
        hotelLabel = HotelLabel(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
        transportLabel = TransportLabel(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
        foodLabel = FoodLabel(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
        
        view.addSubview(hotelLabel)
        view.addSubview(transportLabel)
        view.addSubview(foodLabel)
        
        hotelLabel.translatesAutoresizingMaskIntoConstraints = false
        transportLabel.translatesAutoresizingMaskIntoConstraints = false
        foodLabel.translatesAutoresizingMaskIntoConstraints = false
        
        hotelLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 650).isActive = true
        hotelLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        hotelLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -250).isActive = true
        hotelLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        
        transportLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 650).isActive = true
        transportLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 135).isActive = true
        transportLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -135).isActive = true
        transportLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        
        foodLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 650).isActive = true
        foodLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 250).isActive = true
        foodLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        foodLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
    }
}
