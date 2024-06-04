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
            Product(name: "arroz", price: 800, amount: 1, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: false, isAlmoco: true, isLanche: false, isJanta: true, unidade: .kilogram),
            Product(name: "feijão", price: 900, amount: 1, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: false, isAlmoco: true, isLanche: false, isJanta: true, unidade: .kilogram),
            Product(name: "macarrão", price: 450, amount: 500, isLactose: false, isGluten: true, isVegan: true,
                    isCafe: false, isAlmoco: true, isLanche: false, isJanta: true, unidade: .gram),
            Product(name: "açucar", price: 800, amount: 1, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: true, isAlmoco: true, isLanche: true, isJanta: true, unidade: .kilogram),
            Product(name: "café", price: 1000, amount: 500, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: true, isAlmoco: false, isLanche: true, isJanta: false, unidade: .gram),
            Product(name: "leite", price: 1600, amount: 400, isLactose: true, isGluten: false, isVegan: true,
                    isCafe: true, isAlmoco: false, isLanche: true, isJanta: false, unidade: .gram),
            Product(name: "óleo", price: 600, amount: 900, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: false, isAlmoco: true, isLanche: false, isJanta: true, unidade: .milliliter ),
            Product(name: "ovos", price: 1390, amount: 12, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: true, isAlmoco: true, isLanche: true, isJanta: true, unidade: .unit),
            Product(name: "pão", price: 1400, amount: 500, isLactose: false, isGluten: true, isVegan: true,
                    isCafe: true, isAlmoco: false, isLanche: true, isJanta: false, unidade: .gram),
            Product(name: "trigo", price: 560, amount: 1, isLactose: false, isGluten: true, isVegan: true,
                    isCafe: true, isAlmoco: true, isLanche: true, isJanta: true, unidade: .kilogram)
        ]),
        Category(name: "frios", list: [
            Product(name: "manteiga", price: 1200, amount: 200, isLactose: true, isGluten: false, isVegan: true,
                    isCafe: true, isAlmoco: true, isLanche: true, isJanta: true, unidade: .gram),
            Product(name: "presunto", price: 1000, amount: 180, isLactose: false, isGluten: false, isVegan: false,
                    isCafe: true, isAlmoco: false, isLanche: true, isJanta: false, unidade: .gram),
            Product(name: "queijo", price: 1000, amount: 180, isLactose: true, isGluten: false, isVegan: true,
                    isCafe: true, isAlmoco: true, isLanche: true, isJanta: true, unidade: .gram),
            Product(name: "requeijão", price: 800, amount: 200, isLactose: true, isGluten: false, isVegan: true,
                    isCafe: true, isAlmoco: false, isLanche: true, isJanta: false, unidade: .gram),
            Product(name: "iogurte", price: 600, amount: 510, isLactose: true, isGluten: false, isVegan: true,
                    isCafe: true, isAlmoco: false, isLanche: true, isJanta: false, unidade: .gram)
        ]),
        Category(name: "verduras", list: [
            Product(name: "alface", price: 800, amount: 200, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: false, isAlmoco: true, isLanche: false, isJanta: true, unidade: .gram),
            Product(name: "banana", price: 1000, amount: 910, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: true, isAlmoco: true, isLanche: true, isJanta: true, unidade: .gram),
            Product(name: "batata", price: 400, amount: 400, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: false, isAlmoco: true, isLanche: false, isJanta: true, unidade: .gram),
            Product(name: "cebola", price: 500, amount: 500, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: false, isAlmoco: true, isLanche: false, isJanta: true, unidade: .gram),
            Product(name: "limão", price: 200, amount: 200, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: false, isAlmoco: true, isLanche: true, isJanta: true, unidade: .gram),
            Product(name: "maçã", price: 1100, amount: 500, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: true, isAlmoco: true, isLanche: true, isJanta: false, unidade: .gram),
            Product(name: "tomate", price: 500, amount: 400, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: false, isAlmoco: true, isLanche: false, isJanta: true, unidade: .gram),
            Product(name: "uva", price: 1100, amount: 500, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: true, isAlmoco: false, isLanche: true, isJanta: false, unidade: .gram),
        ]),
        Category(name: "proteínas", list: [
            Product(name: "carne", price: 2000, amount: 500, isLactose: false, isGluten: false, isVegan: false,
                    isCafe: false, isAlmoco: true, isLanche: false, isJanta: true, unidade: .gram),
            Product(name: "frango", price: 1500, amount: 500, isLactose: false, isGluten: false, isVegan: false,
                    isCafe: false, isAlmoco: true, isLanche: false, isJanta: true, unidade: .gram),
            Product(name: "peixe", price: 2000, amount: 500, isLactose: false, isGluten: false, isVegan: false,
                    isCafe: false, isAlmoco: true, isLanche: false, isJanta: true, unidade: .gram),
            Product(name: "soja", price: 1500, amount: 1, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: false, isAlmoco: true, isLanche: true, isJanta: true, unidade: .kilogram),
            Product(name: "grão de bico", price: 1800, amount: 1, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: false, isAlmoco: true, isLanche: true, isJanta: true, unidade: .kilogram),
            Product(name: "lentilha", price: 1390, amount: 500, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: false, isAlmoco: true, isLanche: false, isJanta: true, unidade: .gram),
            Product(name: "tofu", price: 1560, amount: 500, isLactose: false, isGluten: false, isVegan: true,
                    isCafe: true, isAlmoco: true, isLanche: true, isJanta: true, unidade: .gram),
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
                total += Double(product.priceTotal)
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
                                                Text("\(product.amount)\(product.unidade.rawValue)")
                                                    .font(.system(size: 13))
                                                    .foregroundColor(.gray)
                                            }/*.offset(x: 25)*/
                                            Spacer()
                                            Text("R$ \(String(format: "%.2f", product.priceTotal/100).replacingOccurrences(of: ".", with: ","))")
                                                .font(.system(size: 17))
                                                .offset(x: -15)
                                                .foregroundColor(.gray)
                                        
                                                
                                                
                                                
                                        }
                                        .listRowBackground(Color.white) // Definindo a cor de fundo da célula individualmente
                                    }
                                }
                            }
                        }
                        //.listStyle(InsetListStyle())
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
                                            .offset(y: 0)
                                        Text("\(totalItems)")
                                            .font(.system(size: 28, weight: .bold))
                                            .foregroundColor(.white)
                                            .bold()
                                            .offset(y: 10)
                                    }
                                    Spacer()
                                    VStack {
                                        Text("Valor total da lista")
                                            .font(.system(size: 13))
                                            .foregroundColor(.white)
                                            .offset(y: 0)
                                        Text("R$ \(String(format: "%.2f", totalPrice).replacingOccurrences(of: ".", with: ","))")
                                            .font(.system(size: 28, weight: .bold))
                                            .foregroundColor(.white)
                                            .bold()
                                            .offset(y: 10)
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
                adjustedProduct.priceTotal = atribuirPrecoTotal(product: adjustedProduct)
                return convertedAmountAndUnit(product: adjustedProduct)
            })
        }
        .filter { category in
            !category.list.isEmpty
        }
    }
    
