//
//  QuestionView.swift
//  challenge-4
//
//  Created by Franklin Ferreira Rezende Neto on 21/05/24.
//

import SwiftUI

struct QuestionView: View {
    @ObservedObject var viewModel: QuizViewModel
    
    
    
    var body: some View {
        
        VStack {
            // Barra de progresso
            HStack {
                
                
                ForEach(0..<4) { index in
                                    
                    
                    HStack{
                        
                        ZStack{
                        Circle()
                            .fill(index <= viewModel.currentQuestionIndex ? Color.green : Color.gray)
                            .frame(width: 40, height: 40)
                        
                        Image(systemName: "checkmark")
                            .foregroundColor(.black)
                    }
                                    if index != 4 - 1 {
                                        Rectangle()
                                            .fill(index < viewModel.currentQuestionIndex ? Color.green : Color.gray)
                                            .frame(height: 2)
                                            .frame(maxWidth: .infinity)
                                    }
                                }
                
                
                }
                
            }
            .padding()
            
            
            
            
            VStack {
                if viewModel.currentQuestionIndex < viewModel.questions.count {
                    VStack {
                        Text(viewModel.currentQuestion.text)
                            .font(.title)
                            .padding()
                            .foregroundColor(.red)
                        
                        ForEach(viewModel.currentQuestion.choices, id: \.self) { choice in
                            Button(action: {
                                viewModel.selectChoice(choice: choice)
                                
                            }) {
                                Text(choice)
                                    .padding()
                                    .foregroundColor(.corDoTextoOpcaoDesativado)
                                
                                
                                    .background(viewModel.selectedChoices[viewModel.currentQuestion.key]?.contains(choice) == true ? Color.corBotaoAtivado : Color.corDeFundoDaOpcaoDesativada)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            .padding(.vertical, 4)
                        }
                        
                        Spacer()
                        
                        HStack {
                            if viewModel.currentQuestionIndex > 0 {
                                Button(action: {
                                    viewModel.previousQuestion()
                                }) {
                                    Text("Anterior")
                                        .padding()
                                        .background(Color.gray)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                }
                                .padding()
                            }
                            
                            Button(action: {
                                viewModel.nextQuestion()
                            }) {
                                Text("Avançar")
                                    .padding()
                                    .background(viewModel.canMoveToNextQuestion ? Color.corBotaoAtivado : Color.gray)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            .disabled(!viewModel.canMoveToNextQuestion)
                            .padding()
                        }
                    }
                    .padding()
                } else {
                    VStack {
                        NavigationLink(destination: {
                            let quizViewModel = viewModel
                            BigListTest(viewModel: quizViewModel)
                        }) {
                            Text("Ir para lista personalizada")
                                .padding()
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        
                        Button(action: {
                            viewModel.restartQuiz()
                        }) {
                            Text("Refazer Questionário")
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .padding(.top, 20)
                    }
                }
                
            }.navigationBarBackButtonHidden(false)
            
        }
    }
}
#Preview {
    QuestionView(viewModel: QuizViewModel())
}
