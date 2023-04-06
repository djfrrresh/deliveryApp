//
//  MenuBannerCVCell.swift
//  Delivery test app
//
//  Created by Eugene on 04.04.23.
//

import UIKit
import EasyPeasy


class BannerCVCell: UICollectionViewCell {
    
    static let id = "BannerCell"
    
    var bannerImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = UIColor.clear
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(self.bannerImage)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.bannerImage.easy.layout([Height(112), Width(300), CenterX()])
    }
    
    func configure(image: String) {
        self.bannerImage.image = UIImage(named: image)
    }
    
}
