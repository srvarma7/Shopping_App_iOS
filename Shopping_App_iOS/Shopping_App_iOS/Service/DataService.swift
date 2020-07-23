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
    
    private let categories = [
        Category(title: "SHIRTS", image: "shirts.png" ),
        Category(title: "HOODIES", image: "hoodies.png" ),
        Category(title: "HATS", image: "hats.png" ),
        Category(title: "DIGITAL", image: "digital.png" )
    ]
    
    private let hats = [
        Product(image: "hat01.png", label: "Graphic Beanie", price: "$25"),
        Product(image: "hat02.png", label: "Black Hat", price: "$18"),
        Product(image: "hat03.png", label: "White Hat", price: "$18"),
        Product(image: "hat04.png", label: "Snapback", price: "$23")
    ]
    
    private let hoodies = [
        Product(image: "hoodie01.png", label: "Hoodie Grey", price: "$25"),
        Product(image: "hoodie02.png", label: "Hoodie Red", price: "$18"),
        Product(image: "hoodie03.png", label: "Hoodie Grey", price: "$18"),
        Product(image: "hoodie04.png", label: "Hoodie Black", price: "$23")
    ]
    
    private let shirts = [
        Product(image: "shirt01.png", label: "Shirt Grey", price: "$25"),
        Product(image: "shirt02.png", label: "Shirt Red", price: "$18"),
        Product(image: "shirt03.png", label: "Shirt Grey", price: "$18"),
        Product(image: "shirt04.png", label: "Shirt Black", price: "$23")
    ]
    
    private let digitalGoods = [Product]()
    
    func getProductByCategory(category: String) -> [Product] {
        switch category {
        case "Shirt":
            return getShirts()
        case "Hoodies":
            return getHoodies()
        case "Hats":
            return getHats()
        case "Digital":
            return getHats()
        default:
            return digitalGoods
        }
    }
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}
