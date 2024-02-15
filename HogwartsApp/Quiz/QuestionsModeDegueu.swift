//
//  QuestionsModeDegueu.swift
//  HogwartsApp
//
//  Created by apprenant72 on 12/02/2024.
//

import SwiftUI

struct QuestionsModeDegueu: View {
    
    @State var numeroDeQuestion = 0
    @State var reponseChoisie : Bool = false
    @Binding var color: Color
    
    @EnvironmentObject var quiz: QuizManager
//    var difficulte : Int
    
    var body: some View {
        ZStack {
            Color(.black)
            VStack {
                
                Text(quiz.mesQuiz[0].questions[numeroDeQuestion].label)
                    .font(.system(size: 36))
                    .multilineTextAlignment(.center)
                
                ForEach(quiz.mesQuiz[0].questions[numeroDeQuestion].listAnswers, id: \.self) { answer  in

                    TestButtons(reponseChoisie: $reponseChoisie, bonneReponse: questionsPremiereAnnee[numeroDeQuestion].rightAnswer, proposition: answer, question: quiz.mesQuiz[0].questions[numeroDeQuestion])
                }
                
                
                Button {
                    if numeroDeQuestion < questionsPremiereAnnee.count - 1 {
                        numeroDeQuestion += 1
                    } else {
                        numeroDeQuestion = 0
                    }
                    reponseChoisie = false

                } label: {
                    Text("Suivante")
                }
                .padding()
                    
            }
            .foregroundColor(.white)
            .frame(width: UIScreen.main.bounds.width - 60, height: UIScreen.main.bounds.height - 200)
            .background(.pink.opacity(0.4))
            .cornerRadius(60)
            .padding()
            .background(.purple.opacity(0.2))
            .cornerRadius(60)
            
        }
        .ignoresSafeArea()
        
    }
}

#Preview {
    QuestionsModeDegueu(color: .constant(.black))
}

struct TestButtons: View {
    
    @Binding var reponseChoisie : Bool
    @State var nombreDePoints = 0
    @State var color: Color = .black

    var bonneReponse : Int
//    var reponse: Int
    var proposition: String
    var question: Question
    @EnvironmentObject var user: MainUser
    
    var body: some View {
        Button {

            if question.validatePickedAnswer(proposition) {
                user.user.score += 10
//                question.isCompleted = true
                color = .green
            } else {
                color = .red
//                question.isCompleted = true
            }
            
        } label: {
            Text(proposition)
        }
        .font(.system(size: 24))
        .foregroundColor(.white)
        .frame(width: UIScreen.main.bounds.width - 80, height: 60)
        .background(color)
        .cornerRadius(24)
        .disabled(question.isCompleted)
    }
}
