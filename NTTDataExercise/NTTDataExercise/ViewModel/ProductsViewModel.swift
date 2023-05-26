//
//  ProductsViewModel.swift
//  NTTDataExercise
//
//  Created by Omar Bacilio on 25/05/23.
//

import Foundation

class ProductsViewModel: ObservableObject {
    
    @Published var products: [Product] = []
    
    init() {
        fetchProducts()
    }
    
    func fetchProducts() {
        if let url = URL(string: "https://dummyjson.com/products") {
            URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
                if let data {
                    let productsResponse = try? JSONDecoder().decode(ProductsResponse.self, from: data)
                    
                    DispatchQueue.main.async {
                        self?.products = productsResponse?.products ?? []
                    }
                }
            }.resume()
        }
    }
}
