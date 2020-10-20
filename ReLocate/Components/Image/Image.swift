//
//  Image.swift
//  ReLocate
//
//  Created by Christian Elijah on 2020-10-15.
//

import UIKit

class Image: UIImageView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        image()
    }
    
    func image() {
        self.image = #imageLiteral(resourceName: "exterior")
        self.layer.cornerRadius = 25
        self.isHidden = true
        self.clipsToBounds = true
    }
    
}
