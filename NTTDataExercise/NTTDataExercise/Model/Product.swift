//
//  Product.swift
//  NTTDataExercise
//
//  Created by Omar Bacilio on 25/05/23.
//

import Foundation

struct Product: Identifiable, Codable {
    let id: Int
    let title: String
    let description: String
    let price: Float
    let thumbnail: String
}
