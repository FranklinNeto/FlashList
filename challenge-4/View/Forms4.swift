//
//  Forms 4.swift
//  challenge-4
//
//  Created by Thales Araújo on 18/05/24.
//

import SwiftUI

struct Forms_4: View {
    var body: some View {
        Text("Quarta Pergunta do Questionário")
        NavigationLink(destination: CreatedList()){
            Text("Ir para a Lista Criada")
         
        }
    }
}

#Preview {
    Forms_4()
}
