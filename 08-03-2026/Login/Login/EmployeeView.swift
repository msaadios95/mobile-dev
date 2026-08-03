//
//  EmployeeView.swift
//  Login
//
//  Created by Muhammad Saad on 8/3/26.
//

import SwiftUI

struct EmployeeView: View {
    
    let employee: Employee
    
    var body: some View {
        VStack{
            Text(employee.name)
                .font(.title2)
                .fontWeight(.bold) // View Modifires
            Divider()
            Text(employee.gender)
            Text(employee.email)
            Text(employee.designation)
            Text(employee.address)
        }
        
    }
}

#Preview {
    EmployeeView(employee:  Employee(name: "Saad", gender: "Male", email: "saad@techconsulting.tech", designation: "IOS Developer", address: "Mableton"))
}
