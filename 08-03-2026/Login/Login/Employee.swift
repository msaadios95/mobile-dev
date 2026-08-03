//
//  Employee.swift
//  Login
//
//  Created by Muhammad Saad on 8/3/26.
//

import Foundation

struct Employee{
    
    let name: String
    let gender: String
    let email: String
    let designation: String
    let address: String
    
    init(name: String, gender: String, email: String, designation: String, address: String) {
        self.name = name
        self.gender = gender
        self.email = email
        self.designation = designation
        self.address = address
    }
     
}
