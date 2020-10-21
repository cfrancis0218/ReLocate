//
//  PlusButton.swift
//  ReLocate
//
//  Created by Christian Elijah on 2020-10-13.
//

import UIKit

class PlusButton: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        plusStyle()
    }
    
    func plusStyle() {
        self.setImage(UIImage(systemName: "paperplane"), for: .normal)
        
        self.setPreferredSymbolConfiguration(UIImage.SymbolConfiguration(pointSize: 25, weight: .medium), forImageIn: .normal)
        self.tintColor = .black
        self.backgroundColor = .white
        self.layer.cornerRadius = 30
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = 15
        self.layer.shadowOpacity = 0.3
    }
}
