//
//  LoginViewController.swift
//  MVVMVGSeries
//
//  Created by Appaiah on 29/06/22.
//

import UIKit
import RxCocoa
import RxSwift

class LoginViewController: UIViewController, StoryBoarded {

    var viewModel = LoginViewModel()
    var bag = DisposeBag()
    var coordinator: LoginCoordinator!
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        username.rx.text.map { $0 ?? "" }.bind(to: viewModel.username)
        password.rx.text.map { $0 ?? "" }.bind(to: viewModel.password)
        viewModel.updateButton().map { $0 ? true : false }.bind(to: loginButton.rx.isEnabled).disposed(by: bag)
        viewModel.updateButton().map { $0 ? 1 : 0.5 }.bind(to: loginButton.rx.alpha).disposed(by: bag)
    }
    
    @IBAction func loginTap(sender: UIButton) {
        coordinator.mainCoordinator.navigateHomeView()
    }
    

}
