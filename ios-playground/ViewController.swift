//
//  ViewController.swift
//  ios-playground
//
//  Created by 강주영 on 05/10/2020.
//  Copyright © 2020 jooyoung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    static func create() -> ViewController {
        let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
//        view.viewModel = viewModel
//        view.searchResultViewController = searchResultViewController
        return view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        var gcd = GCD()
//        gcd.test()
        
        var d = DispatchGroupTest()
        d.test()
        
        initSearchViewController()
        tabbar()
    }
    
    func initSearchViewController() {
        navigationItem.title = "hihi"
        
//        navigationItem.searchController = UISearchContainerViewController()
    }
    
    func tabbar() {
//        let rankingVC = RankingViewController.create()
//        let myPageVC = MypageViewController.create()
//
//
//        let controllers = [rankingVC, myPageVC]
//        tabBarController?.viewControllers =  controllers.map { UINavigationController(rootViewController: $0)}
    }
}
