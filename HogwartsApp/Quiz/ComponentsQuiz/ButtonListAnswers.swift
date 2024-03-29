//
//  ButtonListAnswers.swift
//  HogwartsApp
//
//  Created by apprenant72 on 19/02/2024.
//

import SwiftUI

struct ButtonListAnswers: View {
    
    var reponses: String
    @State var color : Color = .black
    
    var question: Question
//    var quiz: Quizz
    @ObservedObject var mainUser: MainUser
    var quiz: QuizManager
    
    var body: some View {
        Button {
            
            if !question.isCompleted && question.validatePickedAnswer(reponses) {
                color = .green
                question.isCompleted = true
                quiz.calculPoints(user: mainUser)
                
            } else if !question.isCompleted && !question.validatePickedAnswer(reponses) {
                color = .red
                question.isCompleted = true
            }
            
        } label: {
            Text(reponses)
        }
        .font(.system(size: 20))
        .foregroundColor(.white)
        .frame(width: UIScreen.main.bounds.width - 80, height: 60)
        .background(color.opacity(0.8))
        .cornerRadius(24)
        .disabled(question.isCompleted)
    }
}
