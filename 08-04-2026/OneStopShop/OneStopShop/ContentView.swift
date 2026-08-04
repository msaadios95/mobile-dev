import SwiftUI

struct ProductListView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("One Stop Solution")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                List(products, id: \.productId) { product in
                    
                    NavigationLink(value: product) {
                        HStack {
                            Image(product.productImage)
                                .resizable()
                                .frame(width: 60, height: 60)
                            
                            VStack(alignment: .leading) {
                                Text(product.productName)
                                    .fontWeight(.semibold)
                                Text(product.brandName)
                                    .foregroundColor(.gray)
                                Text("$\(product.productPrice, specifier: "%.2f")")
                                    .fontWeight(.bold)
                            }
                        }
                    }
                }
                .navigationDestination(for: Product.self) { product in
                    ProductDetailsUI(product: product)
                }
            }
        }
    }
}

#Preview {
    ProductListView()
}
