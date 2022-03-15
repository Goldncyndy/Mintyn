//
//  TabsViewController.swift
//  MintynApp
//
//  Created by Decagon on 13/03/2022.
//

import UIKit

class TabsViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

      // MARK: Create instance of viewControllers
          navigationController?.isNavigationBarHidden = true
            let home = HomeViewController()
            let settings = SettingsViewController()
            let cards = CardsViewController()
            let support = SupportViewController()
            let finances = FinancesViewController()
      
      // MARK: Assign viewController to tab Bar
          self.setViewControllers([home, finances, cards, support, settings], animated: false)
          guard let items = self.tabBar.items else { return }
      
          let images = ["iphone.homebutton", "banknote", "creditcard.fill", "purchased.circle.fill", "star.fill"]
      
          let titles = ["home", "finances", "cards", "support", "settings"]
          for item in 0...4 {
            items[item].image = UIImage(systemName: images[item])
          }
          for title in 0...4 {
            items[title].title = titles[title]
          }
      // MARK: Changing tint Color
          self.tabBar.tintColor =  UIColor(red: 0.67, green: 0.50, blue: 0.22, alpha: 1.00)
    }
    
}
