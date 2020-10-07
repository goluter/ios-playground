//
//  MainTabBarController.swift
//  ios-playground
//
//  Created by 강주영 on 06/10/2020.
//  Copyright © 2020 jooyoung. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    static func create() -> UITabBarController {
        let tabViewController = MainTabBarController()
        // 현재 선택된 아이템 색깔 지정
        tabViewController.tabBar.tintColor = .green
                
        // 탭바의 색깔
        tabViewController.tabBar.barTintColor = .blue
        
        return tabViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //
        self.delegate = self
        // Do any additional setup after loading the view.
        
        initViewControllers()
    }
    
    func initViewControllers() {
        let rankingNavVC = RankingNavigationController.create()
        let myPageNavVC = MyPageNavigationController.create()
        let authNavVC = AuthNavigationController.create()
        
        rankingNavVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        myPageNavVC.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 1)
        authNavVC.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 2)

        let controllers = [rankingNavVC, myPageNavVC, authNavVC]
//        self.viewControllers = controllers.map { UINavigationController(rootViewController: $0)
//        }
        self.viewControllers = controllers
    }
}

extension MainTabBarController: UITabBarControllerDelegate {
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print("selted")
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            tabBar.tintColor = .black
        }, completion: { finished in
            
        })
    }
}
