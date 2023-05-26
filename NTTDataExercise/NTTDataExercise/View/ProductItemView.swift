//
//  ProductItemView.swift
//  NTTDataExercise
//
//  Created by Omar Bacilio on 26/05/23.
//

import SwiftUI

struct ProductItemView: View {
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Nombre: \(product.title)")
                .padding(.bottom, ViewConstants.smallSize)
            Text("Descripción: \(product.description)")
                .padding(.bottom, ViewConstants.smallSize)
            Text("Precio: \(product.formattedPrice)")
        }
        .padding(ViewConstants.mediumSize)
        .frame(maxWidth: .infinity)
        .overlay {
            RoundedRectangle(cornerRadius: ViewConstants.smallSize)
                .stroke(Color.borderColor)
        }
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: MockData.mockProduct)
    }
}
