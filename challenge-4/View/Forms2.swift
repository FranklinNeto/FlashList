//
//  Forms 2.swift
//  challenge-4
//
//  Created by Thales Araújo on 18/05/24.
//

import SwiftUI

struct Forms_2: View {
    var body: some View {
        Text("Segunda Pergunta do Questionário")
        NavigationLink(destination: Forms_3()){
            Text("Ir para a Pergunta 3")
         
        }
        
        
    }
}

#Preview {
    Forms_2()
}
