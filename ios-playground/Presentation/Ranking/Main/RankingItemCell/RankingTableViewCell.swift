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
    }
}
