#warning("Poderia remover o arquivo né?")
////
////  ContentView.swift
////  challenge-4
////
////  Created by Franklin Ferreira Rezende Neto on 16/05/24.
////
//
//import SwiftUI
//import SwiftData
//
//struct CreatedList: View {
//    
//    @Environment(\.modelContext) private var modelContext
//    @Query private var items: [Item]
//
//    var body: some View {
//        
//        NavigationLink(destination: BigListTest(viewModel: QuizViewModel())){
//            Text("Ir para a Listona")
//         
//        }
//        NavigationSplitView {
//            List {
//                ForEach(items) { item in
//                    NavigationLink {
//                        Text("Item at Oi \(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))")
//                    } label: {
//                        Text(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))
//                    }
//                }
//                .onDelete(perform: deleteItems)
//            }
//            .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    EditButton()
//                }
//                ToolbarItem {
//                    Button(action: addItem) {
//                        Label("Add Item", systemImage: "plus")
//                    }
//                }
//            }
//        } detail: {
//            Text("Select an item")
//        }
//    }
//
//    private func addItem() {
//        withAnimation {
//            let newItem = Item(timestamp: Date())
//            modelContext.insert(newItem)
//        }
//    }
//
//    private func deleteItems(offsets: IndexSet) {
//        withAnimation {
//            for index in offsets {
//                modelContext.delete(items[index])
//            }
//        }
//    }
//}
//
//#Preview {
//    CreatedList()
//        .modelContainer(for: Item.self, inMemory: true)
//}
