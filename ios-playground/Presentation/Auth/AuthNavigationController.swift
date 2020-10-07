//
//  Auth.swift
//  ios-playground
//
//  Created by 강주영 on 07/10/2020.
//  Copyright © 2020 jooyoung. All rights reserved.
//

import UIKit

class AuthNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    static func create() -> UINavigationController {
        let controller = UINavigationController(rootViewController: AuthViewController.create())
        
        
        return controller
   }
}
