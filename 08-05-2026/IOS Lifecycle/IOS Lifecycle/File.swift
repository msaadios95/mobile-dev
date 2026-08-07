//
//  File.swift
//  IOS Lifecycle
//
//  Created by Muhammad Saad on 8/5/26.
//

import Foundation
import SwiftUI

struct Account: Identifiable {
    let id = UUID()
    let icon: String
    let iconColor: Color
    let title: String
    let subtitle: String
    let amount: String
    let amountColor: Color
    let note: String?
}

let accounts = [
    Account(icon: "building.columns", iconColor: .blue,
            title: "Savings Account", subtitle: "xxxx 1234",
            amount: "$1,256.80", amountColor: .primary, note: "Available Balance"),
    
    Account(icon: "building.columns", iconColor: .green,
            title: "Current Account", subtitle: "xxxx 5678",
            amount: "$754.50", amountColor: .primary, note: "Available Balance"),
    
    Account(icon: "creditcard", iconColor: .red,
            title: "Credit Card", subtitle: "xxxx 4321",
            amount: "- $187.50", amountColor: .red, note: "Outstanding"),
    
    Account(icon: "house", iconColor: .purple,
            title: "Fixed Deposit", subtitle: "xxxx 9012 · Matures on 12 Jul 2026",
            amount: "$630.00", amountColor: .primary, note: nil)
]
