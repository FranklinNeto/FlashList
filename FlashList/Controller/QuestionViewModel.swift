//
//  QuizViewModel.swift
//  TesteDeQuestionario
//
//  Created by Franklin Ferreira Rezende Neto on 21/05/24.
//

import SwiftUI

class QuestionViewModel: ObservableObject {

    @Published var currentQuestionIndex: Int = 0
    @Published var selectedChoices: [String: [String]] = [:]
//    @Published var foodRestrictions =  Set<FoodRestrictions>()
//    @Published var foodPreferences =  Set<FoodPreferences>()
    


    let questions: [Question] = [
        Question(text: ["Você mora com quantas", "pessoas?"], choices: ["Moro sozinho", "Moro com 1 pessoa", "Moro com 2 ou mais pessoas"], key: "pessoas", multiple: false),
        Question(text: ["Para quanto tempo são as", "compras?"], choices: ["1 semana", "15 dias", "30 dias"], key: "frequencia", multiple: false),
        Question(text: ["Você pretende usar essa", "lista para quais refeições?"], choices: ["Refeições Matinais", "Almoço", "Refeições da Tarde", "Jantar e Ceia"], key: "refeicao", multiple: true),
        Question(text: ["Você possui uma das", "restrições alimentares abaixo?"], choices: ["Intolerância à lactose", "Intolerância à glúten", "Vegano", "Não possuo"], key: "restricao", multiple:true)
    ]
    
   
   
    
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    

    var canMoveToNextQuestion: Bool {
        guard let selected = selectedChoices[currentQuestion.key] else {
          return false
        }
        return !selected.isEmpty
      }
    
    func selectSingleChoice(choice: String) {
        let key = currentQuestion.key
        if selectedChoices[key]?.first == choice {
            selectedChoices.removeValue(forKey: key)
        } else {
            selectedChoices[key] = [choice]
        }
    }

    func selectMultipleChoices(choice: String) {
        let key = currentQuestion.key
        if choice == "Não possuo" {
            
            selectedChoices[key] = [choice]
        } else {
           
            selectedChoices[key]?.removeAll(where: { $0 == "Não possuo" })
            
            if selectedChoices[key] == nil {
                selectedChoices[key] = [choice]
            } else if let index = selectedChoices[key]?.firstIndex(of: choice) {
                selectedChoices[key]?.remove(at: index)
                if selectedChoices[key]?.isEmpty == true {
                    selectedChoices.removeValue(forKey: key)
                }
            } else {
                selectedChoices[key]?.append(choice)
            }
        }
    }

    func selectChoice(choice: String) {
        if currentQuestion.multiple {
            selectMultipleChoices(choice: choice)
        } else {
            selectSingleChoice(choice: choice)
        }
    }
    
    func nextQuestion() {
        if canMoveToNextQuestion && currentQuestionIndex < questions.count {
            currentQuestionIndex += 1
        }
    }
    
    
    func previousQuestion() {
        if currentQuestionIndex > 0 {
            currentQuestionIndex -= 1
        }
    }
    


    func restartQuiz() {
            currentQuestionIndex = 0
            selectedChoices.removeAll()
        }
}
