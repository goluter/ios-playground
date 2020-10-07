//
//  SearchResultViewController.swift
//  ios-playground
//
//  Created by 강주영 on 07/10/2020.
//  Copyright © 2020 jooyoung. All rights reserved.
//

import UIKit

class SearchResultViewController: UIViewController {
    static func create() -> SearchResultViewController {
        let controller = UIStoryboard(name: "Ranking", bundle: nil).instantiateViewController(withIdentifier: "SearchResultViewController") as! SearchResultViewController
        
        return controller
    }
    
    lazy var searchViewController = { () -> UISearchController in
        let controller = UISearchController(searchResultsController: self)
        controller.searchBar.placeholder = "App Store"
        controller.searchBar.searchBarStyle = .minimal
        controller.definesPresentationContext = true
        
        return controller
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.searchViewController.searchBar.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

extension SearchResultViewController : UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
    }
}
