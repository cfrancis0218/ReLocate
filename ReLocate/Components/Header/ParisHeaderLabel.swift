//
//  ParisHeaderLabel.swift
//  ReLocate
//
//  Created by Christian Elijah on 2020-10-20.
//

import UIKit

class ParisHeaderLabel: UILabel {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        labelSetup()
    }
    
    func labelSetup() {
        self.text = "Paris"
        self.textColor = .black
        self.font = UIFont.systemFont(ofSize: 25, weight: .semibold)
    }
}
