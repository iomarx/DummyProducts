//
//  NetworkImpl.swift
//  NTTDataExercise
//
//  Created by Omar Bacilio on 26/05/23.
//

import Foundation

struct NetworkImpl: Network {
    
    private let Endpoint = "https://dummyjson.com/products"
    
    func fetchProducts(completion: @escaping ([Product]) -> ()) {
        if let url = URL(string: Endpoint) {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data {
                    let productsResponse = try? JSONDecoder().decode(ProductsResponse.self, from: data)
                    completion(productsResponse?.products ?? [])
                }
            }.resume()
        }
    }
}
