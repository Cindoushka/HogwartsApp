//
//  DataBaseQuiz.swift
//  HogwartsApp
//
//  Created by apprenant72 on 12/02/2024.
//

import Foundation

var questionsPremiereAnnee : [Question] = [Question(label: "Combien y a-t-il de Maisons à Poudlard?", listAnswers: ["Deux", "Trois", "Quatre", "Cinq"], rightAnswer: 2, isCompleted: false),
                                           Question(label: "Quel est l'emblême des Poufsouffle?", listAnswers: ["Un serpent", "Un aigle", "Un lion", "Un blaireau"], rightAnswer: 3, isCompleted: false),
                                           Question(label: "Qui est le fantôme des Serdaigle?", listAnswers: ["Nick Quasi-Sans-Tête", "Le Baron Sanglant", "Le Moine Gras", "La Dame Grise"], rightAnswer: 3, isCompleted: false)
]

var quizPremiereAnnee : Quizz = Quizz(name: "Validation première année", questions: questionsPremiereAnnee, isCompleted: false, difficulty: 1)

var questionsDeuxiemeAnnee : [Question] = [ Question(label: "Quelle est la créature enfermée dans la chambre des secrets?", listAnswers: ["Une acromentule", "Un demiguise", "Un dragon", "Un basilic"], rightAnswer: 3, isCompleted: false)]

var quizDeuxiemeAnnee: Quizz = Quizz(name: "Validation deuxième année", questions: questionsDeuxiemeAnnee, isCompleted: false, difficulty: 2)

var allQuizes = [quizPremiereAnnee, quizDeuxiemeAnnee]
