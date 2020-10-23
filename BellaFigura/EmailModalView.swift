//
//  EmailView.swift
//  BellaFigura
//
//  Created by Arianna Costagliola on 23/10/2020.
//

import SwiftUI

struct EmailView: View {
    @Binding var showModal: Bool
    var body: some View {
        NavigationView {
            List {
                HStack{
                    Text("To:")
                    Text("teambellafigura@gmail.com")
                        .foregroundColor(.blue)
                }
                Text("Cc/Bcc:")
                Text("Subject:")
            }.foregroundColor(.gray)
            
            
            .navigationBarTitle("Tell us your story!", displayMode: .inline)
            .navigationBarItems(trailing:
                                    Button(
                                        action: {},
                                        label: {
                                            Text("Send")
                                                .accentColor(Color(#colorLiteral(red: 0.9294117647, green: 0.431372549, blue: 0.3411764706, alpha: 1)))
                                        }
                                    )
            )
        }
    }
}
struct EmailView_Previews: PreviewProvider {
    static var previews: some View {
        EmailView(showModal: .constant(true))
    }
}
