////
////  ButtonAnswerQuiz.swift
////  HogwartsApp
////
////  Created by apprenant72 on 12/02/2024.
////
//
//import SwiftUI
//
//struct ButtonAnswerQuiz: View {
//    
//    var proposition: String
//    @State var color : Color = .black
//    var reponse : Int
//    var goodanswer: Int
//    
//    @Binding var nombreDePoints: Int
//    
//    var body: some View {
//
//        Button {
//            goodanswer == reponse ? (color = .green) : (color = .red)
//            
//            goodanswer == reponse ? (nombreDePoints += 10) : (nombreDePoints = nombreDePoints)
//            
//        } label: {
//            Text(proposition)
//        }
//        .font(.system(size: 24))
//        .foregroundColor(.white)
//        .frame(width: UIScreen.main.bounds.width - 60, height: 60)
//        .background(color)
//        .cornerRadius(24)
//    }
//}
//
//#Preview {
//    ButtonAnswerQuiz(proposition: "test", reponse: 2, goodanswer: 2, nombreDePoints: .constant(0))
//}
