//
//  UIButton.swift
//  Delivery test app
//
//  Created by Eugene on 03.04.23.
//

import UIKit
import EasyPeasy


extension UIButton {
    
    convenience init(name: String, background: UIColor, textColor: UIColor) {
        self.init()
        
        self.layer.cornerRadius = 15
        
        self.backgroundColor = background
        self.setTitleColor(textColor, for: .normal)
        
        self.titleLabel?.font = UIFont(name: "Avenir Heavy", size: 16)
        
        self.setTitle(name, for: .normal)
        
        self.easy.layout([Height(46)])
    }
    
}
