//
//  ViewController.swift
//  Delivery test app
//
//  Created by Eugene on 03.04.23.
//

import UIKit
import EasyPeasy


class MenuVC: BasicVC {
    
    let locationLabel = UILabel(text: "Москва", alignment: .center, color: .black, fontSize: 17, fontName: "SFUIDisplay-Medium")
    
    let arrowIcon: UIImageView = {
        let imageView = UIImageView(image: UIImage(systemName: "chevron.down"))
        imageView.tintColor = .black
        return imageView
    }()
    
    static private let bannerLayout: UICollectionViewFlowLayout = {
        var layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 0
        layout.itemSize = CGSize(width: 332, height: 112)
        return layout
    }()
    let bannersCV: UICollectionView = {
        let cv = UICollectionView(frame: .zero, collectionViewLayout: bannerLayout)
        cv.backgroundColor = .clear
        cv.register(BannerCVCell.self, forCellWithReuseIdentifier: BannerCVCell.id)
        return cv
    }()
    let banners: [String] = ["menu3", "menu4"]
    
    static private let categoryLayout: UICollectionViewFlowLayout = {
        var layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 8
        layout.itemSize = CGSize(width: 88, height: 32)
        return layout
    }()
    let categoryCV: UICollectionView = {
        let cv = UICollectionView(frame: .zero, collectionViewLayout: categoryLayout)
        cv.backgroundColor = .clear
        cv.register(CategoryCVCell.self, forCellWithReuseIdentifier: CategoryCVCell.id)
        return cv
    }()
    let categories: [String] = ["Пицца", "Комбо", "Десерты", "Напитки"]
    
    let ordersTV: UITableView = {
        let tv = UITableView()
        tv.register(OrderTVCell.self, forCellReuseIdentifier: OrderTVCell.id)
        tv.backgroundColor = .clear
        tv.layer.cornerRadius = 20
        return tv
    }()
    let orders = Orders.shared.ordersArray
    var allOrders: [OrderData] = [OrderData]()
    
    var categoryCount: Int = 0
    
    var row: Int = 0
    var linesCount: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
                        
        self.bannersCV.delegate = self
        self.categoryCV.delegate = self
        self.ordersTV.delegate = self
        
        self.bannersCV.dataSource = self
        self.categoryCV.dataSource = self
        self.ordersTV.dataSource = self
        
        self.locationStack()
        self.menuSubviews()
        self.countAllOrders()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.ordersTV.reloadData()
    }

}

