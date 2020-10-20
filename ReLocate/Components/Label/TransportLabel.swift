//
//  TransportLabel.swift
//  ReLocate
//
//  Created by Christian Elijah on 2020-10-18.
//

import UIKit

class TransportLabel: UILabel {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        labelSetup()
    }
    
    func labelSetup() {
        self.text = "Transport"
        self.textColor = .black
        self.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        self.textAlignment = .center
    }
}
