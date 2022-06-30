//
//  Utils.swift
//  MVVMVGSeries
//
//  Created by Appaiah on 30/06/22.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa


extension String {
    
    func toImage() -> BehaviorRelay<UIImage> {
        let url = URL(string: self )!
        let image = BehaviorRelay<UIImage>(value: UIImage())
        URLSession.shared.dataTask(with: url) { _data, response, error in
            if let data = _data {
                image.accept(UIImage(data: data) ?? UIImage())
            }
        }.resume()
        return image
    }
}
