//
//  MenuCVData.swift
//  Delivery test app
//
//  Created by Eugene on 03.04.23.
//

import UIKit


extension MenuVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.bannersCV {
            return self.banners.count
        } else {
            return self.categories.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.bannersCV {
            let cell = self.bannersCV.dequeueReusableCell(withReuseIdentifier: BannerCVCell.id, for: indexPath) as! BannerCVCell
            
            let bannerImage = self.banners[indexPath.row]
            
            cell.configure(image: bannerImage)
            
            return cell
        } else {
            let cell = self.categoryCV.dequeueReusableCell(withReuseIdentifier: CategoryCVCell.id, for: indexPath) as! CategoryCVCell
            
            let categoryName = self.categories[indexPath.row]
            
            cell.configure(text: categoryName)
            
            let selectedRows = self.ordersTV.indexPathsForSelectedRows
            if let selectedRow = selectedRows?[1] as? NSIndexPath {
                self.ordersTV.scrollToRow(at: selectedRow as IndexPath, at: .middle, animated: true)
            }
            
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.categoryCV.selectItem(at: indexPath, animated: true, scrollPosition: UICollectionView.ScrollPosition.centeredHorizontally)
        
        let tappedCell = self.categoryCV.cellForItem(at:indexPath) as! CategoryCVCell
        let cellText = tappedCell.categoryLabel.text ?? "order name"
        let cellRow = self.categoryCV.indexPath(for: tappedCell)?.row ?? 0
        
        self.selectOrdersByCategory(text: cellText, cellRow: cellRow)
    }

}
