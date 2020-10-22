//
//  TorontoHeaderLabel.swift
//  ReLocate
//
//  Created by Christian Elijah on 2020-10-21.
//

import UIKit

class TorontoHeaderLabel: UILabel {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        labelSetup()
    }
    
    func labelSetup() {
        self.text = "Toronto"
        self.textColor = .black
        self.font = UIFont.systemFont(ofSize: 25, weight: .semibold)
    }
}
