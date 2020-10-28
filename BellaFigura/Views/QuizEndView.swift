//
//  QuizEndView.swift
//  BellaFigura
//
//  Created by Arianna Costagliola on 26/10/2020.
//

import SwiftUI

struct QuizEndView: View {
    @State var endElements: QuizEnd
    @EnvironmentObject var QuizEndFigura:
        QuizIntroduction
    
    @State var isPressedMenu: Bool = false
    @State var isPressedTryAgain: Bool = false
    var body: some View {
        
        VStack{
            Image(endElements.endImage)
            
            VStack{
            Text(endElements.endText1)
                .fontWeight(.semibold)
                .italic()
                .foregroundColor(.white)
                .shadow(radius: 4)
            Text(endElements.endText2)
                .fontWeight(.semibold)
                .font(.system(size: 50))
                .foregroundColor(.white)
                .shadow(radius: 4)
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 13)
                            .fill(Color(endElements.colorCard)))
            Spacer()
                .frame(height: 98)
            
            Button(action: {isPressedMenu = true}, label: {
                Text("Quiz Menu")
                    .foregroundColor(isPressedMenu ? Color.white : .black)
                    .font(.system(size:30))
                    .background(RoundedRectangle(cornerRadius: 13)
                                    .strokeBorder(Color(#colorLiteral(red: 0.9294117647, green: 0.431372549, blue: 0.3411764706, alpha: 1)), lineWidth: 4)
                                    .frame(width: 226, height: 51)
                                    .background(isPressedMenu ? Color(#colorLiteral(red: 0.9294117647, green: 0.431372549, blue: 0.3411764706, alpha: 1)) : Color.white )
                                    .cornerRadius(13)
                                    
                    )
            })
            
            Spacer()
                .frame(height: 36)
            
            Button(action: {isPressedTryAgain = true}, label: {
                Text("Try Again")
                    .foregroundColor(isPressedTryAgain ? Color.white : .black)
                    .font(.system(size:30))
                    .background(RoundedRectangle(cornerRadius: 13)
                                    .strokeBorder(Color(#colorLiteral(red: 0.9294117647, green: 0.431372549, blue: 0.3411764706, alpha: 1)), lineWidth: 4)
                                    .frame(width: 226, height: 51)
                                    .background(isPressedTryAgain ? Color(#colorLiteral(red: 0.9294117647, green: 0.431372549, blue: 0.3411764706, alpha: 1)) : Color.white )
                                    .cornerRadius(13)
                )
            })
        }
     
    }
}

struct QuizEndView_Previews: PreviewProvider {
    static var previews: some View {
        QuizEndView(endElements: QuizEndIntro.listOfQuizEnd[1])
    }
}

