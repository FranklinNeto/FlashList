//
//  QuestionView.swift
//  challenge-4
//
//  Created by Franklin Ferreira Rezende Neto on 21/05/24.
//

import SwiftUI

struct QuestionView: View {
    @ObservedObject var viewModel: QuestionViewModel
    
   
    
    
    
    var body: some View {
        
//        ZStack{
//            
//            Image("quest4")
//                .resizable()
//                .scaledToFit()
//                .opacity(0.5)
            
            
            
        VStack() {
                
                if viewModel.currentQuestionIndex < viewModel.questions.count {
                    VStack {
                        HStack (spacing: 0) {
                            ForEach(0..<4 ) { index in
                                
                                HStack (spacing: 0){
                                    
                                    ZStack{
                                        Circle()
                                            .fill(index < viewModel.currentQuestionIndex
                                                  ? Color.corBotaoAtivado : Color.gray)
                                            .frame(width: 40, height: 40)
                                        
                                        Image(systemName: "checkmark")
                                            .foregroundColor(.black)
                                    }
                                  
                                if index != viewModel.questions.count - 1 {
                                        Rectangle()
                                            .fill(/*index < viewModel.currentQuestionIndex ? Color.corBarraDeProgresso :*/ Color.corLinhaDeProgressoDesativada)
                                            .frame(width: 50,height: 1)
                                   }
                                }
                                
                            }
                            
                        }
                        
                        .position(x: 165, y: 5)
                        .padding()
                        .frame(maxWidth: .infinity)
                        
                        VStack{
                            if viewModel.currentQuestionIndex + 1 == 1 || viewModel.currentQuestionIndex + 1 == 2 {
                                Text("Pergunta \(viewModel.currentQuestionIndex + 1): selecione uma resposta")
                                   
                                    .font(.system(size: 16))
                                    .position(x: 178, y: 36)

                            }
                            
                            if viewModel.currentQuestionIndex + 1 == 3 || viewModel.currentQuestionIndex + 1 == 4 {
                                
                                VStack(spacing:0){
                                    Text("Pergunta \(viewModel.currentQuestionIndex + 1): selecione uma ou mais")
                                        .font(.system(size: 16, weight: .regular))
                                        .position(x: 170, y: 36)
                                    
                                    Text ("respostas")
                                        .font(.system(size: 16, weight: .regular))
                                        .position(x: 170, y: 19)
                                }
                                
                            }
                        }
                        .position(x: 189, y: -5)
                        
                        VStack{
                            
                            Text(viewModel.currentQuestion.text[0])
                                .font(.system(size: 24, weight: .medium))
                            // .padding()
                                .foregroundColor(.cordasPerguntas)
                            
                            
                            Text(viewModel.currentQuestion.text[1])
                                .font(.system(size: 24, weight: .medium))
                                .foregroundColor(.cordasPerguntas)
                        }
                        .position(x: 165, y: -30)
                        .padding()
                        
                        
                        
                        GeometryReader { geometry in
                            VStack {
                                ForEach(viewModel.currentQuestion.choices, id: \.self) { choice in
    
                                    Button(action: {
                                        viewModel.selectChoice(choice: choice)
                                        
                                    }) {
                                        Text(choice)
                                            .frame(width: geometry.size.width * 0.8)
                        
                                            .padding(.horizontal, 11)
                                            .padding(.vertical, 13)
                                           
                                            
                                            .font(.system(size: 20, weight: .regular))
                                            .foregroundColor(viewModel.selectedChoices[viewModel.currentQuestion.key]?.contains(choice) == true ?
                                                .corDoTextoOpcaoAtivada
                                                             :
                                                    .corDoTextoOpcaoDesativado)
                                        
                                        
                                            .background(viewModel.selectedChoices[viewModel.currentQuestion.key]?.contains(choice) == true ? Color.corBotaoAtivado:
                                                            Color.corDeFundoDaOpcaoDesativada)
                                            .foregroundColor(.corDoTextoOpcaoDesativado)
                                            .cornerRadius(40)
                                    }
                                    .padding(.vertical, 2)
                                }
                            }
                            .frame(width: geometry.size.width, height: geometry.size.height, alignment: .top) // Centraliza a VStack
                            .position(x: 178, y: -18)
                            
                            
                        }
                        .frame(maxWidth: .infinity)
                    }
                    .padding()
                  
                    HStack {
                        if viewModel.currentQuestionIndex > 0 {
                            Button(action: {
                                viewModel.previousQuestion()
                            }) {
                                Text("Anterior")
                                    .font(.system(size: 17, weight: .semibold))
                                    .padding(.horizontal, 42)
                                    .padding(.vertical, 20)
                                    .background(Color.white)
                                    .foregroundColor(.corDoVoltar)
                                    .cornerRadius(12)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 12)
                                            .stroke(Color.corBotaoAtivado, lineWidth: 4)
                                    )
                                
                            }
                           
                        }
                        
                     
                        Spacer().frame(width: 16)
                        
                        Button(action: {
                            viewModel.nextQuestion()
                        }) {
                            Text("Avançar")
                                .font(.system(size: 17, weight: .semibold))
                                .padding(.horizontal, 42)
                                .padding(.vertical, 20)
                            
                            
                                .background(viewModel.canMoveToNextQuestion ? Color.corBotaoAtivado : Color.gray)
                                .foregroundColor(.white)
                                .cornerRadius(12)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(viewModel.canMoveToNextQuestion ? Color.corBotaoAtivado : Color.gray, lineWidth: 4)
                                )
                        }
                        .disabled(!viewModel.canMoveToNextQuestion)
                        
                      
                    }
                    
                    .position(x: 195, y: 202)
                    .padding(.bottom)
                    
                    
                    
                    
                    
                } else {
                  
                    
                    
                    VStack {
                        
                        HStack {
                                NavigationLink(destination: {
                                    let quizViewModel = viewModel
                                    BigListTest(viewModel: quizViewModel)
                                }) {
                                    Text("Ir para lista personalizada")
                                        .font(.system(size: 17, weight: .semibold))
                                        .padding(.horizontal, 42)
                                        .padding(.vertical, 20)
                                        .frame(maxWidth: .infinity)  // Faz o botão ocupar a largura máxima disponível
                                        .background(Color.corBotaoAtivado)
                                        .foregroundColor(.white)
                                        .cornerRadius(12)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 12)
                                                .stroke(Color.corBotaoAtivado, lineWidth: 4)
                                        )
                                }
                            }

                            HStack {
                                Button(action: {
                                    viewModel.restartQuiz()
                                }) {
                                    Text("Refazer Questionário")
                                        .font(.system(size: 17, weight: .semibold))
                                        .padding(.horizontal, 42)
                                        .padding(.vertical, 20)
                                        .frame(maxWidth: .infinity)  // Faz o botão ocupar a largura máxima disponível
                                        .background(Color.white)
                                        .foregroundColor(.corDoVoltar)
                                        .cornerRadius(12)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 12)
                                                .stroke(Color.corBotaoAtivado, lineWidth: 4)
                                        )
                                }
                                .padding(.top, 20)
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                }
                
                
                
            }
            //.navigationBarBackButtonHidden(false)
            
     //   }
    }
    
//}
#Preview {
    QuestionView(viewModel: QuestionViewModel())
}
