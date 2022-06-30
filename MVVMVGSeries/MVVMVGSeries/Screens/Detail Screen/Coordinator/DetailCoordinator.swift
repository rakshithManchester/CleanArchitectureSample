//
//  DetailCoordinator.swift
//  MVVMVGSeries
//
//  Created by Appaiah on 30/06/22.
//

import Foundation
import UIKit

class DetailCoordinator: Coordinator {
    var navigationController: UINavigationController
    var mainCoordinator: MainCoordinator?
    var icon: String?
    
    init(_navigationController: UINavigationController) {
        navigationController = _navigationController
    }
    
    func pushView() {
       let detailVC =  DetailViewController.instantiate(storyBoard: "Detail")
        detailVC.detailCoor = self
        detailVC.icon = icon
        navigationController.pushViewController(detailVC, animated: true)
        
    }
}
