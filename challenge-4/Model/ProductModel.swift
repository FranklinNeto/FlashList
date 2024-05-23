//
//  ProductModel.swift
//  challenge-4
//
//  Created by Franklin Ferreira Rezende Neto on 21/05/24.
//

import Foundation

struct Product: Identifiable {
    let id = UUID()
    let name: String
    var price: Int
    var amount: Int
    let isLactose: Bool
    let isGluten: Bool
    let isVegan: Bool
    let isCafe: Bool
    let isAlmoco: Bool
    let isLanche: Bool
    let isJanta: Bool
}

struct Category: Identifiable {
    let id = UUID()
    let name: String
    let list: [Product]
}

