

import SwiftUI
struct ContentView: View {
    var body: some View {
        
        NavigationStack{
            
            TabView {
                FirstPageView()
                    .tag(0)
                SecondPageView()
                    .tag(1)
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        }
    }
}
