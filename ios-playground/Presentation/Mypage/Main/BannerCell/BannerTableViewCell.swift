//
//  BannerTableViewCell.swift
//  ios-playground
//
//  Created by 강주영 on 07/10/2020.
//  Copyright © 2020 jooyoung. All rights reserved.
//

import UIKit

class BannerTableViewCell: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
//        self.commonInit()
    }
    
    override init(frame: CGRect) {
          super.init(frame: frame)
          self.commonInit()
      }

      required init?(coder aDecoder: NSCoder) {
          super.init(coder: aDecoder)
          self.commonInit()
      }

      private func commonInit(){
          let name = String(describing: type(of: self))
          let view = Bundle.main.loadNibNamed(name, owner: self, options: nil)?.first as! UIView
          view.frame = self.bounds
          view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
          self.addSubview(view)
      }
      
}
