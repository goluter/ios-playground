//
//  MypageViewController.swift
//  ios-playground
//
//  Created by 강주영 on 06/10/2020.
//  Copyright © 2020 jooyoung. All rights reserved.
//

import UIKit

class MypageViewController: UITableViewController {
    
    
//    @IBOutlet weak var screenShotCell: ScreenShotTableViewCell!
    
    @IBOutlet weak var ttts: ScreenShotTableViewCell!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never
        tableView.rowHeight = UITableView.automaticDimension
        
        var dispathGroup = DispatchGroup()
        
        ttts.drawBy(group: dispathGroup)
        dispathGroup.notify(queue: DispatchQueue.main) {
//            self.tableView.beginUpdates()
//            self.tableView.endUpdates()
             UIView.performWithoutAnimation {
                self.tableView.reloadData()
//                self.tableView.beginUpdates()
                
//               self.tableView.reloadRows(at: [IndexPath.init(row: 0, section: 0)], with: .automatic)
//               self.tableView.endUpdates()
            }
        }
        
//        UIView.performWithoutAnimation {
//          tableView.beginUpdates()
//          tableView.reloadRows(at: [IndexPath.init(row: 0, section: 0)], with: .automatic)
//          tableView.endUpdates()
//       }
//        tableView.reloadRows(at: [IndexPath.init(row: 0, section: 0)], with: .automatic)
    }
    
    static func create() -> MypageViewController {
        let viewController = UIStoryboard(name: "MypageViewController", bundle: nil).instantiateViewController(withIdentifier: "MypageViewController") as! MypageViewController
        
        viewController.navigationItem.title = "마이페이지"
        viewController.navigationItem.largeTitleDisplayMode = .automatic
    
        return viewController
    }
}

extension MypageViewController {
//    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
//    {
//
////        let cell = self.tableView(self.tableView, heightForRowAtIndexPath: indexPath)
//        let cell = self.tableView(tableView: self.tableView, heightForRowAtIndexPath: indexPath)
//        let height = ceil(cell.systemLayoutSizeFittingSize(CGSizeMake(self.tableView.bounds.size.width, 1), withHorizontalFittingPriority: 1000, verticalFittingPriority: 1).height)
//
//        return height
//    }\
     override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
//
//    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
//        return UITableView.automaticDimension
//    }
}
