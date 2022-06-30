//
//  MainCoordinator.swift
//  MVVMVGSeries
//
//  Created by Appaiah on 29/06/22.
//

import Foundation
import UIKit

class MainCoordinator : Coordinator {
    var navigationController: UINavigationController
    
    init(_navigationController: UINavigationController) {
        navigationController = _navigationController
    }
    
    func pushView() {
    
    }
    
    func navigateLoginView() {
        let loginCoor = LoginCoordinator(_navigationController: navigationController)
        loginCoor.mainCoordinator = self
        loginCoor.pushView()
    }
    
    func navigateHomeView() {
        let homeCoor = HomeCoordinator(_navigationController: navigationController)
        homeCoor.mainCoordinator = self
        homeCoor.pushView()
    }
    
    func navigateDetailView(icon: String?) {
        let detailCoor = DetailCoordinator(_navigationController: navigationController)
        detailCoor.icon = icon
        detailCoor.mainCoordinator = self
        detailCoor.pushView()
    }
    
    
}
