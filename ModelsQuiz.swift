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

class Question : Identifiable, ObservableObject {
    let id = UUID()
    let label : String
    let listAnswers: [String]
    let rightAnswer : Int
    @Published var isCompleted : Bool
    
    init(label: String, listAnswers: [String], rightAnswer: Int, isCompleted: Bool) {
        self.label = label
        self.listAnswers = listAnswers
        self.rightAnswer = rightAnswer
        self.isCompleted = isCompleted
    }
    

    func validatePickedAnswer(_ reponse: String) -> Bool {
        return reponse == listAnswers[rightAnswer] ?  true : false
    }
}

class Quizz : Identifiable, ObservableObject {
    let id = UUID()
    let name : String
    var questions : [Question]
    @Published var isCompleted : Bool
    let difficulty : Int
    
    init(name: String, questions: [Question], isCompleted: Bool, difficulty: Int) {
        self.name = name
        self.questions = questions
        self.isCompleted = isCompleted
        self.difficulty = difficulty
    }
}

