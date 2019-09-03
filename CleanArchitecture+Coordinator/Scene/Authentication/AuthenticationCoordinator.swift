//
//  AuthenticationCoordinator.swift
//  CleanArchitecture+Coordinator
//
//  Created by Ítalo Bianchini on 03/09/19.
//  Copyright © 2019 BianchiniItalo. All rights reserved.
//

import UIKit

class AuthenticationCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    weak var coordinatorDelegate: CoordinatorDelegate?
    private let storyboardIdentifier = "Main"
    var presenter: LoginPresenter?
    private let configurator = LoginConfiguratorImplementation()
    
    init(navigationController: UINavigationController, delegate: CoordinatorDelegate?) {
        self.navigationController = navigationController
        self.coordinatorDelegate = delegate
    }

    func start() {
        configurator.configure(coordinator: self)
        showLoginViewController()
    }
    
    private func showLoginViewController() {
        let controller = LoginViewController.initFromStoryboard(named: storyboardIdentifier)
        navigationController.setViewControllers([controller], animated: true)
    }
}

extension AuthenticationCoordinator: LoginView {
    func handlerResult(user: User) {
        // Handler
    }
}

extension AuthenticationCoordinator: LoginViewControllerDelegate {
    func didTapLoginButton(user: String, password: String, on controller: UIViewController) {
        presenter?.didTapLogin(user: user, password: password)
    }
}
