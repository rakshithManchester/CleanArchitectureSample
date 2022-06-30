//
//  WeatherTableViewCell.swift
//  MVVMVGSeries
//
//  Created by Appaiah on 30/06/22.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {
    static let cellID = "WeatherTableViewCell"
    
    @IBOutlet weak var imagevw: UIImageView!
    @IBOutlet weak var descript: UILabel!
    @IBOutlet weak var dateTime: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
