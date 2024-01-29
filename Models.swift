//
//  Models.swift
//  HogwartsApp
//
//  Created by apprenant72 on 26/01/2024.
//

import Foundation
import SwiftUI

struct Student: Identifiable {
    var id = UUID()
    var name : String
    var house: Houses
    var year: Int
    var isPrefect: Bool
    var isQuidditchPlayer: Bool
    var quidditchPlace: String
    var image: String
}

enum Houses: String {
    case gryf = "Gryffondor"
    case raven = "Serdaigle"
    case slyth = "Serpentard"
    case huff = "Poufsouffle"
}

struct Professor: Identifiable {
    var id = UUID()
    var name: String
    var house: Houses
    var subject: Subjects
    var isHeadmaster : Bool
    var isDirector: Bool
    var image : String
}

enum Subjects: String {
    case potions = "Potions"
    case dada = "Défense contre les Forces du Mal"
    case muggles = "Étude des Moldus"
    case animals = "Soins aux Créatures Magiques"
    case sortilege = "Sortilèges"
    case metamorphosis = "Métamorphoses"
    case divination = "Divination"
    case arithmancie = "Arithmancie"
    case astronomy = "Astronomie"
    case botanique = "Botanique"
    case history = "Histoire de la Magie"
}
