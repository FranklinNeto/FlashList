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
            
            VStack{
                Text("FewClicks")
                    .font(.title)
                
                Text("FewClicks foi desenvolvido para simplificar suas compras, gerando uma lista de compras personalizada de acordo com suas preferências e necessidades. ")
                    .padding()
                
                
                NavigationLink(destination: QuestionView(viewModel: QuizViewModel())){
                    Text("Ir para a Pergunta 1")
                    
                }
            }
        }
    }
}
#Preview {
    Home()
}
