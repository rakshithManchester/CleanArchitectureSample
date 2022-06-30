//
//  LoginViewModel.swift
//  MVVMVGSeries
//
//  Created by Appaiah on 29/06/22.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa
import RxRelay

class LoginViewModel {
    
    var buttonAlpha = BehaviorSubject<CGFloat>(value: 0.5)
    
    var username = BehaviorSubject<String>(value: "")
    var password = BehaviorSubject<String>(value: "")
    
//    var coordinator = LoginCoordinator(_navigationController: <#T##UINavigationController#>)
    
    func updateButton() -> Observable<Bool> {
        Observable.combineLatest(username.asObservable(), password.asObservable()).map { name,password in
            if name.count > 3 && password.count > 3 {
                return true
            }
            return false
        }
    }
    
    func loginClick() {
        
    }
    
}
