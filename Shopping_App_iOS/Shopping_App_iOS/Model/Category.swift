//
//  Category.swift
//  Shopping_App_iOS
//
//  Created by Sai Raghu Varma Kallepalli on 23/7/20.
//  Copyright © 2020 Sai Raghu Varma Kallepalli. All rights reserved.
//

import Foundation

class Category {
    
    private (set) public var title: String
    private (set) public var image: String
    
    init(title: String, image: String) {
        self.title = title
        self.image = image
    }
    
}
