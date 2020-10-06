//
//  UIImage+Extension.swift
//  ios-playground
//
//  Created by 강주영 on 05/10/2020.
//  Copyright © 2020 jooyoung. All rights reserved.
//

import UIKit


extension UIImageView {
    func download() {
        let configuration = URLSessionConfiguration()
        let session = URLSession(configuration: configuration)
        
        let urlComponent = URLComponents(string: "https:://naver.com")!
        let request = urlComponent.url!
        
        let task = session.dataTask(with: request) {(data, response, error) in
            
        }
        
        task.resume()
    }
}
