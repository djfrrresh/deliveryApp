//
//  MenuUXFuncs.swift
//  Delivery test app
//
//  Created by Eugene on 06.04.23.
//

import UIKit
import EasyPeasy


extension MenuVC {
    
    func countAllOrders() {
        for orderType in self.categories {
            let count: Int = self.orders[OrderCategory(rawValue: orderType) ?? .pizza]?.count ?? 0
            
            self.categoryCount += count
            
            self.allOrders += self.orders[OrderCategory(rawValue: orderType)!]!
        }
    }
    
    func selectOrdersByCategory(text: String, cellRow: Int) {
        let rowsCount = (self.orders[OrderCategory(rawValue: text) ?? .pizza]?.count ?? 0) * cellRow
        let topRow = IndexPath(row: rowsCount, section: 0)
                               
        self.ordersTV.scrollToRow(at: topRow, at: .top, animated: true)
    }
    
}
