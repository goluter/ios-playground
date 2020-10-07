//
//  RankingTableViewCell.swift
//  ios-playground
//
//  Created by 강주영 on 06/10/2020.
//  Copyright © 2020 jooyoung. All rights reserved.
//

import UIKit

class RankingTableViewCell: UITableViewCell {
    static let nibName = "RankingTableViewCell"
    static let reusableIdentifier = "RankingTableViewCell"
    
    @IBOutlet weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func drawBy(model: String) {
        title.text = model
        title.numberOfLines = 0
        
         DispatchQueue.global().async {
                    ImageDownloadManger.shared().download("https://images.unsplash.com/photo-1576091160651-e028ca26a943?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80") { (image) in
                            DispatchQueue.main.async {
        //
                                self.title.numberOfLines = 0
                                self.title.text = "wkdlwptps://images.unspl.com/photo-1576091160651-e028ca26a943?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=tps://images.unsplash.com/photo-1576091160651-e028ca26a943?ixlib=rb-1..1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=tps://images.unsplash.com/photo-1576091160651-e028ca26a943?ixlib=rb-1..1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=tps://images.unsplas.com/photo-1576091160651-e028ca26a943?ixlib=rb-1..1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=tps://images.unsplash.com/photo-1576091160651-e028ca26a943?ixlib=rb-1..1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=tps://images.unsplash.com/photo-1576091160651-e028ca26a943?ixlib=rb-1..1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=tps://images.unsplas.com/photo-1576091160651-e028ca26a943?ixlib=rb-1..1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit="
                            }
                        }
                    }
    }
}
