//
//  Product.swift
//  Shopping_App_iOS
//
//  Created by Sai Raghu Varma Kallepalli on 23/7/20.
//  Copyright © 2020 Sai Raghu Varma Kallepalli. All rights reserved.
//

import Foundation

struct Product {
    
    private (set) public var image: String
    private (set) public var label: String
    private (set) public var price: String
    
    init(image: String, label: String, price: String) {
        self.image = image
        self.label = label
        self.price = price
    }
    
}
