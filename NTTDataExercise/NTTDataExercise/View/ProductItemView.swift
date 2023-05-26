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
                .padding(.bottom, 8)
            Text("Descripción: \(product.description)")
                .padding(.bottom, 8)
            Text("Precio: \(product.price)")
        }
        .padding(16)
        .frame(maxWidth: .infinity)
        .overlay {
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color("Border"))
        }
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: Product(id: 1, title: "Title", description: "Description", price: 1.0, thumbnail: ""))
    }
}
