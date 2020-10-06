//
//  MypageViewController.swift
//  ios-playground
//
//  Created by 강주영 on 06/10/2020.
//  Copyright © 2020 jooyoung. All rights reserved.
//

import UIKit

class MypageViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    static func create() -> MypageViewController {
        let viewController = UIStoryboard(name: "MypageViewController", bundle: nil).instantiateViewController(withIdentifier: "MypageViewController") as! MypageViewController
        
        viewController.navigationItem.title = "마이페이지"
        viewController.navigationItem.largeTitleDisplayMode = .automatic
    
        return viewController
    }
}