//    var filteredBigList: [Category] {
//        if searchText.isEmpty {
//            return listaFiltrada
//        } else {
//            return listaFiltrada.map { category in
//                let filteredProducts = category.list.filter { product in
//                    product.name.lowercased().contains(searchText.lowercased())
//                }
//                return Category(name: category.name, list: filteredProducts)
//            }
//            .filter { category in
//                !category.list.isEmpty
//            }
//        }
//    }
    
    
    var filteredBigList: [Category] {
        if searchText.isEmpty {
            return listaFiltrada
        } else {
            return listaFiltrada.map { category in
                // Filtrar produtos pelo início do nome
                let filteredProducts = category.list.filter { product in
                    product.name.lowercased().hasPrefix(searchText.lowercased())
                }
                // Verificar se a categoria ou os produtos filtrados devem ser incluídos
                let shouldIncludeCategory = category.name.lowercased().contains(searchText.lowercased())
                return Category(name: category.name, list: shouldIncludeCategory ? category.list : filteredProducts)
            }
            .filter { category in
                // Incluir categorias que têm nome correspondente ou produtos filtrados
                !category.list.isEmpty || category.name.lowercased().contains(searchText.lowercased())
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
    
    func convertedAmountAndUnit(product: Product) -> Product {
        var modifiedProduct = product
        switch product.unidade {
        case .gram:
            if product.amount >= 1000 {
                modifiedProduct.amount = product.amount / 1000
                modifiedProduct.unidade = .kilogram
            }
        case .milliliter:
            if product.amount >= 1000 {
                modifiedProduct.amount = product.amount / 1000
                modifiedProduct.unidade = .liter
            }
        default:
            break
        }
        return modifiedProduct
    }
    
    func atribuirPrecoTotal (product: Product) -> Double {
        var precoAtualizado = product
        precoAtualizado.priceTotal *= Double(precoAtualizado.price) * Double(multiplicadorPessoas * multiplicadorFrequencia)
        return precoAtualizado.priceTotal
    }
    
    
    


    
    
}
#Preview {
    BigListTest(viewModel: QuizViewModel())
}

