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
                    .position(x: 195, y: 48)
                
               
                VStack{
                    Text("Poupe tempo e simplifique suas")
                    Text("compras!")
                }
                    
                    
                    .font(.system(size: 22, weight: .bold))
                    .foregroundColor(Color.corDoTituloDaHome)
                    .padding(.top, 20)
                    .position(x: 188, y: -95)
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
                    .offset(y:-165)
                
                
                Spacer()
                
                
            }
            
   //    }
    }
}

struct SecondPageView: View {
    var body: some View {
        
//        ZStack{
//            Image("telahome2")
//                .resizable()
//                .scaledToFit()
//                .opacity(0.5)
            
            
            VStack {
                VStack{
                    
                    Text("Você também pode obter uma estimativa")
              
                    Text("dos preços dos itens da sua lista,")
                    Text("ajudando a planejar suas compras")
                    Text("melhor!")
                    
                }
                
                .foregroundColor(.black)
                .font(.system(size: 20, weight: .regular))
                .position(x: 195, y: 105)
                
                

                
                Image("tela2")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 240)
                    .padding()
                    .position(x: 200, y: 95)
                
                Text("Para gerar sua lista, basta responder as próximas perguntas!")
                    .font(.system(size: 20, weight: .regular))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                //    .position(x: 195, y: 100)
                    .offset(x: 0, y: 18)
                
                NavigationLink(destination: QuestionView(viewModel: QuizViewModel())) {
                    Text("Iniciar")
                        
                        .font(.system(size: 17, weight: .regular))
                        .padding(.vertical, 22)
                        .padding(.horizontal, 55)
                       // .frame(maxWidth: .infinity)
                        .background(Color.corBotaoAtivado) //
                        .foregroundColor(.white)
                        .cornerRadius(12)
                       // .padding(.horizontal, 40)
                        .position(x: 196, y: 80)
                }
                
                Spacer()
                
            }
       // }
    }
    
}

