//
//  ProductsListView.swift
//  NTTDataExercise
//
//  Created by Omar Bacilio on 25/05/23.
//

import SwiftUI

struct ProductsListView: View {
    
    @ObservedObject private var viewModel = ProductsViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.products) { product in
                NavigationLink {
                    ProductDetailView(product: product)
                } label: {
                    ProductItemView(product: product)
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
        ProductsListView()
    }
}
