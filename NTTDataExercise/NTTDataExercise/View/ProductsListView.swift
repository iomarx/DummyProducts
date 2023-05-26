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
                ZStack {
                    ProductItemView(product: product)
                    NavigationLink(destination: ProductDetailView(product: product)) {
                        EmptyView()
                    }
                    .opacity(0.0)
                }
                .buttonStyle(PlainButtonStyle())
                .listRowSeparator(.hidden)
            }
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
