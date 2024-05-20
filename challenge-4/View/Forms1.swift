//
//  Forms 1.swift
//  challenge-4
//
//  Created by Thales Araújo on 18/05/24.
//

import SwiftUI

struct Forms_1: View {
    var body: some View {
        Text("Primeira Pergunta do Questionário")
        
        NavigationLink(destination: Forms_2()){
            Text("Ir para a Pergunta 2")
        }
    }
}

#Preview {
    
  
    Forms_1()
}
