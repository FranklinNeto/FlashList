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
            if viewModel.currentQuestionIndex < viewModel.questions.count {
                VStack {
                    Text(viewModel.currentQuestion.text)
                        .font(.title)
                        .padding()
                    
                    ForEach(viewModel.currentQuestion.choices, id: \.self) { choice in
                        Button(action: {
                            viewModel.selectChoice(choice: choice)
                        }) {
                            Text(choice)
                                .padding()
                                .background(viewModel.selectedChoices[viewModel.currentQuestion.key]?.contains(choice) == true ? Color.blue : Color.gray)
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
                            Text("Próxima")
                                .padding()
                                .background(viewModel.canMoveToNextQuestion ? Color.green : Color.gray)
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

#Preview {
    QuestionView(viewModel: QuizViewModel())
}
