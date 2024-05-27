import SwiftUI

struct FirstPageView: View {
    var body: some View {
        
        ZStack{
            
            Image("telahome1")
                .resizable()
                .scaledToFit()
                .opacity(0.5)
            
            
            
            VStack {
                Text("FewClicks")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.green)
                    .padding(.top, 50)
                
                Text("Poupe tempo e simplifique suas compras!")
                    .font(.headline)
                    .foregroundColor(Color.green)
                    .padding(.top, 20)
                
                Spacer()
                
                Image("comprartempo") // Nome do asset da primeira imagem
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .padding()
                
                Text("O FewClicks cria listas de compras personalizadas com base nas suas preferências e necessidades")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                Spacer()
                
            }
        }
    }
}
struct SecondPageView: View {
    var body: some View {
        VStack {
            Spacer()
            
            Text("Você também pode obter uma estimativa dos preços dos itens da sua lista, ajudando a planejar suas compras melhor!")
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Spacer()
            
            Image("tela2") // Nome do asset da segunda imagem
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .padding()
            
            Text("Para gerar sua lista, basta responder as próximas perguntas!")
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            NavigationLink(destination: QuestionView(viewModel: QuizViewModel())) {
                            Text("Iniciar")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .padding(.horizontal)
                        }
            
            Spacer()
            
//            HStack {
//                Spacer()
//                PageControlIndicator(numberOfPages: 2, currentPage: 1)
//                Spacer()
//            }
//            .padding(.bottom, 50)
        }
    }
}



