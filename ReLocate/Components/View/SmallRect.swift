//
//  SmallRect.swift
//  ReLocate
//
//  Created by Christian Elijah on 2020-10-20.
//

import UIKit

class SmallRect: UIView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        smallRectangle()
    }
    
    final func smallRectangle() {
        self.backgroundColor = .white
        self.layer.cornerRadius = 3
    }
}
