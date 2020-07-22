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
    @IBOutlet weak var cellLbl: UITextView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
