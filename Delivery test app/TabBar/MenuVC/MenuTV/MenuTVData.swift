//
//  MenuTVData.swift
//  Delivery test app
//
//  Created by Eugene on 04.04.23.
//

import UIKit
import EasyPeasy


extension MenuVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.categoryCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: OrderTVCell.id, for: indexPath) as! OrderTVCell
        
        let name = self.allOrders[indexPath.row].name
        let description = self.allOrders[indexPath.row].description
        let image = self.allOrders[indexPath.row].image
        let price = self.allOrders[indexPath.row].price
                
        cell.configure(name: name, description: description, image: image, price: price)
                                
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
                
        return 180
    }
    
    private func tableView(tableView: UITableView,
        heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let y = scrollView.contentOffset.y
        let swipingDown = y <= 0
        
        UIView.animate(withDuration: 0.3) {
            self.bannersCV.alpha = swipingDown ? 1.0 : 0.0
            
            if self.bannersCV.alpha == 0.0 {
                self.categoryCV.easy.layout([Top(24).to(self.locationLabel, .bottom)])
            } else {
                self.categoryCV.easy.layout([Top(24).to(self.bannersCV, .bottom)])
            }
            self.view.layoutIfNeeded()
        }
    }
}

