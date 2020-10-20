//
//  HotelButton.swift
//  ReLocate
//
//  Created by Christian Elijah on 2020-10-18.
//

import UIKit

class HotelButton: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        HotelButtonSetup()
    }
    
    func HotelButtonSetup() {
        self.setImage(UIImage(systemName: "house"), for: .normal)
        
        self.setPreferredSymbolConfiguration(UIImage.SymbolConfiguration(pointSize: 35, weight: .medium), forImageIn: .normal)
        self.tintColor = .white
        self.backgroundColor = .systemBlue
        self.layer.cornerRadius = 45
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = 15
        self.layer.shadowOpacity = 0.3
    }
}
