//
//  StoryBoarded.swift
//  MVVMVGSeries
//
//  Created by Appaiah on 29/06/22.
//

import Foundation
import UIKit


protocol StoryBoarded {
    static func instantiate(storyBoard: String)  -> Self
}

extension StoryBoarded {
    static func instantiate(storyBoard: String) -> Self {
        let id = String(describing: self)
        let Storyboard = UIStoryboard(name: storyBoard, bundle: Bundle.main)
        return Storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
