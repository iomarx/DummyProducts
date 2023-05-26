//
//  ProductDetailView.swift
//  NTTDataExercise
//
//  Created by Omar Bacilio on 25/05/23.
//

import SwiftUI

struct ProductDetailView: View {
    let product: Product
    
    var body: some View {
        VStack {
            VStack {
                AsyncImage(url: URL(string: product.thumbnail)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 300, height: 200)
            }
            
            Text(product.description)
            Text("Precio: \(product.price)")
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Regresar")
                    .frame(maxWidth: .infinity)
            }
            .padding()
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color("Border"))
            }
        }
        .padding([.all], 16)
    }
}

struct ProductDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: MockData.mockProduct)
    }
}
