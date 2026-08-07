//
//  QuickAction.swift
//  IOS Lifecycle
//
//  Created by Muhammad Saad on 8/5/26.
//
import SwiftUI
import Foundation

struct QuickActions: View {
    var body: some View {
        DashboardCard {
            
            Text("Quick Actions")
                .font(.system(size: 17))
                .fontWeight(.bold)
            
            
            HStack {
                VStack {
                    Image("4")
                        .resizable()
                        .frame(width: 44, height: 44)
                        .clipShape(Circle())
                    
                    Text("Send Money")
                        .font(.system(size: 12))
                        .fontWeight(.bold)
                }.frame(width: 90)
                
                Spacer()
                
                VStack {
                    Image("5")
                        .resizable()
                        .frame(width: 44, height: 44)
                        .clipShape(Circle())
                    
                    Text("Add Money")
                        .font(.system(size: 12))
                        .fontWeight(.bold)
                }.frame(width: 90)
                
                Spacer()
                
                VStack {
                    Image("7")
                        .resizable()
                        .frame(width: 44, height: 44)
                        .clipShape(Circle())
                    
                    Text("Pay Bills")
                        .font(.system(size: 12))
                        .fontWeight(.bold)
                }.frame(width: 90)
                
                Spacer()
                
                VStack {
                    
                    Image("8")
                        .resizable()
                        .frame(width: 44, height: 44)
                        .clipShape(Circle())
                    
                    Text("Mobile Recharge")
                        .font(.system(size: 12))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                }.frame(width: 90)
            }
            
            HStack{
                
                VStack {
                    Image("10")
                        .resizable()
                        .frame(width: 44, height: 44)
                        .clipShape(Circle())
                    
                    Text("Bank Transfer")
                        .font(.system(size: 12))
                        .fontWeight(.bold)
                }.frame(width: 90)
                
                
                Spacer()
                
                
                VStack {
                    Image("11")
                        .resizable()
                        .frame(width: 44, height: 44)
                        .clipShape(Circle())
                    
                    Text("Fixed Deposit")
                        .font(.system(size: 12))
                        .fontWeight(.bold)
                }.frame(width: 90)
                
                Spacer()
                
                VStack {
                    Image("12")
                        .resizable()
                        .frame(width: 44, height: 44)
                        .clipShape(Circle())
                    
                    Text("Scan & Pay")
                        .font(.system(size: 12))
                        .fontWeight(.bold)
                }.frame(width: 90)
                
                Spacer()
                
                VStack {
                    Image(systemName: "ellipsis")
                        .font(.title3)
                        .foregroundColor(.gray)
                        .frame(width: 44, height: 44)
                        .background(Color(.systemGray6))
                        .clipShape(Circle())
                    
                    Text("More")
                        .font(.system(size: 12))
                        .fontWeight(.bold)
                    
                }.frame(width: 90)
            }
        }
    }
}

#Preview {
    QuickActions()
}


