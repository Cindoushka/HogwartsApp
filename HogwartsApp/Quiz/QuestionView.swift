////
////  QuestionView.swift
////  HogwartsApp
////
////  Created by apprenant72 on 12/02/2024.
////
//
//import SwiftUI
//
//struct QuestionView: View {
//    
//    @State var numeroQuestion : Int = 0
//    @State var nombreDePoints : Int = 0
//    
//    var body: some View {
//
//        VStack {
//            Text(questionsPremiereAnnee[numeroQuestion].label)
//                .font(.system(size: 36))
//                .padding(.bottom, 40)
//                .multilineTextAlignment(.center)
//            
//            ForEach(questionsPremiereAnnee[numeroQuestion].listAnswers, id: \.self) { answer in
//            
//                ButtonAnswerQuiz(proposition: value, reponse: Int(id), goodanswer: questionsPremiereAnnee[numeroQuestion].rightAnswer, nombreDePoints: $nombreDePoints)
//            }
//            
//            Text("\(nombreDePoints)")
//            
//            Button {
//                if numeroQuestion < questionsPremiereAnnee.count - 1 {
//                    withAnimation {
//                        numeroQuestion += 1
//                    }
//                }
//                
//                
//            } label: {
//                Text("Suivante")
//            }
//            .padding()
//            .background(.purple)
//            .cornerRadius(24)
//            .padding()
//        }
//        .foregroundColor(.white)
//        .padding()
//        .background(.black.opacity(0.6))
//        .cornerRadius(24)
//        .padding(8)
//        .background(.purple)
//        .cornerRadius(24)
//
//    }
//}
//
//#Preview {
//    QuestionView()
//}
