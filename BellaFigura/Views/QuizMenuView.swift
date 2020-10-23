//
//  QuizMenuView.swift
//  BellaFigura
//
//  Created by Gabriele Borriello on 22/10/2020.
//

import SwiftUI

struct QuizMenuView: View {
    var body: some View {
        NavigationView{
            VStack {
            Image("businessMan")
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                    .stroke()
                    .fill(Color(#colorLiteral(red: 0.9294117647, green: 0.431372549, blue: 0.3411764706, alpha: 1)))
                    .padding()
                    .overlay(Text("vabbè comunque lascia stare")
                                .foregroundColor(Color.black))
            
            }
            
            .navigationBarTitle("Quiz Menu", displayMode: .inline)
            .navigationBarItems(trailing:
                Button(
                    action: {/*Inserire funzione Spiegazioni*/},
                    label: {
                        Image(
                            systemName: "info.circle"
                        ).accentColor(Color(#colorLiteral(red: 0.9215686275, green: 0.431372549, blue: 0.3411764706, alpha: 1)))
                    }
                )
            )
        }
    }
}

struct QuizMenuView_Previews: PreviewProvider {
    static var previews: some View {
        QuizMenuView()
    }
}
