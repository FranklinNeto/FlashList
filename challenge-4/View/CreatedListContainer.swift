////
////  CreatedListContainer.swift
////  challenge-4
////
////  Created by Franklin Ferreira Rezende Neto on 19/05/24.
////
//
//import SwiftUI
//import SwiftData
//
//struct CreatedListContainer: View {
//  
//    
//    
//    
//    var sharedModelContainer: ModelContainer = {
//        let schema = Schema([
//            Item.self,
//        ])
//        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
//
//        do {
//            return try ModelContainer(for: schema, configurations: [modelConfiguration])
//        } catch {
//            fatalError("Could not create ModelContainer: \(error)")
//        }
//    }()
//
//    var body: some View {
//        CreatedList()
//            .modelContainer(sharedModelContainer)
//    }
//}
