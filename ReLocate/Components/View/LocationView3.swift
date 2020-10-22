//
//  LocationView3.swift
//  ReLocate
//
//  Created by Christian Elijah on 2020-10-21.
//

import UIKit

class LocationView3: UIView {

    var torontoImage: UIImageView = UIImageView()

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
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = 15
        self.layer.shadowOpacity = 0.3
        self.isHidden = true
        torontoImage.isHidden = true
        torontoImage.clipsToBounds = true
    }
}
