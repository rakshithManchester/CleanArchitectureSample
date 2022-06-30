//
//  HomeCoordinator.swift
//  MVVMVGSeries
//
//  Created by Appaiah on 29/06/22.
//

import Foundation
import UIKit

class HomeCoordinator : Coordinator {
    
    var navigationController: UINavigationController
    var mainCoordinator: MainCoordinator!
    
    init(_navigationController: UINavigationController) {
        navigationController = _navigationController
    }
    func pushView() {
        let homeVC = HomeViewController.instantiate(storyBoard: "Home")
        homeVC.homeCoord = self
        navigationController.pushViewController(homeVC, animated: true)
    }
}
