//
//  ListViewModel.swift
//  FlashList
//
//  Created by Thales Araújo on 13/06/24.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var listFoods: [Category] = [
        Category(name: "mercearia", list: [
            Product(name: "arroz", price: 800, amount: 1, foodRestrictions: [.vegan], foodPreferences: [.jantar, .almoco], unit: .kilogram),
            Product(name: "feijão", price: 900, amount: 1, foodRestrictions: [.vegan], foodPreferences: [.jantar, .almoco], unit: .kilogram),
            Product(name: "macarrão", price: 450, amount: 500, foodRestrictions: [.vegan, .gluten], foodPreferences: [.jantar, .almoco], unit: .gram),
            Product(name: "açúcar", price: 800, amount: 1, foodRestrictions: [.vegan], foodPreferences: [.jantar, .almoco, .cafe, .lanche] , unit: .kilogram),
            Product(name: "café", price: 1000, amount: 500, foodRestrictions: [.vegan], foodPreferences: [.cafe, .lanche], unit: .gram),
            Product(name: "leite", price: 1600, amount: 400, foodRestrictions: [.lactose], foodPreferences: [.cafe, .lanche], unit: .gram),
            Product(name: "óleo", price: 600, amount: 900, foodRestrictions: [.vegan], foodPreferences: [.jantar, .almoco], unit: .milliliter),
            Product(name: "ovos", price: 1390, amount: 12, foodRestrictions: [], foodPreferences: [.cafe, .almoco, .lanche, .jantar], unit: .unit),
            Product(name: "pão", price: 1400, amount: 500, foodRestrictions: [.vegan, .gluten], foodPreferences: [.cafe, .lanche], unit: .gram),
            Product(name: "trigo", price: 560, amount: 1, foodRestrictions: [.vegan, .gluten], foodPreferences: [.cafe, .almoco, .lanche, .jantar], unit: .kilogram),
        ]),
        Category(name: "frios", list: [
            Product(name: "manteiga", price: 1200, amount: 200, foodRestrictions: [.lactose], foodPreferences: [.cafe, .almoco, .lanche, .jantar], unit: .gram),
            Product(name: "presunto", price: 1000, amount: 180, foodRestrictions: [], foodPreferences: [.cafe, .lanche], unit: .gram),
            Product(name: "queijo", price: 1000, amount: 180, foodRestrictions: [.lactose], foodPreferences: [.cafe, .almoco, .lanche, .jantar], unit: .gram),
            Product(name: "requeijão", price: 800, amount: 200, foodRestrictions: [.lactose], foodPreferences: [.cafe, .lanche], unit: .gram),
            Product(name: "iogurte", price: 600, amount: 510, foodRestrictions: [.lactose], foodPreferences: [.cafe, .lanche], unit: .gram)
        ]),
        Category(name: "verduras", list: [
            Product(name: "alface", price: 800, amount: 200, foodRestrictions: [.vegan], foodPreferences: [.jantar, .almoco], unit: .gram),
            Product(name: "banana", price: 1000, amount: 910, foodRestrictions: [.vegan], foodPreferences: [.cafe, .almoco, .lanche, .jantar], unit: .gram),
            Product(name: "batata", price: 400, amount: 400, foodRestrictions: [.vegan], foodPreferences: [.jantar, .almoco], unit: .gram),
            Product(name: "cebola", price: 500, amount: 500, foodRestrictions: [.vegan], foodPreferences: [.jantar, .almoco], unit: .gram),
            Product(name: "limão", price: 200, amount: 200, foodRestrictions: [.vegan], foodPreferences: [.jantar, .almoco, .lanche], unit: .gram),
            Product(name: "maçã", price: 1100, amount: 500, foodRestrictions: [.vegan], foodPreferences: [.cafe, .almoco, .lanche], unit: .gram),
            Product(name: "tomate", price: 500, amount: 400, foodRestrictions: [.vegan], foodPreferences: [.jantar, .almoco], unit: .gram),
            Product(name: "uva", price: 1100, amount: 500, foodRestrictions: [.vegan], foodPreferences: [.cafe, .lanche], unit: .gram)
        ]),
        Category(name: "proteínas", list: [
            Product(name: "carne", price: 2000, amount: 500, foodRestrictions: [], foodPreferences: [.jantar, .almoco], unit: .gram),
            Product(name: "frango", price: 1500, amount: 500, foodRestrictions: [], foodPreferences: [.jantar, .almoco], unit: .gram),
            Product(name: "peixe", price: 2000, amount: 500, foodRestrictions: [], foodPreferences: [.jantar, .almoco], unit: .gram),
            Product(name: "soja", price: 1500, amount: 1, foodRestrictions: [.vegan], foodPreferences: [.jantar, .almoco, .lanche], unit: .kilogram),
            Product(name: "grão de bico", price: 1800, amount: 1, foodRestrictions: [.vegan], foodPreferences: [.jantar, .almoco, .lanche], unit: .kilogram),
            Product(name: "lentilha", price: 1390, amount: 500, foodRestrictions: [.vegan], foodPreferences: [.jantar, .almoco], unit: .gram),
            Product(name: "tofu", price: 1560, amount: 500, foodRestrictions: [.vegan], foodPreferences: [.cafe, .almoco, .lanche, .jantar], unit: .gram)
        ])
    ]
    
    @Published private var selection: UUID?
    @Published private var searchText = ""
    
    @Published var filteredList: [Category] = []
    
    @Published var userVegan: Bool = false
    @Published var userLactoseIntolerant: Bool = false
    @Published var userGlutenIntolerant: Bool = false
    
    @Published var breakfasFoods: Bool = false
    @Published var almoco: Bool = false
    @Published var lancheDaTarde: Bool = false
    @Published var jantar: Bool = false
    
    @Published var multiplicadorPessoas: Int = 1  // Variável para armazenar o multiplicador de quantidade
    @Published var multiplicadorFrequencia: Int = 1  // Variável para armazenar o multiplicador de frequencia
    
    var totalItems: Int {
        filteredList.reduce(0) { result, category in
            result + category.list.count
        }
    }
    
    var totalPrice: Double {
        var total: Double = 0.0
        for category in filteredList {
            for product in category.list {
                total += Double(product.priceTotal)
            }
        }
        return total/100
    }
    
    func generatingPersonalizedList() {
        
        capturingUserFoodRestritions()
        capturingUserFoodPreferences()
        capturingUserFoodQuantity()
        capturingUserFoodFrequency()
        
        filteredList = listFoods.map { category in
            let filteredProducts = category.list.filter { product in
                var shouldInclude = true
                
                if userVegan {
                    shouldInclude = shouldInclude && product.foodRestrictions.contains(.vegan)
                }
                
                if userLactoseIntolerant {
                    shouldInclude = shouldInclude && !product.foodRestrictions.contains(.lactose)
                }
                
                if userGlutenIntolerant {
                    shouldInclude = shouldInclude && !product.foodRestrictions.contains(.gluten)
                }
                
                
                var shouldIncludeMeal = false
                if cafeDaManha {
                    shouldIncludeMeal = shouldIncludeMeal || product.foodPreferences.contains(.cafe)
                }
                if almoco {
                    shouldIncludeMeal = shouldIncludeMeal || product.foodPreferences.contains(.almoco)
                }
                if lancheDaTarde {
                    shouldIncludeMeal = shouldIncludeMeal || product.foodPreferences.contains(.lanche)
                }
                if jantar {
                    shouldIncludeMeal = shouldIncludeMeal || product.foodPreferences.contains(.jantar)
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
    
    var filteredBigList: [Category] {
        if searchText.isEmpty {
            return filteredList
        } else {
            return filteredList.map { category in
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
        switch product.unit {
        case .gram:
            if product.amount >= 1000 {
                modifiedProduct.amount = product.amount / 1000
                modifiedProduct.unit = .kilogram
            }
        case .milliliter:
            if product.amount >= 1000 {
                modifiedProduct.amount = product.amount / 1000
                modifiedProduct.unit = .liter
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
