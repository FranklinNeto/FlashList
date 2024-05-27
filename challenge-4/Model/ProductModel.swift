//
//  ProductModel.swift
//  challenge-4
//
//  Created by Franklin Ferreira Rezende Neto on 21/05/24.
//

import Foundation

enum UnitType: String {
    case gram = "g"
    case kilogram = "kg"
    case milliliter = "mL"
    case liter = "L"
    case unit = "unidades"
}

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
    var unidade: UnitType // Usando o enum UnitType
    
    var priceTotal: Double {
        return Double(price) * Double(amount)
    }
}

struct Category: Identifiable {
    let id = UUID()
    let name: String
    let list: [Product]
}


