//
//  LoginConfigurator.swift
//  CleanArchitecture+Coordinator
//
//  Created by Ítalo Bianchini on 03/09/19.
//  Copyright © 2019 BianchiniItalo. All rights reserved.
//

import UIKit

protocol LoginConfigurator {
    func configure(coordinator: AuthenticationCoordinator)
}

class LoginConfiguratorImplementation: LoginConfigurator {
    func configure(coordinator: AuthenticationCoordinator) {
        coordinator.presenter = LoginPresenterImplementaton(view: coordinator,                                                    useCase: LoginUseCaseImplementation(gateway: LoginApiRequest()))
    }
}
