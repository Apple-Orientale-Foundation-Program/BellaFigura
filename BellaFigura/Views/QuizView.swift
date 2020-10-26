//
//  QuizView.swift
//  BellaFigura
//
//  Created by Stefania Caiazza on 26/10/2020.
//

import SwiftUI
struct QuizView: View {
    var body: some View {
        VStack {
            HStack{
                ProcessSign(currentQuestion: true)
                ProcessSign()
                ProcessSign()
                ProcessSign()
                ProcessSign()
            }
            .padding(.top)
            Spacer()
            QuestionView(questionImage: "dressCodeQuestion", questionText: "questionText")
            AnswerButton(answerText: "answerText")
            AnswerButton(answerText: "answerText2", falseAnswer: true)
            AnswerButton(answerText: "answerText3", trueAnswer: true)
            Spacer()
            //questo va per caso messo in un'altra view a parte o non è poi così necessario?
            Button(action: {
                //forse dovrebbe essere un navigationlink parte di una navigation view?
            }) {
                ZStack {
                    RoundedRectangle(cornerRadius: 13)
                        .frame(height: 38.0)
                        .foregroundColor(.white)
                    Text("Next")
                        .font(.title)
                        .foregroundColor(.white)
                }
                .padding(.horizontal, 130.0)
                .padding(.vertical, 5.0)
            }
        }
    }
}

struct ProcessSign: View {
    var currentQuestion : Bool = false
    
    var body: some View {
        
        if currentQuestion == false
        {
            RoundedRectangle(cornerRadius: 13)
                .frame(width: 30.0, height: 8.0)
                .padding(.horizontal, 2.0)
                .foregroundColor(.gray)
        } else {
            RoundedRectangle(cornerRadius: 13)
                .frame(width: 30.0, height: 8.0)
                .padding(.horizontal, 2.0)
                .foregroundColor(Color(.blue))
        }
    }
}
struct QuestionView: View {
    var questionImage : String
    var questionText : String
    
    var body: some View {
        Image(questionImage)
            .padding(.bottom, -10.0)
        ZStack {
            RoundedRectangle(cornerRadius: 13)
                .frame(height: 188.0)
                .foregroundColor(.white)
                .overlay(RoundedRectangle(cornerRadius: 13)
                            .stroke(Color( .green), lineWidth: 3)
                )
            Text(questionText)
        }
        .padding([.leading, .bottom, .trailing])
    }
    
}
struct AnswerButton: View {
    var answerText : String
    var falseAnswer : Bool = false
    var trueAnswer : Bool = false
    
    var body: some View {
        if falseAnswer == false && trueAnswer == false {
            Button(action: {
            
            //inserire funzione che dia sbagliato o corretto
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 13)
                    .frame(height: 58.0)
                    .foregroundColor(.white)
                    .overlay(RoundedRectangle(cornerRadius: 13)
                                .stroke(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), lineWidth: 3))
                Text(answerText)
                    .foregroundColor(.black)
            }
            .padding(.horizontal, 30.0)
            .padding(.vertical, 5.0)
        })
        }
        if falseAnswer == true && trueAnswer == false {
            Button(action: {
            //inserire funzione che dia sbagliato o corretto
            
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 13)
                    .frame(height: 58.0)
                    .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                    .overlay(RoundedRectangle(cornerRadius: 13)
                                .stroke(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), lineWidth: 3))
                Text(answerText)
                    .foregroundColor(.black)
            }
            .padding(.horizontal, 30.0)
            .padding(.vertical, 5.0)
        })
        }
        if falseAnswer == false && trueAnswer == true {
            Button(action: {
            //inserire funzione che dia sbagliato o corretto
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 13)
                    .frame(height: 58.0)
                    .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                    .overlay(RoundedRectangle(cornerRadius: 13)
                                .stroke(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), lineWidth: 3))
                Text(answerText)
                    .foregroundColor(.black)
            }
            .padding(.horizontal, 30.0)
            .padding(.vertical, 5.0)
            
        })
        }
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
    
}
