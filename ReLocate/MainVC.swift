//
//  ViewController.swift
//  ReLocate
//
//  Created by Christian Elijah on 2020-10-01.
//

import UIKit
import MapKit

class MainVC: UIViewController {
    
    // MARK: Components
    var plus = PlusButton()
    var topView = LocationView()
    var secondView = LocationView2()
    var parisImage = ParisImage(frame: CGRect(x: 0, y: 0, width: 400, height: 825))
    var plus2 = Plus2Button()
    var plus3 = RainButton()
    var image = UIImage(named: "exterior")
    var boraImage = Image(frame: CGRect(x: 0, y: 0, width: 400, height: 825))
    
    
    // MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Screen Setup Fucntion Call
        ScreenSetup()
        // Button Setup Fucntion Call
        buttonView()
        
        // Style Setup Fucntion Call
        topViewStyle()
        
        // Button2 Setup Fucntion Call
        buttonView2()
        
        // Paris View Fucntion Style
        ParisViewStyle()
        
        // Button3 Setup Fucntion Call
        buttonView3()
    }
    
    // MARK: Screen Setup
    func ScreenSetup() {
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .white
    }
    
    // MARK: Button Setup
    func buttonView() {
        plus.center = CGPoint(x: 0, y: 0)
        plus = PlusButton(frame: CGRect(x: 0, y: 0, width: 400, height: 825))
        self.view.addSubview(plus)
        
        plus.translatesAutoresizingMaskIntoConstraints = false
        plus.topAnchor.constraint(equalTo: view.topAnchor, constant: 710).isActive = true
        plus.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 290).isActive = true
        plus.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        plus.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        
        plus.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
    }
    
    // MARK: Button2 Setup
    func buttonView2() {
        plus2.center = CGPoint(x: 0, y: 0)
        plus2 = Plus2Button(frame: CGRect(x: 0, y: 0, width: 400, height: 825))
        self.view.addSubview(plus2)
        
        plus2.translatesAutoresizingMaskIntoConstraints = false
        plus2.topAnchor.constraint(equalTo: view.topAnchor, constant: 75).isActive = true
        plus2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 290).isActive = true
        plus2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        plus2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -550).isActive = true
        
        plus2.addTarget(self, action: #selector(BookFlight), for: .touchUpInside)
    }
    
    // MARK: Objc bookAction Setup
    @objc func BookFlight() {
        self.navigationController?.pushViewController(BoraVacation(), animated: true)
    }
    
    // MARK: Button3 Setup
    func buttonView3() {
        plus3.center = CGPoint(x: 0, y: 0)
        plus3 = RainButton(frame: CGRect(x: 0, y: 0, width: 400, height: 825))
        self.view.addSubview(plus3)
        
        plus3.translatesAutoresizingMaskIntoConstraints = false
        plus3.topAnchor.constraint(equalTo: view.topAnchor, constant: 275).isActive = true
        plus3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 290).isActive = true
        plus3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        plus3.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -350).isActive = true
        
        plus3.addTarget(self, action: #selector(BookFlight2), for: .touchUpInside)
    }
    
    // MARK: Objc bookAction Setup
    @objc func BookFlight2() {
        self.navigationController?.pushViewController(ParisScreen(), animated: true)
    }
    
    // MARK: Objc tapAction Setup
    @objc func tapAction() {
        
        // Hidden Init
        topView.isHidden = false
        boraImage.isHidden = false
        plus2.isHidden = false
        
        secondView.isHidden = false
        parisImage.isHidden = false
        plus3.isHidden = false
        
        // MARK: Animations
        LocationView.animate(withDuration: 0.68, delay: 0.01, options: .curveEaseIn, animations: ({
            self.topView.center.y += 100
            self.boraImage.center.y += 100
            self.plus2.center.y += 100
        }))
        
        LocationView2.animate(withDuration: 0.68, delay: 0.01, options: .curveEaseIn, animations: ({
            self.secondView.center.y += 400
            self.parisImage.center.y += 400
            self.plus3.center.y += 400
        }))
        
    }
    
    // MARK: TopViewStyle Setup
    func topViewStyle() {
        topView.center = CGPoint(x: 0, y: 0)
        topView = LocationView(frame: CGRect(x: 0, y: 0, width: 400, height: 825))
        boraImage = Image(frame: CGRect(x: 0, y: 0, width: 400, height: 825))
        boraImage.center = CGPoint(x: 0, y: 0)
        self.view.addSubview(topView)
        self.view.addSubview(boraImage)
        
        boraImage.translatesAutoresizingMaskIntoConstraints = false
        boraImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 75).isActive = true
        boraImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        boraImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        boraImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -550).isActive = true
        
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.topAnchor.constraint(equalTo: view.topAnchor, constant: 75).isActive = true
        topView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        topView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        topView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -550).isActive = true
    }
    
    // MARK: ParisViewStyle Setup
    func ParisViewStyle() {
        secondView.center = CGPoint(x: 0, y: 0)
        secondView = LocationView2(frame: CGRect(x: 0, y: 0, width: 400, height: 825))
        parisImage = ParisImage(frame: CGRect(x: 0, y: 0, width: 400, height: 825))
        parisImage.center = CGPoint(x: 0, y: 0)
        self.view.addSubview(secondView)
        self.view.addSubview(parisImage)
        
        parisImage.translatesAutoresizingMaskIntoConstraints = false
        parisImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 275).isActive = true
        parisImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        parisImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        parisImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -350).isActive = true
        
        secondView.translatesAutoresizingMaskIntoConstraints = false
        secondView.topAnchor.constraint(equalTo: view.topAnchor, constant: 275).isActive = true
        secondView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        secondView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        secondView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -350).isActive = true
    }

}

