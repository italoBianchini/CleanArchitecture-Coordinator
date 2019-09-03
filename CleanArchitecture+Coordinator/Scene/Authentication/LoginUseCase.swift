//
//  LoginUseCase.swift
//  CleanArchitecture+Coordinator
//
//  Created by Ítalo Bianchini on 03/09/19.
//  Copyright © 2019 BianchiniItalo. All rights reserved.
//

import Foundation

struct DoLoginParameters {
    var user: String
    var password: String
}

protocol LoginUseCase {
    func doLogin(user: String, password: String, completion: @escaping CompletionHandler)
}

class LoginUseCaseImplementation: LoginUseCase {
    
    var gateway: LoginGateway
    
    init(gateway: LoginGateway) {
        self.gateway = gateway
    }
    
    func doLogin(user: String, password: String, completion: @escaping CompletionHandler) {
        gateway.doLogin(parameters: DoLoginParameters(user: user,
                                                      password: password), completion: completion)
    }
}
