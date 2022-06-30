//
//  Coordinator.swift
//  MVVMVGSeries
//
//  Created by Appaiah on 29/06/22.
//

import Foundation
import UIKit


protocol Coordinator {
    var childCoordinator: [Coordinator] {get set}
    var navigationController: UINavigationController {get}
    func pushView()
}

extension Coordinator {
    var childCoordinator: [Coordinator] {
        get {return [Coordinator]()}
        set {}
        
    }
}
