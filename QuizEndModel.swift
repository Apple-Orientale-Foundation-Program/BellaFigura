//
//  QuizEnd.swift
//  BellaFigura
//
//  Created by Arianna Costagliola on 26/10/2020.
//

import Foundation
import SwiftUI

struct QuizEnd: Identifiable {
    var id = UUID()
    var endImage: String
    var endText1: String
    var endText2: String
    var colorCard = UIColor()
}
class QuizEndFigura: ObservableObject {
    
    @ Published var listOfQuizEnd : [QuizEnd]
    
    init(listOfQuizEnd: [QuizEnd]) {
        self.listOfQuizEnd = listOfQuizEnd
    }
}
let QuizEndIntro = QuizEndFigura(
    listOfQuizEnd: [
        QuizEnd(endImage: "thumbsUp", endText1: "You made a great impression", endText2: "Bella Figura!", colorCard: UIColor(#colorLiteral(red: 0.6941176471, green: 0.8823529412, blue: 0.2980392157, alpha: 1))),
        QuizEnd(endImage: "thumbsDown", endText1: "You made a bad impression", endText2: "Brutta Figura!", colorCard: UIColor(#colorLiteral(red: 0.9294117647, green: 0.431372549, blue: 0.3411764706, alpha: 1)))
    ])


