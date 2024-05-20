//
//  Forms 3.swift
//  challenge-4
//
//  Created by Thales Araújo on 18/05/24.
//

import SwiftUI

struct Forms_3: View {
    var body: some View {
        Text("Terceira Pergunta do Questionário")
        NavigationLink(destination: Forms_4()){
            Text("Ir para a Pergunta 4")
         
        }
    }
}

#Preview {
    Forms_3()
}
