import UIKit
import SwiftUI

struct ContentView: View {
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .corBotaoAtivado
        UIPageControl.appearance().pageIndicatorTintColor = .corDeFundoDaOpcaoDesativada
    }
    
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
        .tint(.black)
    }
}

#Preview {
    ContentView()
    
}
