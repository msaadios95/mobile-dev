//
//  Products.swift
//  OneStopShop
//
//  Created by Muhammad Saad on 8/4/26.
//

import Foundation

struct Product: Hashable{
    
    var productId: Int
    var productName: String
    var productDescription: String
    var productPrice: Double
    var productImage: String
    var brandName: String
    
}

let products = [
    Product(productId: 1,
            productName: "AirPods Pro",
            productDescription: "Wireless earbuds with active noise cancellation",
            productPrice: 249.00,
            productImage: "airpods_pro",
            brandName: "Apple"),
    
    Product(productId: 2,
            productName: "Galaxy Buds Pro",
            productDescription: "Premium wireless earbuds with ANC",
            productPrice: 199.99,
            productImage: "galaxy_buds",
            brandName: "Samsung"),
 
    Product(productId: 3,
            productName: "iPhone 17",
            productDescription: "Latest flagship smartphone",
            productPrice: 999.00,
            productImage: "iphone17",
            brandName: "Apple"),
    
    Product(productId: 4,
            productName: "MacBook Air M4",
            productDescription: "Thin and light laptop with M4 chip",
            productPrice: 1199.00,
            productImage: "macbook_air",
            brandName: "Apple"),
    
    Product(productId: 5,
            productName: "PS5 Controller",
            productDescription: "DualSense wireless controller",
            productPrice: 69.99,
            productImage: "ps5_controller",
            brandName: "Sony"),
    
    Product(productId: 6,
            productName: "Kindle Paperwhite",
            productDescription: "Waterproof e-reader with adjustable light",
            productPrice: 139.99,
            productImage: "kindle_paperwhite",
            brandName: "Amazon"),
    
    Product(productId: 7,
            productName: "Nike Air Max",
            productDescription: "Comfortable everyday running shoes",
            productPrice: 129.99,
            productImage: "nike_air_max",
            brandName: "Nike"),
    
    Product(productId: 8,
            productName: "Sony WH-1000XM5",
            productDescription: "Industry-leading noise cancelling headphones",
            productPrice: 349.99,
            productImage: "sony_wh",
            brandName: "Sony")
]


