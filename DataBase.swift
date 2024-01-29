//
//  DataBase.swift
//  HogwartsApp
//
//  Created by apprenant72 on 26/01/2024.
//

import Foundation

var students : [Student] = [ Student(name: "Harry Potter", house: .gryf, year: 6, isPrefect: false, isQuidditchPlayer: true, quidditchPlace: "Attrapeur", image: "harry"),
                             Student(name: "Hermione Granger", house: .gryf, year: 6, isPrefect: true, isQuidditchPlayer: false, quidditchPlace: "", image: "hermione"),
                             Student(name: "Ronald Weasley", house: .gryf, year: 6, isPrefect: true, isQuidditchPlayer: true, quidditchPlace: "Gardien", image: "ron"),
                             Student(name: "Neville Londubat", house: .gryf, year: 6, isPrefect: false, isQuidditchPlayer: false, quidditchPlace: "", image: "neville"),
                             Student(name: "Luna Lovegood", house: .raven, year: 5, isPrefect: false, isQuidditchPlayer: false, quidditchPlace: "", image: "luna"),
                             Student(name: "Dean Thomas", house: .gryf, year: 6, isPrefect: false, isQuidditchPlayer: false, quidditchPlace: "", image: "dean"),
                             Student(name: "Seamus Finnigan", house: .gryf, year: 6, isPrefect: false, isQuidditchPlayer: false, quidditchPlace: "", image: "seamus"),
                             Student(name: "Parvati Patil", house: .gryf, year: 6, isPrefect: false, isQuidditchPlayer: false, quidditchPlace: "", image: "parvati"),
                             Student(name: "Padma Patil", house: .raven, year: 6, isPrefect: false, isQuidditchPlayer: false, quidditchPlace: "", image: "padma"),
                             Student(name: "Lavande Brown", house: .gryf, year: 6, isPrefect: false, isQuidditchPlayer: false, quidditchPlace: "", image: "lavande"),
                             Student(name: "Cho Chang", house: .raven, year: 7, isPrefect: false, isQuidditchPlayer: true, quidditchPlace: "Attrapeuse", image: "cho"),
                             Student(name: "Cormac McLaggen", house: .gryf, year: 7, isPrefect: false, isQuidditchPlayer: false, quidditchPlace: "", image: "cormac"),
                             Student(name: "Cedric Diggory", house: .huff, year: 7, isPrefect: true, isQuidditchPlayer: true, quidditchPlace: "Attrapeur", image: "cedric"),
                             Student(name: "Drago Malfoy", house: .slyth, year: 6, isPrefect: true, isQuidditchPlayer: true, quidditchPlace: "Attrapeur", image: "drago"),
                             Student(name: "Gregory Goyle", house: .slyth, year: 6, isPrefect: false, isQuidditchPlayer: true, quidditchPlace: "Batteur", image: "goyle"),
                             Student(name: "Vincent Crabbe", house: .slyth, year: 6, isPrefect: false, isQuidditchPlayer: true, quidditchPlace: "Batteur", image: "crabbe"),
                             Student(name: "Blaise Zabini", house: .slyth, year: 6, isPrefect: false, isQuidditchPlayer: false, quidditchPlace: "", image: "blaise"),
                             Student(name: "Pansy Parkinson", house: .slyth, year: 6, isPrefect: true, isQuidditchPlayer: false, quidditchPlace: "", image: "pansy"),
                             Student(name: "Ginny Weasley", house: .gryf, year: 5, isPrefect: false, isQuidditchPlayer: true, quidditchPlace: "Poursuiveuse", image: "ginny"),
                             Student(name: "Susan Bones", house: .huff, year: 6, isPrefect: true, isQuidditchPlayer: false, quidditchPlace: "", image: "bones"),
                             Student(name: "Cindie Bajoni", house: .raven, year: 7, isPrefect: true, isQuidditchPlayer: true, quidditchPlace: "Poursuiveuse", image: "cindie")
]

var professors : [Professor] = [ Professor(name: "Minerva McGonagall", house: .gryf, subject: .metamorphosis, isHeadmaster: true, isDirector: false, image: "minerva"),
                                 Professor(name: "Severus Rogue", house: .slyth, subject: .dada, isHeadmaster: false, isDirector: true, image: "snape"),
                                 Professor(name: "Pomona Chourave", house: .huff, subject: .botanique, isHeadmaster: true, isDirector: false, image: "chourave"),
                                 Professor(name: "Filius Flitwick", house: .raven, subject: .sortilege, isHeadmaster: true, isDirector: false, image: "flitwick"),
                                 Professor(name: "Horace Slughorn", house: .slyth, subject: .potions, isHeadmaster: true, isDirector: false, image: "slug"),
                                 Professor(name: "Cuthbert Binns", house: .raven, subject: .history, isHeadmaster: false, isDirector: false, image: "binns"),
                                 Professor(name: "Charity Burbage", house: .huff, subject: .muggles, isHeadmaster: false, isDirector: false, image: "burbage"),
                                 Professor(name: "Sybille Trelawney", house: .raven, subject: .divination, isHeadmaster: false, isDirector: false, image: "trelawney"),
                                 Professor(name: "Rubeus Hagrid", house: .gryf, subject: .animals, isHeadmaster: false, isDirector: false, image: "hagrid")
]
