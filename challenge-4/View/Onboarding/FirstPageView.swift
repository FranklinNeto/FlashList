//
//  FirstPageView.swift
//  FlashList
//
//  Created by Thales Araújo on 13/06/24.
//

import SwiftUI

struct FirstPageView: View {
    var body: some View {
        
        VStack {
            Text("FlashList")
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(Color.corDoTituloDaHome)
                .padding(.bottom, 5)
                .position(x: 195, y: 48)
            
            
            VStack{
                Text("Poupe tempo e simplifique suas \ncompras!")
            }
            
            .font(.system(size: 22, weight: .bold))
            .foregroundColor(Color.corDoTituloDaHome)
            .padding(.top, 20)
            .position(x: 188, y: -95)
            .multilineTextAlignment(.center)
            .offset(x: 10, y:-16)
            
            Image("comprartempo")
                .resizable()
                .scaledToFit()
                .frame(height: 230)
                .padding(.bottom, 20)
                .position(x: 190, y: -100)
            
            Text("O FlashList cria listas de compras alimentícias personalizadas com base nas suas preferências e necessidades")
                .font(.system(size: 20, weight: .regular))
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .offset(y:-165)
            
            Spacer()
        }
    }
}

#Preview {
    FirstPageView()
}
