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
            AsyncImage(url: URL(string: product.thumbnail)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(height: 200)
            .padding([.top, .bottom], 24)
            
            Text(product.description)
                .padding(.bottom, 24)
            Text("Precio: \(product.formattedPrice)")
                .padding(.bottom, 32)
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Regresar")
                    .frame(maxWidth: .infinity)
            }
            .padding()
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.borderColor)
            }
        }
        .padding(16)
    }
}

struct ProductDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: MockData.mockProduct)
    }
}
