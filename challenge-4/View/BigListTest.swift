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
            Product(name: "arroz", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: false, isAlmoco: true, isLanche: false, isJanta: true),
            Product(name: "feijão", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: false, isAlmoco: true, isLanche: false, isJanta: true),
            Product(name: "macarrão", price: 100, amount: 1, isLactose: false, isGluten: true, isVegan: true,
                    isCafe: false, isAlmoco: true, isLanche: false, isJanta: true),
            Product(name: "açucar", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: true, isAlmoco: true, isLanche: true, isJanta: true),
            Product(name: "café", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: true, isAlmoco: false, isLanche: true, isJanta: false),
            Product(name: "leite", price: 100, amount: 1, isLactose: true, isGluten: false, isVegan: true,
                    isCafe: true, isAlmoco: false, isLanche: true, isJanta: false),
            Product(name: "óleo", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: false, isAlmoco: true, isLanche: false, isJanta: true),
            Product(name: "ovos", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: true, isAlmoco: true, isLanche: true, isJanta: true),
            Product(name: "pão", price: 100, amount: 1, isLactose: false, isGluten: true, isVegan: true,
                    isCafe: true, isAlmoco: false, isLanche: true, isJanta: false),
            Product(name: "trigo", price: 100, amount: 1, isLactose: false, isGluten: true, isVegan: true,
                    isCafe: true, isAlmoco: true, isLanche: true, isJanta: true)
        ]),
        Category(name: "frios", list: [
            Product(name: "manteiga", price: 100, amount: 1, isLactose: true, isGluten: false, isVegan: true,
                    isCafe: true, isAlmoco: true, isLanche: true, isJanta: true),
            Product(name: "presunto", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: false,
                    isCafe: true, isAlmoco: false, isLanche: true, isJanta: false),
            Product(name: "queijo", price: 100, amount: 1, isLactose: true, isGluten: false, isVegan: true,
                    isCafe: true, isAlmoco: true, isLanche: true, isJanta: true),
            Product(name: "requeijão", price: 100, amount: 1, isLactose: true, isGluten: false, isVegan: true,
                    isCafe: true, isAlmoco: false, isLanche: true, isJanta: false),
            Product(name: "iogurte", price: 100, amount: 1, isLactose: true, isGluten: false, isVegan: true,
                    isCafe: true, isAlmoco: false, isLanche: true, isJanta: false)
        ]),
        Category(name: "verduras", list: [
            Product(name: "alface", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: false, isAlmoco: true, isLanche: false, isJanta: true),
            Product(name: "banana", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: true, isAlmoco: true, isLanche: true, isJanta: true),
            Product(name: "batata", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: false, isAlmoco: true, isLanche: false, isJanta: true),
            Product(name: "cebola", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: false, isAlmoco: true, isLanche: false, isJanta: true),
            Product(name: "limão", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: false, isAlmoco: true, isLanche: true, isJanta: true),
            Product(name: "maçã", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: true, isAlmoco: true, isLanche: true, isJanta: false),
            Product(name: "tomate", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: false, isAlmoco: true, isLanche: false, isJanta: true),
            Product(name: "uva", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: true, isAlmoco: false, isLanche: true, isJanta: false),
        ]),
        Category(name: "proteínas", list: [
            Product(name: "carne", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: false,
                    isCafe: false, isAlmoco: true, isLanche: false, isJanta: true),
            Product(name: "frango", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: false,
                    isCafe: false, isAlmoco: true, isLanche: false, isJanta: true),
            Product(name: "peixe", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: false,
                    isCafe: false, isAlmoco: true, isLanche: false, isJanta: true),
            Product(name: "soja", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: false, isAlmoco: true, isLanche: true, isJanta: true),
            Product(name: "grão de bico", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: false, isAlmoco: true, isLanche: true, isJanta: true),
            Product(name: "lentilha", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: false, isAlmoco: true, isLanche: false, isJanta: true),
            Product(name: "tofu", price: 100, amount: 1, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: true, isAlmoco: true, isLanche: true, isJanta: true),
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
    
    @State var multiplicadorPessoas: Int = 1  // Variável para armazenar o multiplicador de quantidade
    @State var multiplicadorFrequencia: Int = 1  // Variável para armazenar o multiplicador de frequencia
    
    var totalItems: Int {
        listaFiltrada.reduce(0) { result, category in
            result + category.list.count
        }
    }

    var totalPrice: Double {
        var total: Double = 0.0
        for category in listaFiltrada {
            for product in category.list {
                total += Double(product.amount) * Double(product.price)
            }
        }
        return total/100
    }
    
    //    var body: some View {
    //            NavigationView {
    //                    List(selection: $selecao) {
    //                        ForEach(filteredBigList) { category in
    //                            Section(header: Text(category.name.capitalized)
    //                                .font(.system(size: 20, weight: .bold))
    //                                .foregroundColor(Color(.corBotaoAtivado))
    //                            ) {
    //                                ForEach(category.list) { product in
    //                                    HStack (){
    //                                        VStack(alignment: .leading){
    //                                            Text("\(product.name.capitalized)")
    //                                                .font(.system(size: 17))
    //                                            Text("\(product.amount) \(product.amount > 1 ? "unidades" : "unidade")")
    //                                                .font(.system(size: 13))
    //                                                .foregroundColor(.gray)
    //                                        }
    //                                        Spacer()
    //                                        Text("R$ \(String(format: "%.2f", product.priceTotal).replacingOccurrences(of: ".", with: ","))")
    //                                            .font(.system(size: 17))
    //                                            .foregroundColor(.gray)
    //                                    }
    //                                }
    //                            }
    //                        }
    //                    }
    //                    //.navigationTitle("Lista Gerada Para Você")
    //                    .listStyle(GroupedListStyle())
    //                    .onAppear {
    //                        generatingPersonalizedList()
    //                    }
    //                    .searchable(text: $searchText, prompt: "Buscar...")
    //                    .safeAreaInset(edge: .bottom) {
    //                        VStack {
    //                            Divider()
    //                            HStack {
    //                                VStack {
    //                                    Text("Quantidade de itens")
    //                                        .font(.system(size: 13))
    //                                        .foregroundColor(.white)
    //
    //                                    Text("\(totalItems)")
    //                                        .font(.system(size: 28, weight: .bold))
    //                                        .foregroundColor(.white)
    //                                        .bold()
    //                                        .offset(y: 10)
    //                                }
    //                                Spacer()
    //                                VStack {
    //                                    Text("Valor total da lista")
    //                                        .font(.custom("SF Pro", size: 13))
    //                                        .foregroundColor(.white)
    //                                    Text("R$ \(String(format: "%.2f", totalPrice).replacingOccurrences(of: ".", with: ","))")
    //                                        .font(.system(size: 28, weight: .bold))
    //                                        .foregroundColor(.white)
    //                                        .bold()
    //                                        .offset(y: 10)
    //                                }
    //                            }
    //                            .padding()
    //                            //.background(Color(red: 0.3, green: 0.6, blue: 0.2))
    //                            .background(Color(.corBotaoAtivado))
    //                            //.frame(width: 100, height: 100, alignment: 50)
    //                        }
    //                    }
    //            }
    //        }
        
        var body: some View {
                NavigationView {
                    ZStack {
                        Color.white.edgesIgnoringSafeArea(.all) // Fundo branco

                        List(selection: $selecao) {
                            ForEach(filteredBigList) { category in
                                Section(header: Text(category.name.capitalized)
                                            .font(.system(size: 20, weight: .bold))
                                            .foregroundColor(Color(.corBotaoAtivado))
                                            .textCase(nil)
                                ) {
                                    ForEach(category.list) { product in
                                        HStack {
                                            VStack(alignment: .leading) {
                                                Text("\(product.name.capitalized)")
                                                    .font(.system(size: 17))
                                                Text("\(product.amount) \(product.amount > 1 ? "unidades" : "unidade")")
                                                    .font(.system(size: 13))
                                                    .foregroundColor(.gray)
                                            }
                                            Spacer()
                                            Text("R$ \(String(format: "%.2f", product.priceTotal).replacingOccurrences(of: ".", with: ","))")
                                                .font(.system(size: 17))
                                                .foregroundColor(.gray)
                                        }
                                        .listRowBackground(Color.white) // Definindo a cor de fundo da célula individualmente
                                    }
                                }
                            }
                        }
                        .listStyle(InsetGroupedListStyle())
                        .onAppear {
                            generatingPersonalizedList()
                        }
                        .searchable(text: $searchText, prompt: "Buscar...")
                        .safeAreaInset(edge: .bottom) {
                            VStack {
                                //Divider()
                                HStack {
                                    VStack {
                                        Text("Quantidade de itens")
                                            .font(.system(size: 13))
                                            .foregroundColor(.white)
                                            .offset(y: 5)
                                        Text("\(totalItems)")
                                            .font(.system(size: 28, weight: .bold))
                                            .foregroundColor(.white)
                                            .bold()
                                            .offset(y: 15)
                                    }
                                    Spacer()
                                    VStack {
                                        Text("Valor total da lista")
                                            .font(.system(size: 13))
                                            .foregroundColor(.white)
                                            .offset(y: 5)
                                        Text("R$ \(String(format: "%.2f", totalPrice).replacingOccurrences(of: ".", with: ","))")
                                            .font(.system(size: 28, weight: .bold))
                                            .foregroundColor(.white)
                                            .bold()
                                            .offset(y: 15)
                                    }
                                }
                                .padding()
                                .background(Color(.corBotaoAtivado))
                            }
                        }
                        .navigationBarTitle("Sua lista está pronta!")
                    }
                }
            }



    
    func generatingPersonalizedList() {
        
        capturingUserFoodRestritions()
        capturingUserFoodPreferences()
        capturingUserFoodQuantity()
        capturingUserFoodFrequency()
        
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
                
                
                var shouldIncludeMeal = false
                     if cafeDaManha {
                         shouldIncludeMeal = shouldIncludeMeal || product.isCafe
                     }
                     if almoco {
                         shouldIncludeMeal = shouldIncludeMeal || product.isAlmoco
                     }
                     if lancheDaTarde {
                         shouldIncludeMeal = shouldIncludeMeal || product.isLanche
                     }
                     if jantar {
                         shouldIncludeMeal = shouldIncludeMeal || product.isJanta
                     }
                     
                     // Se alguma preferência de refeição foi marcada, verificamos se o produto atende a pelo menos uma delas
                     if cafeDaManha || almoco || lancheDaTarde || jantar {
                         shouldInclude = shouldInclude && shouldIncludeMeal
                     }
                
                return shouldInclude
            }
            return Category(name: category.name, list: filteredProducts.map { product in
                var adjustedProduct = product
                adjustedProduct.amount *= multiplicadorPessoas
                adjustedProduct.amount *= multiplicadorFrequencia
                return adjustedProduct
            })
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
                    case "Vegano":
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
    
    
    func capturingUserFoodQuantity() {
        if !viewModel.selectedChoices.isEmpty {
            if let listaDeQuantidadeDePessoas = viewModel.selectedChoices["pessoas"] {
                for quantidadeDePessoas in listaDeQuantidadeDePessoas {
                    switch quantidadeDePessoas {
                    case "Moro sozinho":
                        multiplicadorPessoas = 1
                    case "Moro com 1 pessoa":
                        multiplicadorPessoas = 2
                    case "Moro com 2 ou mais pessoas":
                        multiplicadorPessoas = 3
                    default:
                        break
                    }
                }
            }
        }
    }
    
    func capturingUserFoodFrequency() {
        if !viewModel.selectedChoices.isEmpty {
            if let listaDeFrequencia = viewModel.selectedChoices["frequencia"] {
                for quantidadeFrequencia in listaDeFrequencia {
                    switch quantidadeFrequencia {
                    case "1 semana":
                        multiplicadorFrequencia = 1
                    case "15 dias":
                        multiplicadorFrequencia = 2
                    case "30 dias":
                        multiplicadorFrequencia = 4
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
