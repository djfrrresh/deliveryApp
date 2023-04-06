//
//  File.swift
//  Delivery test app
//
//  Created by Eugene on 03.04.23.
//

import UIKit


extension BasicVC {
    
    func setStack(stack: UIStackView, axis: NSLayoutConstraint.Axis, spacing: CGFloat, alignment: UIStackView.Alignment, distribution: UIStackView.Distribution, viewsArray: [UIView]) {
        stack.axis = axis
        stack.spacing = spacing
        stack.alignment = alignment
        stack.distribution = distribution
        for view in viewsArray {
            stack.addArrangedSubview(view)
        }
    }
    
}
