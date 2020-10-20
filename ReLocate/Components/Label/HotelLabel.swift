//
//  HotelLabel.swift
//  ReLocate
//
//  Created by Christian Elijah on 2020-10-18.
//

import UIKit

class HotelLabel: UILabel {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        labelSetup()
    }
    
    func labelSetup() {
        self.text = "Hotel"
        self.textAlignment = .center
        self.textColor = .black
        self.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
    }
}
