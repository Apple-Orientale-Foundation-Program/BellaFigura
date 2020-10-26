//
//  QuizModel.swift
//  BellaFigura
//
//  Created by Stefania Caiazza on 26/10/2020.
//

import Foundation
struct Quiz: Identifiable {
    var id = UUID ()
    var quizImage: String
    var quizQuestion: String
    var quizAnswer1: String
    var quizAnswer2: String
    var quizAnswer3: String
}

class Quizzes: ObservableObject {
    
}
