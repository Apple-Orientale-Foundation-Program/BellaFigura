//
//  QuizIntroduction.swift
//  BellaFigura
//
//  Created by Stefania Caiazza on 26/10/2020.
//

import SwiftUI

struct QuizIntroductionView: View {
    @State var introElements: QuizIntroElements
    @EnvironmentObject var quizIntroduction: QuizIntroduction
    
    var body: some View {
        NavigationView{
            ZStack {
                Image(introElements.introImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                VStack {
                    Text(introElements.introTitle)
                        .font(.system(size: 40))
                        .fontWeight(.semibold)
                    Spacer()
                        .frame(height: 19)
                    Text(introElements.introText)
                        .font(.title2)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                    Spacer()
                        .frame(height:43)
                    Button(action: {}, label: {
                        Text("Start")
                            .font(.system(size:35))
                            .padding()
                            .foregroundColor(.white)
                            .background(RoundedRectangle(cornerRadius: 13)
                                            .fill(Color(#colorLiteral(red: 0.9294117647, green: 0.431372549, blue: 0.3411764706, alpha: 1)))
                                            .frame(width: 245, height: 70)
                            )
                    }
                    )
                } .offset(x: 0, y: 80)
                .navigationBarItems(leading:
                                        Button(action: {
                                        }) {
                                            HStack {
                                                Image(systemName: "chevron.backward")
                                                    .accentColor(Color(#colorLiteral(red: 0.9294117647, green: 0.431372549, blue: 0.3411764706, alpha: 1)))
                                                Text("Back")
                                                    .accentColor(Color(#colorLiteral(red: 0.9294117647, green: 0.431372549, blue: 0.3411764706, alpha: 1)))
                                            }
                                        }
                )
            }
            .statusBar(hidden: true)
        }
    }
}
struct QuizIntroductionView_Previews: PreviewProvider {
    static var previews: some View { QuizIntroductionView(introElements: QuizIntro.listOfQuizIntroElements[1])
    }
}
