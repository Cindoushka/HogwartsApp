//
//  DataBaseQuiz.swift
//  HogwartsApp
//
//  Created by apprenant72 on 12/02/2024.
//

import Foundation

//var questionsPremiereAnnee : [Question] = [Question(label: "Combien y a-t-il de Maisons à Poudlard?", listAnswers: ["Deux", "Trois", "Quatre", "Cinq"], rightAnswer: 2, isCompleted: false),
//                                           Question(label: "Quel est l'emblême des Poufsouffle?", listAnswers: ["Un serpent", "Un aigle", "Un lion", "Un blaireau"], rightAnswer: 3, isCompleted: false),
//                                           Question(label: "Qui est le fantôme des Serdaigle?", listAnswers: ["Nick Quasi-Sans-Tête", "Le Baron Sanglant", "Le Moine Gras", "La Dame Grise"], rightAnswer: 3, isCompleted: false)
//]
//
//var quizPremiereAnnee : Quizz = Quizz(name: "Validation première année", questions: questionsPremiereAnnee, isCompleted: false, difficulty: 1)
//
//var questionsDeuxiemeAnnee : [Question] = [Question(label: "Quelle est la créature enfermée dans la chambre des secrets?", listAnswers: ["Une acromentule", "Un demiguise", "Un dragon", "Un basilic"], rightAnswer: 3, isCompleted: false)]
//
//var quizDeuxiemeAnnee: Quizz = Quizz(name: "Validation deuxième année", questions: questionsDeuxiemeAnnee, isCompleted: false, difficulty: 2)
//
//var allQuizes = [quizPremiereAnnee, quizDeuxiemeAnnee]
//

class QuizManager: ObservableObject {
    @Published var mesQuiz : [Quizz] = [Quizz(name: "Validation première année", questions: [Question(label: "Combien y a-t-il de Maisons à Poudlard?", listAnswers: ["Deux", "Trois", "Quatre", "Cinq"], rightAnswer: 2, isCompleted: false), Question(label: "Quel est l'emblême des Poufsouffle?", listAnswers: ["Un serpent", "Un aigle", "Un lion", "Un blaireau"], rightAnswer: 3, isCompleted: false), Question(label: "Qui est le fantôme des Serdaigle?", listAnswers: ["Nick Quasi-Sans-Tête", "Le Baron Sanglant", "Le Moine Gras", "La Dame Grise"], rightAnswer: 3, isCompleted: false)], isCompleted: false, difficulty: 1), 
                                        Quizz(name: "Validation deuxième année", questions: [Question(label: "Quelle est la créature enfermée dans la chambre des secrets?", listAnswers: ["Une acromentule", "Un demiguise", "Un dragon", "Un basilic"], rightAnswer: 3, isCompleted: false)], isCompleted: false, difficulty: 2),
                                        Quizz(name: "Validation troisième année", questions: [Question(label: "A quelle page trouve-t-on le cours sur les loups garous?", listAnswers: ["356", "394", "462", "426"], rightAnswer: 1, isCompleted: false)], isCompleted: false, difficulty: 3),
                                        Quizz(name: "Validation quatrième année", questions: [Question(label: "Où se situe l'école Beauxbâtons?", listAnswers: ["France", "Scandinavie", "Amérique latine", "Australie"], rightAnswer: 0, isCompleted: false)], isCompleted: false, difficulty: 4),
                                        Quizz(name: "B.U.S.E.", questions: [Question(label: "Que signifie B.U.S.E.?", listAnswers: ["Baccalauréat Universel des Sorcieres Exceptionnels", "Brevet Universel de Sorcellerie Elementaires", "Baccalauréat de l'Unions de Sorciers Erudits", "Brevet Unique de Sorcellerie Exceptionnelle"], rightAnswer: 1, isCompleted: false)], isCompleted: false, difficulty: 5),
                                        Quizz(name: "Validation sixième année", questions: [Question(label: "Qu'est-ce que le Felix Felicis?", listAnswers: ["Un contre sort puissant", "Une figure de quidditch", "Une créature magique", "La potion de chance"], rightAnswer: 3, isCompleted: false)], isCompleted: false, difficulty: 6),
                                        Quizz(name: "A.S.P.I.C.", questions: [Question(label: "Où Hermione fait transplaner le trio après le mariage?", listAnswers: ["La forêt de Dean", "Square Grimmaurd", "Charing Cross Road", "La chaumière aux coquillages"], rightAnswer: 2, isCompleted: false)], isCompleted: false, difficulty: 7)
    
    ]
    
    func calculPoints(user: MainUser) -> Int {
        user.user.score += (10 * mesQuiz[user.user.year - 1].difficulty)
        return user.user.score
    }
    
    func validationYear(user: MainUser) -> Bool {
        
        let pointForYears = mesQuiz[user.user.year].questions.count * 10 * mesQuiz[user.user.year].difficulty
        
        if user.user.score < pointForYears / 2 {
            return false
        } else {
            return true
        }
    }
}
