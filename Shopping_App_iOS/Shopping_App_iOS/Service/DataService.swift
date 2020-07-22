//
//  DataService.swift
//  Shopping_App_iOS
//
//  Created by Sai Raghu Varma Kallepalli on 23/7/20.
//  Copyright © 2020 Sai Raghu Varma Kallepalli. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    let category = [
        Category(title: "SHIRTS", image: "shirts.png" ),
        Category(title: "HOODIES", image: "hoodies.png" ),
        Category(title: "HATS", image: "hats.png" ),
        Category(title: "DIGITAL", image: "digital.png" )
    ]
    
    func getCategories() -> [Category] {
        return category
    }
    
}
