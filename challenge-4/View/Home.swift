//
//  Home.swift
//  challenge-4
//
//  Created by Thales Araújo on 18/05/24.
//

import SwiftUI

struct Home: View {
    var body: some View {
        
        NavigationStack{

            Text("Aqui será a tela inicial")
            
            NavigationLink(destination: Forms_1()){
                Text("Ir para a Pergunta 1")
             
            }
        }
        
    }
}

#Preview {
    Home()
}
