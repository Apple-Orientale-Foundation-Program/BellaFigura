//
//  QuizIntroductionView.swift
//  BellaFigura
//
//  Created by Federica Volpe on 23/10/2020.
//

import SwiftUI

struct QuizIntroductionView: View {
    var body: some View {
        
        NavigationView {
            
        ZStack {
        Image("dressCodeBackground")
            VStack {
            Text("Dress Code")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
                Text("Choose the best option  considering the social context, the hour of the day and the occasion")
                    .font(.title2)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                
                
                Button(action: {}, label: {
                    Text("Start")
                        .frame(width: 180, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .font(.largeTitle)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color(#colorLiteral(red: 0.9215686275, green: 0.431372549, blue: 0.3411764706, alpha: 1)))
                        .cornerRadius(13)
                }) .padding(.top, 100)
            } .offset(x: 0, y: 80)
            
            .navigationBarItems(leading:
              Button(action: {
              }) {
                HStack {
                  Image(systemName: "arrow.left")
                    .accentColor(Color(#colorLiteral(red: 0.9215686275, green: 0.431372549, blue: 0.3411764706, alpha: 1)))
                  Text("Back")
                    .accentColor(Color(#colorLiteral(red: 0.9215686275, green: 0.431372549, blue: 0.3411764706, alpha: 1)))
                }
            })
                
            }
            }
        }
    }


struct QuizIntroductionView_Previews: PreviewProvider {
    static var previews: some View {
        QuizIntroductionView()
    }
}
