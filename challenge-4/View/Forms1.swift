//
//  Forms 1.swift
//  challenge-4
//
//  Created by Thales Araújo on 18/05/24.
//

import SwiftUI



struct Forms_1: View {
    
    @State private var quizzInfo: Info?
    @State private var questions: [Question] = []
    
    var body: some View {
        
        if let info = quizzInfo {
            
            Text(info.title)
            
        } else {
            VStack(spacing: 4){
                
                ProgressView()
                Text ("Please, wait")
                    .font(.caption2)
                    .foregroundColor(.gray)
            }
        }
        
    
    }
}

#Preview {
    Forms_1()
}
