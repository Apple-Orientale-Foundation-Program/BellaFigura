//
//  EndQuizBellaFiguraView.swift
//  BellaFigura
//
//  Created by Stefania Caiazza on 23/10/2020.
//

import SwiftUI

struct EndQuizBellaFiguraView: View {
    var body: some View {
        NavigationView{
            VStack{
                Image("thumbsUp")
                VStack{
                    Text("You made a great impression")
                        .fontWeight(.semibold)
                        .italic()
                        .foregroundColor(.white)
                        .shadow(radius: 4)
                    Text("Bella Figura!")
                        .fontWeight(.semibold)
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                        .shadow(radius: 4)
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 13)
                                .fill(Color(#colorLiteral(red: 0.6941176471, green: 0.8823529412, blue: 0.2980392157, alpha: 1)))
                )
                Spacer()
                    .frame(height: 98)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
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
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
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

struct EndQuizBellaFiguraView_Previews: PreviewProvider {
    static var previews: some View {
        EndQuizBellaFiguraView()
    }
}
