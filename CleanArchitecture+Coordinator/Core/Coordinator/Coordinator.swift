//
//  Coordinator.swift
//  CleanArchitecture+Coordinator
//
//  Created by Ítalo Bianchini on 03/09/19.
//  Copyright © 2019 BianchiniItalo. All rights reserved.
//

import UIKit

protocol CoordinatorDelegate: class {
    func coordinatorDidExit(_ coordinator: Coordinator)
}

protocol Coordinator: CoordinatorDelegate {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    var coordinatorDelegate: CoordinatorDelegate? { get set }
    func start()
}

extension Coordinator {
    func coordinatorDidExit(_ coordinator: Coordinator) {
        guard let index = self.childCoordinators.firstIndex(where: { $0 === coordinator }) else { return }
        self.childCoordinators.remove(at: index)
    }
}
