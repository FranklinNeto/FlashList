//
//  ListView.swift
//  FlashList
//
//  Created by Thales Araújo on 13/06/24.
//

import SwiftUI

struct ListView: View {
    
    @ObservedObject var viewModel = ListViewModel()
    
    var body: some View {{
        NavigationView {
            ZStack {
                Color.white.edgesIgnoringSafeArea(.all) // Fundo branco
                
                List(selection: $viewModel.selecao) {
                    ForEach($viewModel.filteredBigList) { category in
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
                                    }
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
                    viewModel.generatingPersonalizedList()
                }
                .searchable(text: $viewModel.searchText, prompt: "Buscar...")
                .safeAreaInset(edge: .bottom) {
                    VStack {
                        //Divider()
                        HStack {
                            VStack {
                                Text("Quantidade de itens")
                                    .font(.system(size: 13))
                                    .foregroundColor(.white)
                                    .offset(y: 0)
                                Text("\(viewModel.totalItems)")
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
                                Text("R$ \(String(format: "%.2f", viewModel.totalPrice).replacingOccurrences(of: ".", with: ","))")
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
        
    }
}

#Preview {
    ListView()
}
