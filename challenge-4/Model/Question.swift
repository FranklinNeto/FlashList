//
//  Question.swift
//  challenge-4
//
//  Created by Franklin Ferreira Rezende Neto on 20/05/24.
//

import Foundation


struct Question : Identifiable, Codable{
    
    var id: UUID = .init()
    var question: Int
    var options: [String]
    var answer: String
    
    var tappedAnswer: String = ""
    
}

enum CodeKeys: CodingKey {
    
    case question
    case options
    case answer
 
}
