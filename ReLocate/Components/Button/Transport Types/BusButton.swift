//
//  BusButton.swift
//  ReLocate
//
//  Created by Christian Elijah on 2020-10-20.
//

import UIKit

class BusButton: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        busStyle()
    }
    
    func busStyle() {
        self.setImage(UIImage(systemName: "bus"), for: .normal)
        
        self.setPreferredSymbolConfiguration(UIImage.SymbolConfiguration(pointSize: 25, weight: .medium), forImageIn: .normal)
        self.tintColor = .black
        self.backgroundColor = .white
        self.layer.cornerRadius = 30
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = 15
        self.layer.shadowOpacity = 0.3
    }
}
