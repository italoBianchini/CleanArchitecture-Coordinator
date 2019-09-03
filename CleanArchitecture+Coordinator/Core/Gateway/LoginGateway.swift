//
//  LoginGateway.swift
//  CleanArchitecture+Coordinator
//
//  Created by Ítalo Bianchini on 03/09/19.
//  Copyright © 2019 BianchiniItalo. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ user: User) -> Void

protocol LoginGateway {
    func doLogin(parameters: DoLoginParameters, completion: @escaping CompletionHandler)
}
