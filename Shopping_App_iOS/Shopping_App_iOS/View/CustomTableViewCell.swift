//
//  CustomTableViewCell.swift
//  Shopping_App_iOS
//
//  Created by Sai Raghu Varma Kallepalli on 23/7/20.
//  Copyright © 2020 Sai Raghu Varma Kallepalli. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellImg: UIImageView!
    @IBOutlet weak var cellLbl: UILabel!

    func updateView(category: Category) {
        cellImg.image = UIImage(named: category.image)
        cellLbl.text = category.title   
    }

}
