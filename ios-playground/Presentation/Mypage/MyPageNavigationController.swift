//
//  MyPageNavigationController.swift
//  ios-playground
//
//  Created by 강주영 on 06/10/2020.
//  Copyright © 2020 jooyoung. All rights reserved.
//

import UIKit

class MyPageNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    static func create() -> UINavigationController {
       let controller = UINavigationController(rootViewController: MypageViewController.create())
       
        controller.navigationBar.prefersLargeTitles = true
        // System icons: https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/system-icons/
       controller.title = "마이페이지"
       controller.tabBarItem = UITabBarItem(title: "we1", image: UIImage(systemName: "magnifyingglass"), selectedImage: nil)
       
       return controller
   }
}
