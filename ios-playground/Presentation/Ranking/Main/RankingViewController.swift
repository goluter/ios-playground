//
//  RankingViewController.swift
//  ios-playground
//
//  Created by 강주영 on 06/10/2020.
//  Copyright © 2020 jooyoung. All rights reserved.
//

import UIKit

class RankingViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let datas = ["hi", "kdlwptps://images.unspl.com/photo-1576091160651-e028ca26a943?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=tps://images.unsplash.com/photo-1576091160651-e028ca26a943?ixlib=rb-1..1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=tps://images.unsplash.com/photo-1576091160651-e028ca26a943?ixlib=rb-1..1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=tps://images.unsplas.com/photo-1576091160651-e028ca26a943?ixlib=rb-1..1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=tps://images.unsplash.com/photo-1576091160651-e028ca26a943?ixlib=rb-1..1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=tps://images.unsplash.com/photo-1576091160651-e028ca26a943?ixlib=rb-1..1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=tps://images.unsplas.com/photo-1576091160651-e028ca26a943?ixlib=rb-1..1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&", "weqweklwkelqkelkqlkelqkelkqlekqlkelqkelkqwlekqwlkelqkelqkelqkwelkqwlek"]
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        DispatchQueue.main.async { [weak self] in
            self?.navigationController?.navigationBar.sizeToFit()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //
//        self.tableView.contentInsetAdjustmentBehavior = .never
        let searchResultViewController = SearchResultViewController.create()
        navigationItem.searchController = searchResultViewController.searchViewController
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.searchController?.searchBar.sizeToFit()
        
        
        self.tableView.separatorStyle = .none
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 44
        self.tableView.register(UINib(nibName: RankingTableViewCell.nibName, bundle: nil), forCellReuseIdentifier:  RankingTableViewCell.nibName)
        
        
        
        // Do any additional setup after loading the view.
    }
    
    static func create() -> RankingViewController {
        let viewController = UIStoryboard(name: "Ranking", bundle: nil).instantiateViewController(withIdentifier: "RankingViewController") as! RankingViewController
        
        viewController.navigationItem.title = "랭킹"
        viewController.navigationItem.largeTitleDisplayMode = .always
        
        return viewController
    }
}

extension RankingViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
    }
}

extension RankingViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: RankingTableViewCell.reusableIdentifier, for: indexPath) as! RankingTableViewCell
        
        cell.drawBy(model: datas[indexPath.row])
        
        return cell
    }
}
