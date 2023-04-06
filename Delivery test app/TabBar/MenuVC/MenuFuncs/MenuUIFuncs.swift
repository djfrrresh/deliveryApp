//
//  MenuUIFuncs.swift
//  Delivery test app
//
//  Created by Eugene on 03.04.23.
//

import UIKit
import EasyPeasy


extension MenuVC {
    
    func locationStack() {
        let locationStack = UIStackView()
        
        self.setStack(stack: locationStack, axis: .horizontal, spacing: 8, alignment: .fill, distribution: .fill, viewsArray: [self.locationLabel, self.arrowIcon])
        
        self.view.addSubview(locationStack)
        locationStack.easy.layout([Top(16).to(self.view.safeAreaLayoutGuide, .top), Left(16)])
    }
    
    func menuSubviews() {
        self.view.addSubview(self.bannersCV)
        self.view.addSubview(self.categoryCV)
        self.view.addSubview(self.ordersTV)

        self.bannersCV.easy.layout([Top(24).to(self.locationLabel, .bottom), Left(0), Right(0), Height(112)])
        self.categoryCV.easy.layout([Top(24).to(self.bannersCV, .bottom), Left(16), Right(16), Height(32)])
        self.ordersTV.easy.layout([Top(24).to(self.categoryCV, .bottom), Bottom(0), Left(0), Right(0)])
    }
    
}
