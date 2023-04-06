//
//  MenuOrderTVCell.swift
//  Delivery test app
//
//  Created by Eugene on 04.04.23.
//

import UIKit
import EasyPeasy


class OrderTVCell: UITableViewCell {
    
    static let id = "OrderCell"
    
    let backView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    let orderNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "SFUIDisplay-Semibold", size: 17)
        label.textColor = UIColor(red: 0.133, green: 0.157, blue: 0.192, alpha: 1)
        label.numberOfLines = 0
        return label
    }()
    let orderDescriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "SFUIDisplay-Regular", size: 13)
        label.textColor = UIColor(red: 0.665, green: 0.668, blue: 0.679, alpha: 1)
        label.numberOfLines = 0
        return label
    }()
    
    let orderImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    let priceButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear

        button.layer.borderColor = CGColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 1)
        button.layer.cornerRadius = 6
        button.layer.borderWidth = 1
        
        button.titleLabel?.font = UIFont(name: "SFUIDisplay-Regular", size: 13)
        button.setTitleColor(UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 1), for: .normal)
        return button
    }()
        
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(self.backView)
        self.backView.addSubview(self.orderNameLabel)
        self.backView.addSubview(self.orderDescriptionLabel)
        self.backView.addSubview(self.orderImageView)
        self.backView.addSubview(self.priceButton)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        self.backView.easy.layout([Left(0), Right(0), Top(0), Bottom(0)])
        self.orderImageView.easy.layout([CenterY(), Left(16), Width(132), Height(132)])
        self.orderNameLabel.easy.layout([Top(32), Left(32).to(self.orderImageView, .right), Right(24)])
        self.orderDescriptionLabel.easy.layout([Top(8).to(self.orderNameLabel, .bottom), Left(32).to(self.orderImageView, .right), Right(24)])
        self.priceButton.easy.layout([Right(24), Width(87), Height(32), Top(16).to(self.orderDescriptionLabel, .bottom)])
    }
    
    func configure(name: String, description: String, image: String, price: Int) {
        self.orderNameLabel.text = name
        self.orderDescriptionLabel.text = description
        self.orderImageView.image = UIImage(named: image)
        self.priceButton.setTitle("от \(price) р", for: .normal)
    }
    
}
