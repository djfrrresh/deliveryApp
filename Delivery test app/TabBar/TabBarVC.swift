//
//  TabBarVC.swift
//  Delivery test app
//
//  Created by Eugene on 03.04.23.
//

import UIKit
import EasyPeasy


class TabBarVC: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        
        UITabBar.appearance().backgroundColor = .white
        UITabBar.appearance().tintColor = UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 1)
        
        view.bringSubviewToFront(tabBar)

        let menuVC = MenuVC()
        let locationVC = UINavigationController(rootViewController: LocationVC())
        let profileVC = UINavigationController(rootViewController: ProfileVC())
        let backetVC = UINavigationController(rootViewController: BacketVC())
        
        self.setViewControllers([menuVC, locationVC, profileVC, backetVC], animated: false)
                        
        guard let items = self.tabBar.items else { return }
        
        let images = ["menuImage", "locationImage", "profileImage", "backetImage"]
        let titles = ["Меню", "Контакты", "Профиль", "Корзина"]
        
        for i in 0..<items.count {
            items[i].image = UIImage(named: images[i])
            items[i].title = titles[i]
        }
    }
    
}

extension TabBarVC: UITabBarControllerDelegate  {
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {

        guard let fromView = selectedViewController?.view, let toView = viewController.view else {
          return false
        }

        if fromView != toView {
          UIView.transition(from: fromView, to: toView, duration: 0.3, options: [.transitionCrossDissolve], completion: nil)
        }
        
        return true
    }
    
}
