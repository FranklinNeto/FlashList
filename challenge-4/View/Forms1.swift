//
//  Forms 1.swift
//  challenge-4
//
//  Created by Thales Araújo on 18/05/24.
//

import SwiftUI

struct QuestionnaireView: View {
    @State private var selectedCategory = "Proteínas"
    @State private var selectedFrequency = "Semanal"
    @State private var numberOfPeople = 1
    
    var categories = ["Proteínas", "Grãos", "Laticínios", "Frutas e Vegetais"]
    var frequencies = ["Diária", "Semanal", "Mensal"]
    
    var body: some View {
        
        VStack{
            Form {
                Section(header: Text("Preferências")) {
                    Picker("Categoria preferida", selection: $selectedCategory) {
                        ForEach(categories, id: \.self) {
                            Text($0)
                        }
                    }
                    Picker("Frequência de compras", selection: $selectedFrequency) {
                        ForEach(frequencies, id: \.self) {
                            Text($0)
                        }
                    }
                    Stepper(value: $numberOfPeople, in: 1...10) {
                        Text("Número de pessoas: \(numberOfPeople)")
                    }
                }
                //            NavigationLink(destination: ContentView() {
                //                Text("Gerar Lista de Compras")
                //            }
            }
            .navigationTitle("Questionário")
            
            Text("Primeira Pergunta do Questionário")
            
            NavigationLink(destination: Forms_2()){
                Text("Ir para a Pergunta 2")
            }
        }
    }
    
}









//    @State private var quizzInfo: Info?
//    @State private var questions: [Question] = []
//
//    var body: some View {
//
//        if let info = quizzInfo {
//
//            Text(info.title)
//
//        } else {
//            VStack(spacing: 4){
//
//                ProgressView()
//                Text ("Please, wait")
//                    .font(.caption2)
//                    .foregroundColor(.gray)
//            }
//        }
//
//
//    }
//}

#Preview {

    QuestionnaireView()

}
