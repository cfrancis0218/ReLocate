//
//  ParisImage.swift
//  ReLocate
//
//  Created by Christian Elijah on 2020-10-15.
//

import UIKit

class ParisImage: UIImageView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        image()
    }
    
    func image() {
        self.image = #imageLiteral(resourceName: "soroush-karimi-IZ86s5eV4hA-unsplash")
        self.layer.cornerRadius = 25
        self.isHidden = true
        self.clipsToBounds = true
    }
}
