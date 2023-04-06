//
//  BasicVC.swift
//  Delivery test app
//
//  Created by Eugene on 03.04.23.
//

import UIKit


class BasicVC: UIViewController {
    
    let backColor = UIColor(named: "backColor")
        
    override func viewDidLoad() {
        super.viewDidLoad()
                
        self.view.backgroundColor = self.backColor
        self.navigationController?.navigationBar.tintColor = .black
    }
    
}
