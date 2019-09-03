//
//  AppCoordinator.swift
//  CleanArchitecture+Coordinator
//
//  Created by Ítalo Bianchini on 03/09/19.
//  Copyright © 2019 BianchiniItalo. All rights reserved.
//

import UIKit

class AppCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    weak var coordinatorDelegate: CoordinatorDelegate?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        showAuthenticationCoordinator()
    }
    
    private func showAuthenticationCoordinator() {
        let coordinator = AuthenticationCoordinator(navigationController: navigationController, delegate: self)
        coordinator.start()
        childCoordinators.append(coordinator)
    }
}
