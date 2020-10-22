//
//  TorontoImage.swift
//  ReLocate
//
//  Created by Christian Elijah on 2020-10-21.
//

import UIKit

class TorontoImage: UIImageView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        image()
    }
    
    func image() {
        self.image = #imageLiteral(resourceName: "brxxto-vJi2z0LSsqQ-unsplash")
        self.layer.cornerRadius = 25
        self.isHidden = true
        self.clipsToBounds = true
    }
}
