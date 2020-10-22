//
//  TorontoScreen.swift
//  ReLocate
//
//  Created by Christian Elijah on 2020-10-21.
//

import UIKit

class TorontoScreen: UIViewController {
    
    // Screen Color
    var screenColor = UIColor.white
    
    // MARK: Toronto
    var torontoMap = TorontoMap()
    var torontoView = TorontoView()
    var torontoLabel = TorontoHeaderLabel()
    
    // MARK: Buttons
    var hotelButton = HotelButton()
    var transportButton = TransportButton()
    var foodButton = FoodButton()
    
    // MARK: Labels
    var hotelLabel = HotelLabel()
    var transportLabel = TransportLabel()
    var foodLabel = FoodLabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = screenColor
        // MARK: Map
        mapSetup()
        
        // MARK: UIVIEW
        torontoViewSetup()
        
        // MARK: Label
        torontoLabelSetup()
        labelSetup()
        
        // MARK: Button
        hotelSetup()
        transportSetup()
        foodSetup()
        
    }
    
    func mapSetup() {
        torontoMap.center = CGPoint(x: 0, y: 0)
        torontoMap = TorontoMap(frame: CGRect(x: 0, y: 0, width: 400, height: 500))
        self.view.addSubview(torontoMap)
        
        torontoMap.translatesAutoresizingMaskIntoConstraints = false
        torontoMap.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        torontoMap.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        torontoMap.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        torontoMap.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200).isActive = true
    }
    
    // MARK: View Setup
    func torontoViewSetup() {
        torontoView.center = CGPoint(x: 0, y: 0)
        torontoView = TorontoView(frame: CGRect(x: 0, y: 0, width: 400, height: 500))
        self.view.addSubview(torontoView)
        
        torontoView.translatesAutoresizingMaskIntoConstraints = false
        torontoView.topAnchor.constraint(equalTo: view.topAnchor, constant: 500).isActive = true
        torontoView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        torontoView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        torontoView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    // MARK: Toronto Label
    func torontoLabelSetup() {
        torontoLabel.center = CGPoint(x: 0, y: 0)
        torontoLabel = TorontoHeaderLabel(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
        view.addSubview(torontoLabel)
        torontoLabel.translatesAutoresizingMaskIntoConstraints = false
        
        torontoLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 450).isActive = true
        torontoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        torontoLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100).isActive = true
        torontoLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200).isActive = true
    }
    
    // MARK: Button Setup
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
