//
//  QuizIntroductionModel.swift
//  BellaFigura
//
//  Created by Stefania Caiazza on 26/10/2020.
//

import Foundation

struct QuizIntroElements: Identifiable {
    var id = UUID()
    var introImage: String
    var introText: String
    var introTitle: String
}
class QuizIntroduction: ObservableObject {

@ Published var listOfQuizIntroElements: [QuizIntroElements]
    
    init(listOfQuizIntroElements: [QuizIntroElements]) {
        self.listOfQuizIntroElements = listOfQuizIntroElements
    }
}

let QuizIntro = QuizIntroduction(
    listOfQuizIntroElements: [
        QuizIntroElements(introImage: "dressCodeBackground", introText: "Choose the best option  considering the social context, the hour of the day and the occasion", introTitle: "Dress Code"),
        QuizIntroElements(introImage: "universityBackground", introText: "Choose the best option  considering the social context, the hour of the day and the occasion", introTitle: "University"),
        QuizIntroElements(introImage: "covidBackground", introText: "Choose the best option  considering the social context, the hour of the day and the occasion", introTitle: "Covid-19")
        
]
)
