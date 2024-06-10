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

enum FoodRestrictions: String {
    
    case lactose = "Intolerância à lactose"
    case gluten = "Intolerância à glúten"
    case vegan = "Vegano"
    
}

enum FoodPreferences: String {
    case cafe = "Refeições Matinais"
    case almoco = "Almoço"
    case lanche = "Refeições da Tarde"
    case jantar = "Jantar e Ceia"
}

struct Product: Identifiable {
    let id = UUID()
    let name: String
    var price: Int
    var amount: Int
    var foodRestrictions: Set<FoodRestrictions>
    var foodPreferences: Set<FoodPreferences>
    var unidade: UnitType
    
    var priceTotal: Double = 1
}

struct Category: Identifiable {
    let id = UUID()
    let name: String
    let list: [Product]
}


