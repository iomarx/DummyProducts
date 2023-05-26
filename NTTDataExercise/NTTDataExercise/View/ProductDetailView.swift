//
//  ProductDetailView.swift
//  NTTDataExercise
//
//  Created by Omar Bacilio on 25/05/23.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: Product
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: product.thumbnail)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(height: ViewConstants.imageDetailHeight)
            .padding([.top, .bottom], ViewConstants.largeSize)
            
            Text(product.description)
                .padding(.bottom, ViewConstants.largeSize)
            Text("Precio: \(product.formattedPrice)")
                .padding(.bottom, ViewConstants.extraLargeSize)
            
            Spacer()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Regresar")
                    .frame(maxWidth: .infinity)
            }
            .padding()
            .overlay {
                RoundedRectangle(cornerRadius: ViewConstants.smallSize)
                    .stroke(Color.borderColor)
            }
        }
        .padding(ViewConstants.mediumSize)
        .navigationTitle(product.title)
    }
}

struct ProductDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: MockData.mockProduct)
    }
}
