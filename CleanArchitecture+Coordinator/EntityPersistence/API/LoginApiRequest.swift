//
//  LoginApiRequest.swift
//  CleanArchitecture+Coordinator
//
//  Created by Ítalo Bianchini on 03/09/19.
//  Copyright © 2019 BianchiniItalo. All rights reserved.
//

import UIKit

class LoginApiRequest: LoginGateway {
    func doLogin(parameters: DoLoginParameters, completion: @escaping CompletionHandler) {
        completion(User())
    }
}
