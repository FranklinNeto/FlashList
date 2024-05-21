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
                Text("SwiftList")
                    .font(.title)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing")
                    .padding()
                
                
                NavigationLink(destination: QuestionnaireView()){
                    Text("Ir para a Pergunta 1")
                    
                }
                
                
            }
        }
        
    }
}
#Preview {
    Home()
}
