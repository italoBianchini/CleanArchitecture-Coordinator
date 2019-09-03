//
//  CleanArchitecture_CoordinatorTests.swift
//  CleanArchitecture+CoordinatorTests
//
//  Created by Ítalo Bianchini on 03/09/19.
//  Copyright © 2019 BianchiniItalo. All rights reserved.
//

import XCTest
@testable import CleanArchitecture_Coordinator

class CleanArchitecture_CoordinatorTests: XCTestCase {
    
    private let storyboardIdentifier = "Main"
    
    private lazy var configurator: LoginConfiguratorImplementation = {
        let configurator = LoginConfiguratorImplementation()
        return configurator
    }()
    
    private lazy var coordinator: AuthenticationCoordinator = {
        let coordinator = AuthenticationCoordinator(navigationController: UINavigationController(), delegate: nil)
        return coordinator
    }()
    
    private lazy var controller: LoginViewController = {
        let controller = LoginViewController.initFromStoryboard(named: storyboardIdentifier)
        return controller
    }()
    
    override func setUp() {
        configurator.configure(coordinator: coordinator)
    }

    func testInjectionValidate() {
        XCTAssertNotNil(coordinator.presenter)
    }
}
