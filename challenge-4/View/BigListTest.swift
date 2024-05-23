//
//  BigListTest.swift
//  challenge-4
//
//  Created by Thales Araújo on 22/05/24.
//

import SwiftUI

struct BigListTest: View {
    @ObservedObject var viewModel: QuizViewModel

    @State var bigList: [Category] = [
        Category(name: "mercearia", list: [
            Product(name: "arroz", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true),
            Product(name: "feijão", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true),
            Product(name: "macarrão", price: 100, amount: 1, isLactose: false, isGluten: true, isVegan: true),
            Product(name: "açucar", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true),
            Product(name: "café", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true),
            Product(name: "leite", price: 100, amount: 1, isLactose: true, isGluten: false, isVegan: true),
            Product(name: "óleo", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true),
            Product(name: "ovos", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true),
            Product(name: "pão", price: 100, amount: 1, isLactose: false, isGluten: true, isVegan: true),
            Product(name: "trigo", price: 100, amount: 1, isLactose: false, isGluten: true, isVegan: true)
        ]),
        Category(name: "frios", list: [
            Product(name: "manteiga", price: 100, amount: 1, isLactose: true, isGluten: false, isVegan: true),
            Product(name: "presunto", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: false),
            Product(name: "queijo", price: 100, amount: 1, isLactose: true, isGluten: false, isVegan: true),
            Product(name: "requeijão", price: 100, amount: 1, isLactose: true, isGluten: false, isVegan: true),
            Product(name: "iogurte", price: 100, amount: 1, isLactose: true, isGluten: false, isVegan: true)
        ]),
        Category(name: "verduras", list: [
            Product(name: "alface", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true),
            Product(name: "banana", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true),
            Product(name: "batata", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true),
            Product(name: "cebola", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true),
            Product(name: "limão", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true),
            Product(name: "maçã", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true),
            Product(name: "tomate", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true),
            Product(name: "uva", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true),
        ]),
        Category(name: "proteínas", list: [
            Product(name: "carne", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: false),
            Product(name: "frango", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: false),
            Product(name: "peixe", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: false),
            Product(name: "soja", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true),
            Product(name: "grão de bico", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true),
            Product(name: "lentilha", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true),
            Product(name: "tofu", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true),
        ])
    ]
    
    @State private var selecao: UUID?
    @State private var searchText = ""
    
    @State var listaFiltrada: [Category] = []
    
    @State var userVegan: Bool = false
    @State var userLactoseIntolerant: Bool = false
    @State var userGlutenIntolerant: Bool = false
    
    @State var cafeDaManha: Bool = false
    @State var almoco: Bool = false
    @State var lancheDaTarde: Bool = false
    @State var jantar: Bool = false
    
    
    var body: some View {
        NavigationView {
            List(selection: $selecao) {
                ForEach(filteredBigList) { category in
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
            .navigationTitle("Lista Gerada Para Voce")
            .listStyle(.sidebar)
            .onAppear {
                
                generatingPersonalizedList()
            }
            .searchable(text: $searchText, prompt: "Buscar produtos")
        }
    }
    
    func generatingPersonalizedList() {
        
        capturingUserFoodRestritions()
        listaFiltrada = bigList.map { category in
            let filteredProducts = category.list.filter { product in
                var shouldInclude = true
                
                if userVegan {
                    shouldInclude = shouldInclude && product.isVegan
                }
                
                if userLactoseIntolerant {
                    shouldInclude = shouldInclude && !product.isLactose
                }
                
                if userGlutenIntolerant {
                    shouldInclude = shouldInclude && !product.isGluten
                }
                
                return shouldInclude
            }
            return Category(name: category.name, list: filteredProducts)
        }
        .filter { category in
            !category.list.isEmpty
        }
    }
    
    var filteredBigList: [Category] {
        if searchText.isEmpty {
            return listaFiltrada
        } else {
            return listaFiltrada.map { category in
                let filteredProducts = category.list.filter { product in
                    product.name.lowercased().contains(searchText.lowercased())
                }
                return Category(name: category.name, list: filteredProducts)
            }
            .filter { category in
                !category.list.isEmpty
            }
        }
    }
    
    
    func capturingUserFoodRestritions() {
        if !viewModel.selectedChoices.isEmpty{
            if let listaDeRestricoes = viewModel.selectedChoices["restricao"] {
                for restricao in listaDeRestricoes {
                    switch restricao {
                    case "Intolerância à glúten":
                        userGlutenIntolerant = true
                    case "Intolerância à lactose":
                        userLactoseIntolerant = true
                    case "Veganismo":
                        userVegan = true
                        
                    case "Não possuo":
                        userVegan = false
                        userLactoseIntolerant = false
                        userGlutenIntolerant = false
                        
                    default:
                        break
                    }
                }
            }
        }
    }
    

    func capturingUserFoodPreferences() {
        if !viewModel.selectedChoices.isEmpty{
            if let listaDePreferencias = viewModel.selectedChoices["refeicao"] {
                for preferencia in listaDePreferencias {
                    switch preferencia {
                    case "Refeições Matinais":
                        cafeDaManha = true
                    case "Almoço":
                        almoco = true
                    case "Refeições da Tarde":
                        lancheDaTarde = true
                    case "Jantar e Ceia":
                        jantar = true
                    default:
                        break
                    }
                }
            }
        }
    }
}
#Preview {
    BigListTest(viewModel: QuizViewModel())
}
