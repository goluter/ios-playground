//
//  DispatchGroup.swift
//  ios-playground
//
//  Created by 강주영 on 05/10/2020.
//  Copyright © 2020 jooyoung. All rights reserved.
//

import Foundation

class DispatchGroupTest {
    func test() {
        let group1 = DispatchGroup()
        
        var defaultQueue = DispatchQueue.global()
        var queue1 = DispatchQueue.global()
        
        queue1.async(group: group1) {
            print("hi")
        }
        
        queue1.async(group: group1) {
            sleep(10)
            print("hi44")
        }
        if group1.wait(timeout: .now() + 1) == .timedOut {
            print("완료 안됨")
        }
        group1.notify(queue: defaultQueue) { [weak self] in
            print("완료")
        }
    
    }
}
