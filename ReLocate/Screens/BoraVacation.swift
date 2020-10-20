//
//  BoraVacation.swift
//  ReLocate
//
//  Created by Christian Elijah on 2020-10-15.
//

import UIKit
import MapKit

class BoraVacation: UIViewController {
    
    var map = BoraMap()
    var boraView = BoraView()
    var headerLabel = BoraBoraLabel()
    var hotelButton = HotelButton()
    var transportButton = TransportButton()
    var foodButton = FoodButton()
    var hotelLabel = HotelLabel()
    var transportLabel = TransportLabel()
    var foodLabel = FoodLabel()
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        mapSetup()
        boraSetup()
        headerLabelSetup()
        hotelSetup()
        transportSetup()
        foodSetup()
        labelSetup()
        
        hotelButton.addTarget(self, action: #selector(moveHotel), for: .touchUpInside)
        transportButton.addTarget(self, action: #selector(moveTransport), for: .touchUpInside)
        foodButton.addTarget(self, action: #selector(moveFood), for: .touchUpInside)
    }
    
    @objc func moveHotel() {
        self.navigationController?.pushViewController(HotelList(), animated: true)
    }
    @objc func moveTransport() {
        self.navigationController?.pushViewController(TransportScreen(), animated: true)
    }
    @objc func moveFood() {
        self.navigationController?.pushViewController(FoodList(), animated: true)
    }
    
    func mapSetup() {
        map.center = CGPoint(x: 0, y: 0)
        map = BoraMap(frame: CGRect(x: 0, y: 0, width: 400, height: 500))
        self.view.addSubview(map)
        
        map.translatesAutoresizingMaskIntoConstraints = false
        map.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        map.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        map.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        map.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200).isActive = true
    }
    
    
    func boraSetup() {
        boraView.center = CGPoint(x: 0, y: 0)
        boraView = BoraView(frame: CGRect(x: 0, y: 0, width: 400, height: 500))
        self.view.addSubview(boraView)
        
        boraView.translatesAutoresizingMaskIntoConstraints = false
        boraView.topAnchor.constraint(equalTo: view.topAnchor, constant: 500).isActive = true
        boraView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        boraView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        boraView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    func headerLabelSetup() {
        headerLabel.center = CGPoint(x: 0, y: 0)
        headerLabel = BoraBoraLabel(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
        view.addSubview(headerLabel)
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        
        headerLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 450).isActive = true
        headerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        headerLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100).isActive = true
        headerLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200).isActive = true
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

