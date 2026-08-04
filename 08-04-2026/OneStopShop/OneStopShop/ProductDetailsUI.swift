//
//  ProductDetailsUI.swift
//  OneStopShop
//
//  Created by Muhammad Saad on 8/4/26.
//

import SwiftUI

struct ProductDetailsUI: View {
    
    let product: Product
    
    var body: some View {
           VStack(alignment: .leading, spacing: 12) {
               
               Image(product.productImage)
                   .resizable()
                   .aspectRatio(contentMode: .fit)
                   .frame(height: 250)
               
               Text(product.productName)
                   .font(.title2)
                   .fontWeight(.bold)
               
               Text(product.brandName)
                   .foregroundColor(.gray)
               
               Text("$\(product.productPrice, specifier: "%.2f")")
                   .font(.title3)
                   .fontWeight(.semibold)
               
               Text(product.productDescription)
                   .padding(.top, 8)
               
               Spacer()
           }
           .padding()
       }
}

#Preview {
    ProductDetailsUI(product: products[0])
}
