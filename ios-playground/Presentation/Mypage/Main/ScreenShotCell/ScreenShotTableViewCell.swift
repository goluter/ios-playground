//
//  ScreenShotTableViewCell.swift
//  ios-playground
//
//  Created by 강주영 on 07/10/2020.
//  Copyright © 2020 jooyoung. All rights reserved.
//

import UIKit

class ScreenShotTableViewCell: UIView {
    @IBOutlet weak var screenShot1: UIImageView!
    
    var view: UIView?

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
        self.view = view
        self.addSubview(view)
    }
    
    func drawBy(group: DispatchGroup) {
        
        
        if let image = UIImage(named: "ScreenShot1") {
//            let aspect = image.size.width * 3 / image.size.height * 3
//                               let constraint = NSLayoutConstraint(
//                                   item: self.screenShot1!,
//                                   attribute: NSLayoutConstraint.Attribute.width,
//                                   relatedBy: NSLayoutConstraint.Relation.equal,
//                                   toItem: self.screenShot1!,
//                                   attribute: NSLayoutConstraint.Attribute.height,
//                                   multiplier: aspect,
//                                   constant: 0.0
//                               )
//constraint.priority = UILayoutPriority(rawValue: 999)
            // self.screenShot1.addConstraint(constraint)
            group.enter()
            DispatchQueue.global().async {
            ImageDownloadManger.shared().download("https://images.unsplash.com/photo-1576091160651-e028ca26a943?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80") { (image) in
                    DispatchQueue.main.async {
//
                        
                        UIGraphicsBeginImageContextWithOptions(CGSize(width: image.size.width * 4, height: image.size.width * 4), false, 1.0)
                        image.draw(in: CGRect(x: 0, y: 0, width: image.size.width * 4, height: image.size.height * 4))
                         let newImage = UIGraphicsGetImageFromCurrentImageContext()
                         UIGraphicsEndImageContext()
                        
                        self.screenShot1.image = image
                        
                        group.leave()
                    }
                }
            }
            
        
//            screenShot1.image = image
        }
        
//        let aspect = image!.size.width / image!.size.height

//        let constraint = NSLayoutConstraint(
//            item: screenShot1!,
//            attribute: NSLayoutConstraint.Attribute.width,
//            relatedBy: NSLayoutConstraint.Relation.equal,
//            toItem: screenShot1!,
//            attribute: NSLayoutConstraint.Attribute.height,
//            multiplier: aspect,
//            constant: 0.0
//        )
//
//        constraint.priority = UILayoutPriority(rawValue: 999)
//
//        screenShot1.addConstraint(constraint)
        
//        let myImageWidth = image!.size.width
//        let myImageHeight = image!.size.height
//        let myViewWidth = self.frame.size.width
//
//        let ratio = myViewWidth/myImageWidth
//        let scaledHeight = myImageHeight * ratio
//
////        return
        
        
//        self.view?.frame = CGRect(x: 0, y: 0, width: 1500, height: 1500);
    }
}
