//
//  RecentTransactions.swift
//  IOS Lifecycle
//
//  Created by Muhammad Saad on 8/5/26.
//

import SwiftUI

struct RecentTransactionsSection: View {
    var body: some View {
        DashboardCard {
            
            HStack {
                Text("Recent Transactions")
                    .font(.system(size: 17))
                    .fontWeight(.bold)
                
                Spacer()
                
                Text("View All")
                    .font(.system(size: 14))
                    .foregroundColor(.blue)
            }
            
            ForEach(transactions) { transaction in
                HStack {
                    Image(systemName: transaction.icon)
                        .foregroundColor(.white)
                        .frame(width: 40, height: 40)
                        .background(transaction.iconColor)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text(transaction.merchant)
                            .font(.system(size: 14))
                            .fontWeight(.semibold)
                        
                        Text(transaction.category)
                            .font(.system(size: 12))
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .trailing, spacing: 2) {
                        Text(transaction.amount)
                            .font(.system(size: 14))
                            .fontWeight(.semibold)
                            .foregroundColor(transaction.amountColor)
                        
                        Text(transaction.date)
                            .font(.system(size: 12))
                            .foregroundColor(.gray)
                    }
                }
                
                if transaction.id != transactions.last?.id {
                    Divider()
                }
            }
            
        }

    }
}

#Preview {
    RecentTransactionsSection()
}
