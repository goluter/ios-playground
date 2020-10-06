//
//  GCD.swift
//  ios-playground
//
//  Created by 강주영 on 05/10/2020.
//  Copyright © 2020 jooyoung. All rights reserved.
//

import Foundation

// 단축키 https://m.blog.naver.com/PostView.nhn?blogId=xyz37&logNo=50098503387&proxyReferer=https:%2F%2Fwww.google.com%2F
struct GCD {
    func test() {
        let myGroup = DispatchGroup()
        let queue = DispatchQueue(label: "zedd", qos: .userInitiated)

        queue.async { // 1
            for index in 1...5 {
                print("hello, zedd \(index)")
            }
        }

        let task = DispatchWorkItem {
             sleep(2)
              print("WorkItem task")
        }
        queue.async { // 2
            print("!!")
        }
        queue.async(execute: task)
        print("##")
        
        myGroup.enter()
        
    }
}
