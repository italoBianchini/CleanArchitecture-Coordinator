//
//  LoginPresenter.swift
//  CleanArchitecture+Coordinator
//
//  Created by Ítalo Bianchini on 03/09/19.
//  Copyright © 2019 BianchiniItalo. All rights reserved.
//

import UIKit

protocol LoginPresenter {
    func didTapLogin(user: String, password: String)
}

protocol LoginView {
    func handlerResult(user: User)
}

class LoginPresenterImplementaton: LoginPresenter {
    var view: LoginView
    var useCase: LoginUseCase
    
    init(view: LoginView, useCase:LoginUseCase) {
        self.view = view
        self.useCase = useCase
    }
    
    func didTapLogin(user: String, password: String) {
        useCase.doLogin(user: user, password: password) { (user) in
            self.view.handlerResult(user: user)
        }
    }
}
