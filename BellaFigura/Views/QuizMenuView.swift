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
            
            Form {
                
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
