//
//  infoView.swift
//  BellaFigura
//
//  Created by Fabio Priore on 22/10/2020.
//

import SwiftUI

struct infoView: View {
    var body: some View {
        VStack {
        Image("QM")
            .padding(.all, 30.0)
        
        Text("Bella figura")
            .padding()
            .overlay(
            RoundedRectangle(cornerRadius: 16)
            .stroke(Color(#colorLiteral(red: 0.9215686275, green: 0.431372549, blue: 0.3411764706, alpha: 1)), lineWidth: 4))
        }
    }
}

struct infoView_Previews: PreviewProvider {
    static var previews: some View {
        infoView()
    }
}
