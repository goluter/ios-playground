//
//  ImageDownloadManager.swift
//  ios-playground
//
//  Created by 강주영 on 07/10/2020.
//  Copyright © 2020 jooyoung. All rights reserved.
//

import UIKit

// https://stackoverflow.com/questions/44743591/download-and-cache-images-in-uitableviewcell
class ImageDownloadManger {
    private static var sharedImageDownloadManager: ImageDownloadManger = {
        // TODO: 얼마나 보관할 건지 임계값
        let imageDownloadManager = ImageDownloadManger()
        return imageDownloadManager
    }()
    
    class func shared() -> ImageDownloadManger {
          return sharedImageDownloadManager
    }
    
    var urlSession = URLSession.shared
    
    var cache = NSCache<NSString, UIImage>()
    
    func download(_ imageUrl: String, completionHandler: @escaping (UIImage) ->()) {
        guard let url = URL(string: imageUrl) else {
            completionHandler(UIImage())
            return
        }
        
        if let image = cache.object(forKey: imageUrl as NSString) {
            completionHandler(image)
            return
        }
        
//        let configuration = URLSessionConfiguration()
//        let session = URLSession(configuration: configuration)
//
        let task = URLSession.shared.dataTask(with: url) {data, response, error in
            guard let data = data else { return }
            guard let downloadedImage = UIImage(data: data) else { return }
            self.cache.setObject(downloadedImage, forKey: imageUrl as NSString)
            completionHandler(downloadedImage)
        }
        
        task.resume()
    }
}
