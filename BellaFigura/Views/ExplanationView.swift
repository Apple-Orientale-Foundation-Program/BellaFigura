//
//  ExplanationView.swift
//  BellaFigura
//
//  Created by Stefania Caiazza on 27/10/2020.
//

import SwiftUI

struct ExplanationView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("T-shirt and Jeans")
                .strikethrough()
                .foregroundColor(Color(#colorLiteral(red: 0.9294117647, green: 0.431372549, blue: 0.3411764706, alpha: 1)))
                .font(.system(size: 22))
            Spacer()
                .frame(height: 20)
            Text("Even if church is not a very formal context, wearing a t-shirt and jeans is considered too casual for a place of worship.")
                .font(.system(size: 20))
            Spacer()
                .frame(height: 40)
            Text("Minidress/Shorts")
                .strikethrough()
                .foregroundColor(Color(#colorLiteral(red: 0.9294117647, green: 0.431372549, blue: 0.3411764706, alpha: 1)))
                .font(.system(size: 22))
            Spacer()
                .frame(height:20)
            Text("You should never wear clothes which show too much skin. Especially minidress or shorts.")
                .font(.system(size: 20))
            Spacer()
                .frame(height:40)
            Text("Shirt/Blouse and trousers")
                .foregroundColor(Color(#colorLiteral(red: 0.1294117647, green: 0.5294117647, blue: 0.06666666667, alpha: 1)))
                .font(.system(size: 22))
            Spacer()
                .frame(height: 20)
        } . padding(.leading)
    }
}

struct ExplanationView_Previews: PreviewProvider {
    static var previews: some View {
        ExplanationView()
    }
}
