//
//  RankingNavigationController.swift
//  ios-playground
//
//  Created by 강주영 on 06/10/2020.
//  Copyright © 2020 jooyoung. All rights reserved.
//

import UIKit

class RankingNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    static func create() -> UINavigationController {
        let controller = UINavigationController(rootViewController: RankingViewController.create())
        

        controller.navigationBar.prefersLargeTitles = true
        controller.navigationItem.largeTitleDisplayMode = .automatic
        
        
//        controller.navigationBar.sizeToFit()
//        controller.navigationBar.prefersLargeTitles = true
         // System icons: https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/system-icons/
        controller.title = "hihi"
        //        rankingVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
                
        //        let config = UIImage.SymbolConfiguration(textStyle: .largeTitle)
                
        controller.tabBarItem = UITabBarItem(title: "we1", image: UIImage(systemName: "magnifyingglass"), selectedImage: nil)
        
        return controller
    }
}
