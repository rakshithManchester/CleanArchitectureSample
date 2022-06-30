//
//  TableViewDelegate.swift
//  MVVMVGSeries
//
//  Created by Appaiah on 30/06/22.
//

import Foundation
import UIKit

class TableViewDelegate: NSObject, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}
