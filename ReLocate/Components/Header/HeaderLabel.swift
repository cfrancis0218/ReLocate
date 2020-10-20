//
//  Header.swift
//  ReLocate
//
//  Created by Christian Elijah on 2020-10-15.
//

import UIKit

class BoraBoraLabel: UILabel {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        labelSetup()
    }
    
    func labelSetup() {
        self.text = "Bora Bora"
        self.textColor = .black
        self.font = UIFont.systemFont(ofSize: 25, weight: .semibold)
    }
}
