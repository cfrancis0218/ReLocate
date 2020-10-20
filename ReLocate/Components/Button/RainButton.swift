//
//  RainButton.swift
//  ReLocate
//
//  Created by Christian Elijah on 2020-10-15.
//

import UIKit

class RainButton: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        rainStyle()
    }
    
    func rainStyle() {
        self.setImage(UIImage(systemName: "cloud.rain.fill"), for: .normal)
        
        self.setPreferredSymbolConfiguration(UIImage.SymbolConfiguration(pointSize: 35, weight: .medium), forImageIn: .normal)
        self.tintColor = .black
        self.backgroundColor = .white
        self.layer.cornerRadius = 25
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = 15
        self.layer.shadowOpacity = 0.3
        self.isHidden = true
    }
}
