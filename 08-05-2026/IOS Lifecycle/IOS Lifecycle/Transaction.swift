//
//  Transaction.swift
//  IOS Lifecycle
//
//  Created by Muhammad Saad on 8/5/26.
//

import Foundation
import SwiftUI


struct Transaction: Identifiable {
    let id = UUID()
    let icon: String
    let iconColor: Color
    let merchant: String
    let category: String
    let amount: String
    let amountColor: Color
    let date: String
}

let transactions = [
    Transaction(icon: "cart.fill", iconColor: .black,
                merchant: "Amazon India", category: "Shopping",
                amount: "- $1.55", amountColor: .primary, date: "May 15, 2024"),
    
    Transaction(icon: "arrow.down", iconColor: .green,
                merchant: "Salary Credited", category: "Income",
                amount: "+ $120.45", amountColor: .green, date: "May 15, 2024"),
    
    Transaction(icon: "z.circle.fill", iconColor: .red,
                merchant: "Zomato", category: "Food & Dining",
                amount: "- $4.20", amountColor: .primary, date: "May 14, 2024")
]
