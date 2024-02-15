//
//  ModelsQuiz.swift
//  HogwartsApp
//
//  Created by apprenant72 on 12/02/2024.
//

import Foundation


//enum Rank : String,CaseIterable,Identifiable{
//    var id: String { UUID().uuidString }
//    case un = "Félicitations! Tu viens d'être admis à Poudlard"
//    case deux = "Bravo, tu passes en deuxième année!"
//    case trois = "C'est validé, tu passes en 3ème année!"
//    case quatre = "Tu passes en 4ème année"
//    case cinq = "Tu passes en 5ème année, prépares-toi pour les BUSES!"
//    case six = "Tu as validé tes BUSES, bravo, tu passes en 6ème année!"
//    case sept = "Tu passes en 7ème année, c'est la dernière, cette année c'est le passage des ASPIC!"
//    case final = "Félicitations, tu as obtenu toutes tes ASPIC, ton histoire à Poudlard est terminée.."
//}

struct Reponse: Identifiable, Equatable {
    let id = UUID()
    let label: String
//    let questionLiee: Question
}

struct Question : Identifiable {
    let id = UUID()
    let label : String
    let listAnswers: [String]
    let rightAnswer : Int
    var isCompleted : Bool

    func validatePickedAnswer(_ reponse: String) -> Bool {
        return reponse == listAnswers[rightAnswer] ?  true : false
    }
}

struct Quizz : Identifiable {
    let id = UUID()
    let name : String
    var questions : [Question]
    var isCompleted : Bool
    let difficulty : Int
    
//    func getScore() -> Int{
//        
//        questions.forEach { _ in user.score += 10*difficulty }
//        return points
//        }
}

class QuizManager: Identifiable, ObservableObject {
    var id = UUID()
    
    @Published var mesQuiz : [Quizz] = [Quizz(name: "Validation première année", questions: questionsPremiereAnnee, isCompleted: false, difficulty: 1), Quizz(name: "Validation deuxième année", questions: questionsDeuxiemeAnnee, isCompleted: false, difficulty: 2)]

}

//func getQuizesByDifficulty(_ difficulty: Int) -> Quizz {
//    return allQuizes.filter { $0.difficulty == difficulty }
//}
//    

struct User: Identifiable {
    var id = UUID()
    var pseudo : String
    var image: String
    var house: Houses
    var score: Int
    var age: Int
    var ville: String
    var isConnected: Bool
    var isMainUser: Bool
    var coverPicture: String
    var year: Int

}

class MainUser: ObservableObject {
    
    @Published var user: User = User(pseudo: "Cindoushka", image: "cindie", house: .raven, score: 0, age: 31, ville: "Lille", isConnected: true, isMainUser: true, coverPicture: "covercindie", year: 1)

}

