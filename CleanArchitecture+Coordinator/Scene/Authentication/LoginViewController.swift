//
//  LoginViewController.swift
//  CleanArchitecture+Coordinator
//
//  Created by Ítalo Bianchini on 03/09/19.
//  Copyright © 2019 BianchiniItalo. All rights reserved.
//

import UIKit

protocol LoginViewControllerDelegate: class {
    func didTapLoginButton(user: String, password: String, on controller: UIViewController)
}

class LoginViewController: UIViewController {
    weak var delegate: LoginViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate?.didTapLoginButton(user: "", password: "", on: self)
    }
}

extension UIViewController {
    static func initFromStoryboard(named storyboardName: String) -> Self {
        return initFromStoryboardHelper(storyboardName: storyboardName)
    }
    
    private class func initFromStoryboardHelper<T>(storyboardName: String) -> T {
        let storyoard = UIStoryboard(name: storyboardName, bundle: nil)
        let className = String(describing: self)
        if let viewController = storyoard.instantiateViewController(withIdentifier: className) as? T {
            return viewController
        } else {
            fatalError("Controller with incorrect identifier in storyboard")
        }
    }
}
