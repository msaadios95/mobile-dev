//
//  Accounts.swift
//  IOS Lifecycle
//
//  Created by Muhammad Saad on 8/5/26.
//

import SwiftUI

struct Accounts: View {
    
    var body: some View {
        DashboardCard {
            
            HStack {
                Text("Accounts")
                    .font(.system(size: 17))
                    .fontWeight(.bold)
                
                Spacer()
                
                Text("View All")
                    .font(.system(size: 14))
                    .foregroundColor(.blue)
            }
            
            ForEach(accounts) { account in
                HStack {
                    Image(systemName: account.icon)
                        .foregroundColor(account.iconColor)
                        .frame(width: 44, height: 44)
                        .background(account.iconColor.opacity(0.15))
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text(account.title)
                            .font(.system(size: 14))
                            .fontWeight(.semibold)
                        
                        Text(account.subtitle)
                            .font(.system(size: 12))
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .trailing, spacing: 2) {
                        Text(account.amount)
                            .font(.system(size: 14))
                            .fontWeight(.semibold)
                            .foregroundColor(account.amountColor)
                        
                        if let note = account.note {
                            Text(note)
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                        }
                    }
                    
                    Image(systemName: "chevron.right")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                if account.id != accounts.last?.id {
                    Divider()
                }
            }
            
        }
        
    }
}

#Preview {
    Accounts()
}
