//
//  QuizModel.swift
//  BellaFigura
//
//  Created by Stefania Caiazza on 26/10/2020.
//

import Foundation
struct Quiz: Identifiable {
    var id: Int
    var quizImage: String
    var quizQuestion: String
    var quizAnswers: [String]
    var correctAnswerIndex: Int
}
//
//var quiz1 = Quiz(id:1, quizImage: "questionMark", quizQuestion: "what do you wear in class", quizAnswers: ["pijama", "wedding dress","jeans"], correctAnswerIndex: quizAnswers[correctAnswerIndex])
//var quiz2 = Quiz(id:2, quizImage: "thumbsUp", quizQuestion: "Bar?", quizAnswers:["1", "2", "3", "4"])
//
