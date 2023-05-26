//
//  Network.swift
//  NTTDataExercise
//
//  Created by Omar Bacilio on 26/05/23.
//

import Foundation

protocol Network {
    func fetchProducts(completion: @escaping ([Product]) -> ())
}
