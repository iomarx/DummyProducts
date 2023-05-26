//
//  ProductsViewModel.swift
//  NTTDataExercise
//
//  Created by Omar Bacilio on 25/05/23.
//

import Foundation

class ProductsViewModel: ObservableObject {
    
    @Published var products: [Product] = []
    
    private let network: Network
    
    init(network: Network) {
        self.network = network
        fetchProducts()
    }
    
    private func fetchProducts() {
        network.fetchProducts { [weak self] products in
            DispatchQueue.main.async {
                self?.products = products
            }
        }
    }
}
