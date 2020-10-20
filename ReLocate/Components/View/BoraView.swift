//
//  BoraView.swift
//  ReLocate
//
//  Created by Christian Elijah on 2020-10-16.
//

import UIKit

class BoraView: UIView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        viewSetup()
    }
    func viewSetup() {
        self.backgroundColor = .white
        self.layer.cornerRadius = 25
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = 15
        self.layer.shadowOpacity = 0.5
    }
}
