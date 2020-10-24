//
//  QuizEndBruttaFiguraView.swift
//  BellaFigura
//
//  Created by Arianna Costagliola on 23/10/2020.
//

import SwiftUI

struct QuizEndBruttaFiguraView: View {
    var body: some View {
        NavigationView{
            VStack{
                Image("Thumbs up")
                VStack{
                    Text("You made a bad impression")
                        .fontWeight(.semibold)
                        .italic()
                        .foregroundColor(.white)
                        .shadow(radius: 4)
                    Text("Brutta Figura!")
                        .fontWeight(.semibold)
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                        .shadow(radius: 4)
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 13)
                                .fill(Color(#colorLiteral(red: 0.8745098039, green: 0.2470588235, blue: 0.2470588235, alpha: 1)))
                )
                Spacer()
                    .frame(height: 98)
                
                Button(action: {}, label: {
                    Text("Quiz Menu")
                        .foregroundColor(.white)
                        .font(.system(size:30))
                        .background(RoundedRectangle(cornerRadius: 13)
                                        .fill(Color(#colorLiteral(red: 0.9294117647, green: 0.431372549, blue: 0.3411764706, alpha: 1)))
                                        .frame(width: 226, height: 51)
                        )
                })
                
                Spacer()
                    .frame(height: 36)
                
                Button(action: {}, label: {
                    Text("Try Again")
                        .foregroundColor(.white)
                        .font(.system(size:30))
                        .background(RoundedRectangle(cornerRadius: 13)
                                        .fill(Color(#colorLiteral(red: 0.9294117647, green: 0.431372549, blue: 0.3411764706, alpha: 1)))
                                        .frame(width: 226, height: 51)
                        )
                })
            }
        }
    }
}

struct QuizEndBruttaFiguraView_Previews: PreviewProvider {
    static var previews: some View {
        QuizEndBruttaFiguraView()
    }
}
