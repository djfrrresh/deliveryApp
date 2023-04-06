//
//  MenuCategoryCVCell.swift
//  Delivery test app
//
//  Created by Eugene on 04.04.23.
//

import UIKit
import EasyPeasy


class CategoryCVCell: UICollectionViewCell {
    
    static let id = "CategoryCell"
    
    let backView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.layer.cornerRadius = 16
        view.layer.borderWidth = 1
        view.layer.borderColor = CGColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.4)
        return view
    }()
    
    let categoryLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "SFUIDisplay-Regular", size: 13)
        label.textColor = UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.4)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(self.backView)
        self.backView.addSubview(self.categoryLabel)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.backView.easy.layout([Height(32), Width(88), CenterX()])
        self.categoryLabel.easy.layout([CenterX(), CenterY()])
    }
    
    func configure(text: String) {
        self.categoryLabel.text = text
    }
    
    override var isSelected: Bool {
        didSet {
            if self.isSelected {
                UIView.animate(withDuration: 0.2) {
                    self.backView.backgroundColor = UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.4)
                    self.categoryLabel.font = UIFont(name: "SFUIDisplay-Bold", size: 13)
                    self.categoryLabel.textColor = UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 1)
                    self.backView.layer.borderWidth = 0
                }
            }
            else {
                UIView.animate(withDuration: 0.2) {
                    self.backView.backgroundColor = .clear
                    self.categoryLabel.font = UIFont(name: "SFUIDisplay-Regular", size: 13)
                    self.categoryLabel.textColor = UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.4)
                    self.backView.layer.borderWidth = 1
                }
            }
        }
    }
    
}
