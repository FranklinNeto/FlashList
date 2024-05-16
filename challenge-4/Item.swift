//
//  Item.swift
//  challenge-4
//
//  Created by Franklin Ferreira Rezende Neto on 16/05/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
