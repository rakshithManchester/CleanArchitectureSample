//
//  DetailViewController.swift
//  MVVMVGSeries
//
//  Created by Appaiah on 30/06/22.
//

import UIKit
import RxSwift

class DetailViewController: UIViewController, StoryBoarded {
    
    var detailCoor: DetailCoordinator!
    var icon: String?
    var bag = DisposeBag()
    
    @IBOutlet weak var weatherIcon: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        icon?.toImage().subscribe(onNext: { image in
            DispatchQueue.main.async {
                self.weatherIcon.image = image
            }
        }).disposed(by: bag)
    }

}
