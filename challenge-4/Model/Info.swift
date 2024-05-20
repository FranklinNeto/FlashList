//
//  Info.swift
//  challenge-4
//
//  Created by Franklin Ferreira Rezende Neto on 20/05/24.
//

import Foundation


struct Info : Codable{
    
    var title: String
    var peopleAttended: Int
    var rules: [String]
    
    
}

enum CodingKeys: CodingKey {
    
    case title
    case peopleAttended
    case rules
    
}
