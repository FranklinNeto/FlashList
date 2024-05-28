import SwiftUI

struct FirstPageView: View {
    var body: some View {
        
//        ZStack{
//            
//            Image("telahome1")
//                .resizable()
//                .scaledToFit()
//                .opacity(0.5)
            
            
            VStack {
                
                Text("FlashList")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(Color.corDoTituloDaHome)
                    .padding(.bottom, 5)
                    .position(x: 200, y: 40)
                
               
                VStack{
                    Text("Poupe tempo e simplifique suas")
                    Text("compras!")
                }
                    
                    
                    
                    
                  //  .background(.red)
                    
                    .font(.system(size: 22, weight: .bold))
                    .foregroundColor(Color.corDoTituloDaHome)
                    .padding(.top, 20)
                    .position(x: 190, y: -100)
                    .multilineTextAlignment(.center)
                    .offset(x: 10, y:-16)
                   
                
                // Spacer().frame(height: 50)
                
                
                Image("comprartempo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 230)
                    .padding(.bottom, 20)
                    .position(x: 190, y: -100)
                
                
                Text("O FlashList cria listas de compras personalizadas com base nas suas preferências e necessidades")
                    .font(.system(size: 20, weight: .regular))
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .offset(y:-160)
                
                
                Spacer()
                
                
            }
            
      //  }
    }
}

struct SecondPageView: View {
    var body: some View {
        
        ZStack{
            Image("telahome2")
                .resizable()
                .scaledToFit()
                .opacity(0.5)
            
            
            VStack {
                Spacer()
                
                Text("Você também pode obter uma estimativa dos preços dos itens da sua lista, ajudando a planejar suas compras melhor!")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                Spacer()
                
                Image("tela2")
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
                       // .frame(maxWidth: .infinity)
                        .background(Color.corBotaoAtivado) //
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
                
                Spacer()
                
            }
        }
    }
    
}

