//
//  AuthViewController.swift
//  ios-playground
//
//  Created by 강주영 on 07/10/2020.
//  Copyright © 2020 jooyoung. All rights reserved.
//

import UIKit
import LocalAuthentication

class AuthViewController: UIViewController {
    static func create() -> UIViewController {
        let controller = UIStoryboard(name: "AuthViewController", bundle: nil).instantiateViewController(withIdentifier: "AuthViewController") as! AuthViewController
        controller.navigationItem.title = "인증페이지"
        controller.navigationItem.largeTitleDisplayMode = .automatic
        
        return controller
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        authenticationWithTouchID()
    }
    
    // https://medium.com/better-programming/ios-biometric-authentication-implementation-in-swift-fb662cc56f07
    func authenticationWithTouchID() {
        let localAuthenticationContext = LAContext()
        // 실패 시, 띄울 텍스트
        localAuthenticationContext.localizedFallbackTitle = "Please use your Passcode"

        var authorizationError: NSError?
        let reason = "Authentication required to access the secure data"

        if localAuthenticationContext.canEvaluatePolicy(.deviceOwnerAuthentication, error: &authorizationError) {
            
            localAuthenticationContext.evaluatePolicy(.deviceOwnerAuthentication, localizedReason: reason) { success, evaluateError in
                
                if success {
                    DispatchQueue.main.async() {
                        let alert = UIAlertController(title: "Success", message: "Authenticated succesfully!", preferredStyle: UIAlertController.Style.alert)
                        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
                    }
                    
                } else {
                    // Failed to authenticate
                    guard let error = evaluateError else {
                        return
                    }
                    print(error)
                
                }
            }
        } else {
            
            guard let error = authorizationError else {
                return
            }
            print(error)
        }
    }
}
