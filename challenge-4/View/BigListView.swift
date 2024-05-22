//
//  BigList.swift
//  challenge-4
//
//  Created by Thales Araújo on 18/05/24.
//

import SwiftUI

struct BigList: View {
    @ObservedObject var viewModel: QuizViewModel
    @ObservedObject var bigListViewModel: BigListViewModel
    
    @State var selecao: UUID?
    @State var searchText = ""
    
    @State var listaFiltrada: [Category] = []
    
    @State var userVegan: Bool = false
    @State var userLactoseIntolerant: Bool = false
    @State var userGlutenIntolerant: Bool = false
    
    var body: some View {
        NavigationView {
            List(selection: bigListViewModel.$selecao) {
                ForEach(bigListViewModel.filteredBigList) { category in
                    Section(header: Text(category.name)) {
                        ForEach(category.list) { product in
                            HStack{
                                
                                Text(product.name)
                                Spacer()
                                Text("R$ \(String(product.price))")
                                
                            }
                        }
                    }
                    
                }
            }
            .navigationTitle("Todos os Produtos")
            .listStyle(.sidebar)
            .onAppear {
                
                bigListViewModel.generatingPersonalizedList()
            }
            .searchable(text: bigListViewModel.$searchText, prompt: "Buscar produtos")
        }
    }
}

#Preview {
    // Instanciando o QuizViewModel e BigListViewModel
    let quizViewModel = QuizViewModel()
    let bigListViewModel = BigListViewModel(viewModel: quizViewModel)
    return BigList(viewModel: quizViewModel, bigListViewModel: bigListViewModel)
}
