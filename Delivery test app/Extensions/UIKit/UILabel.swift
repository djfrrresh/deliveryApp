//
//  UILabel.swift
//  Delivery test app
//
//  Created by Eugene on 03.04.23.
//

import UIKit


extension UILabel {
    
    convenience init(text: String, alignment: NSTextAlignment = .center, color: UIColor, fontSize: CGFloat, fontName: String = "SF UI Display") {
        self.init()
        self.text = text
        self.font = UIFont(name: fontName, size: fontSize)
        self.textColor = color
        self.textAlignment = alignment
        self.numberOfLines = 0
        self.adjustsFontSizeToFitWidth = true
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func countLines() -> Int {
        guard let text = self.text else { return 0 }
        let rect = CGSize(width: self.bounds.width, height: CGFloat.greatestFiniteMagnitude)
        self.layoutIfNeeded()
        let labelSize = text.boundingRect(with: rect, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font : self.font as Any], context: nil)
        return Int(ceil(labelSize.height/self.font.lineHeight))
    }
    
}
