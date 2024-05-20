//
//  BigList.swift
//  challenge-4
//
//  Created by Thales Araújo on 18/05/24.
//

import SwiftUI

struct BigList: View {
    
    struct Product: Identifiable {
        let id = UUID()
        let name: String
        var price: Int
        var amount: Int
        let isLactose: Bool
        let isGluten: Bool
        let isVegan: Bool
    }
    
    struct Category: Identifiable {
        let id = UUID()
        let name: String
        let list: [Product]
    }
    
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
    
    
    var body: some View {
        
        
   
        NavigationView {
                List(selection: $selecao) {
                    ForEach(filteredBigList) { category in
                        Section(header: Text(category.name)) {
                            ForEach(category.list) { product in
                                Text(product.name)
                            }
                        }
                        
                    }
                }
                .navigationTitle("Todos os Produtos")
                .listStyle(.sidebar)
                .toolbar {
                    EditButton()
                }
                .searchable(text: $searchText, prompt: "Buscar produtos")
            }
        }
        
    
    
    var filteredBigList: [Category] {
        if searchText.isEmpty {
            return bigList
        } else {
            return bigList.map { category in
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
}

#Preview {
    BigList()
}
