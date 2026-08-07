//
//  GreetingHeader.swift
//  IOS Lifecycle
//
//  Created by Muhammad Saad on 8/5/26.
//

import SwiftUI

struct GreetingHeader: View {
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            HStack{
                VStack(alignment: .leading, spacing: 2) {
                    Text("Good morning, Saad")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    
                    Text("Here's what's happening with your finances today.")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                
                Spacer()
                
                Image(systemName: "bell")
                    .font(.system(size: 24))
                    .padding(.bottom, 40)
                 
                
                Text("M")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(width: 44, height: 44)
                    .background(Color.indigo)
                    .clipShape(Circle())
                    .padding(.bottom,40)
                
            }
            .padding(.horizontal)
            .padding(.top, 8)
            
        }
    }
}

#Preview {
    GreetingHeader()
}

