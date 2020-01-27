//
//  FootballFieldTableViewCell.swift
//  FootballField
//
//  Created by Загид Гусейнов on 04.11.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import UIKit

class FootballFieldTableViewCell: UITableViewCell {
    @IBOutlet weak var imageField: UIImageView!
    @IBOutlet weak var nameFootballField: UILabel!
    @IBOutlet weak var streetFootballFeild: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.imageField.layer.cornerRadius = imageField.frame.width / 2
        self.imageField.clipsToBounds = true
        self.imageField.layer.borderWidth = 3
        self.imageField.layer.borderColor = (UIColor(displayP3Red: 113/255, green: 185/255, blue: 74/255, alpha: 1.0)).cgColor
    }

}
