//
//  BalanceCard.swift
//  IOS Lifecycle
//
//  Created by Muhammad Saad on 8/5/26.
//

import Foundation
import SwiftUI


struct BalanceCard: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("Total Balance")
                Image(systemName: "eye")
                
                Spacer()
                
                Image(systemName: "ellipsis")
                    .rotationEffect(.degrees(90))
                
                
                
            }
            .foregroundColor(.white)
            
        
            Text("$24,000")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            
            
            HStack(spacing: 4) {
                Image(systemName: "arrow.up")
                    .foregroundColor(.green)
                Text("4.35%")
                    .font(.system(size: 10))
                    .fontWeight(.bold)
                    .foregroundColor(.green)
                
                Text("from last month")
                    .font(.system(size: 10))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            .font(.caption)
            
            
            
           
            
            Divider()
                .background(Color.white)
            
            HStack{
                
                Image("2")
                    .resizable()
                    .frame(width: 44, height: 44)
                    .clipShape(Circle())
                    .padding(5)
                
                VStack(alignment: .leading){
                    Text("Income")
                        .font(.system(size: 16))
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
                    
                    Text("$1,20,450")
                        .font(.system(size: 14))
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
                    
                }
                
                Spacer()
                   
                   Divider()
                       .background(Color.white.opacity(0.3))
                       .frame(height: 40)
                   
                   Spacer()
                
                
                HStack {
                        Image("3")
                            .resizable()
                            .frame(width: 44, height: 44)
                            .clipShape(Circle())
                            .padding(5)
                        
                        VStack(alignment: .leading) {
                            Text("Expenses")
                                .font(.system(size: 16))
                                .foregroundStyle(.white)
                                .fontWeight(.bold)
                            
                            Text("$85,230")
                                .font(.system(size: 14))
                                .foregroundStyle(.white)
                                .fontWeight(.bold)
                        }
                    }
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color.blue)
        .cornerRadius(20)
        .padding(10)
        
        
    }
}

#Preview {
    BalanceCard()
}
