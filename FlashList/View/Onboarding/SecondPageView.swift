//
//  SecondPageView.swift
//  FlashList
//
//  Created by Thales Araújo on 13/06/24.
//

import SwiftUI

struct SecondPageView: View {
    var body: some View {
        
        VStack {
            VStack{
                Text("Você também pode obter uma estimativa \ndos preços dos itens da sua lista,\najudando a planejar suas compras \nmelhor!")
            }
            
            .foregroundColor(.black)
            .font(.system(size: 20, weight: .regular))
            .position(x: 195, y: 105)

            Image("tela2")
                .resizable()
                .scaledToFit()
                .frame(height: 240)
                .padding()
                .position(x: 200, y: 95)
            
            Text("Para gerar sua lista, basta responder as próximas perguntas!")
                .font(.system(size: 20, weight: .regular))
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .offset(x: 0, y: 18)
            
            NavigationLink(destination: QuestionView(viewModel: QuestionViewModel())) {
                Text("Iniciar")
                    .font(.system(size: 17, weight: .regular))
                    .padding(.vertical, 22)
                    .padding(.horizontal, 55)
                    .background(Color.corBotaoAtivado)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    .position(x: 196, y: 80)
            }
            
            Spacer()
        }
    }
}

#Preview {
    SecondPageView()
}
