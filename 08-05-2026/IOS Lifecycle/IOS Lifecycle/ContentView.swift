//
//  ContentView.swift
//  IOS Lifecycle
//
//  Created by Muhammad Saad on 8/5/26.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack{
            
            GreetingHeader()
            
            ScrollView{
                BalanceCard()
                QuickActions()
                Accounts()
                RecentTransactionsSection()
                Spacer()
            }
            
        } .background(Color(.systemGray6))
    }
    
}

#Preview {
    ContentView()
}
