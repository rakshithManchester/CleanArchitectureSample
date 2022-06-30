//
//  LoginCoordinator.swift
//  MVVMVGSeries
//
//  Created by Appaiah on 29/06/22.
//

import Foundation
import UIKit


class LoginCoordinator: Coordinator {
    var navigationController: UINavigationController
    var mainCoordinator: MainCoordinator!
    
    init(_navigationController: UINavigationController) {
        navigationController = _navigationController
    }
    
    func pushView() {
        let loginVC = LoginViewController.instantiate(storyBoard: "Login")
        loginVC.coordinator = self
        navigationController.pushViewController(loginVC, animated: true)
    }
    
    
}
