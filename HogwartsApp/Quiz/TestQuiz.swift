//
//  TestQuiz.swift
//  HogwartsApp
//
//  Created by apprenant72 on 16/02/2024.
//

import SwiftUI

struct TestQuiz: View {
    
    @State var numeroDeQuestion: Int = 0
    @State var numeroDeQuiz : Int = 0
    
    @EnvironmentObject var mainUser: MainUser
    
    var quizes = QuizManager()
    
    @State var finaleYearDone : Bool = false
    @State var popUp : Bool = false
    @State var successPopUp : Bool = false
    
    var width = UIScreen.main.bounds.width
    
    var body: some View {
        ZStack {
            Color(.purple.opacity(0.4))
            VStack {
                
                HStack {
                    Text("")
                        .frame(width: ((width - 30) / CGFloat((quizes.mesQuiz[mainUser.user.year - 1].questions.count))) * CGFloat((quizes.mesQuiz[mainUser.user.year - 1].questions.filter { $0.isCompleted }.count)))
                        .background(.purple)
                        .cornerRadius(12)
                    
                    Spacer()
                }
                .frame(width: width - 40)
                .background(.white)
                .cornerRadius(12)
                .padding()
                
                Text(quizes.mesQuiz[mainUser.user.year - 1].questions[numeroDeQuestion].label)
                    .font(.system(size:32))
                    .multilineTextAlignment(.center)
                
                ForEach(quizes.mesQuiz[mainUser.user.year - 1].questions[numeroDeQuestion].listAnswers, id: \.self) { reponses in
                    
                    
                    ButtonListAnswers(reponses: reponses, question: quizes.mesQuiz[mainUser.user.year - 1].questions[numeroDeQuestion], mainUser: mainUser, quiz: quizes)
                    
                }
                Text("\(mainUser.user.score) points")
                    .font(.system(size:24))
                    .padding()
                
                Button {
                    withAnimation(.easeInOut(duration: 0.7)) {
                        
                        if numeroDeQuestion < quizes.mesQuiz[mainUser.user.year - 1].questions.count - 1 && quizes.mesQuiz[mainUser.user.year - 1].questions[numeroDeQuestion].isCompleted {
                            
                            numeroDeQuestion += 1
                        }
                        else if numeroDeQuestion == quizes.mesQuiz[mainUser.user.year - 1].questions.count - 1 && ((mainUser.user.year - 1) < quizes.mesQuiz.count - 1) && quizes.mesQuiz[mainUser.user.year - 1].questions[numeroDeQuestion].isCompleted && quizes.validationYear(user: mainUser) {
                            
                            successPopUp = true
                            mainUser.user.year += 1
                            numeroDeQuestion = 0
                            
                        } else if !quizes.mesQuiz[mainUser.user.year - 1].questions[numeroDeQuestion].isCompleted {
                            popUp = true
                        } else {
                            finaleYearDone = true
                        }
                    }
                } label: {
                    Text("Question Suivante")
                }
                .font(.system(size:24))
                .padding()
                .background(.purple.opacity(0.9))
                .cornerRadius(24)
                
                
            }
            .padding(24)
            .cornerRadius(24)
            .overlay(
                ZStack{
                    if popUp == true {
                        AlertQuiz(popUp: $popUp)
                            .shadow(radius: 10)
                    }
                    if successPopUp == true {
                        SuccessQuizView(successPopUp: $successPopUp)
                            .shadow(radius: 10)
                    }
                    if finaleYearDone {
                        ASPICSucces(finaleYearDone: $finaleYearDone)
                    }
                }
                    .zIndex(999)
                    .transition(.opacity)
            )
        }
        .ignoresSafeArea()
    }
}

#Preview {
    TestQuiz()
        .environmentObject(QuizManager())
        .environmentObject(MainUser())
}
