//
//  ContentView.swift
//  NTTDataExercise
//
//  Created by Omar Bacilio on 25/05/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var viewModel = ProductsViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.products) { product in
                NavigationLink {
                    ProductDetailView(product: product)
                } label: {
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
                .buttonStyle(PlainButtonStyle())
            }
            .listRowSeparator(.hidden)
            .listStyle(.plain)
            .navigationTitle("Productos")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
