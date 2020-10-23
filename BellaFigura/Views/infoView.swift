//
//  infoView.swift
//  BellaFigura
//
//  Created by Fabio Priore on 22/10/2020.
//

import SwiftUI

struct infoView: View {
    var body: some View {
        
        NavigationView {
            
            //inizio VStack
            VStack {
                
                //IMAGE
                Image("QM")
                
                
                
                
                
                //TEXT
                Text("Making a \n\n 'Bella Figura'\n(good impression)\n\nis the key to creating social relationships and being able to interact as best as possible with the Italian community.\n\n Learn social norms with us\n so that you will not make\n a bad impression,\n “una Brutta Figura”!")
                    .multilineTextAlignment(.center)
                    .padding(.all, 30.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color(#colorLiteral(red: 0.9215686275, green: 0.431372549, blue: 0.3411764706, alpha: 1)), lineWidth: 4))
                
                
                
                
                
                
                //DONTSHOW
                Button(action: {
                    // do when checked
                    
                    
                    
                    
                    
                }) {
                    HStack(alignment: .top, spacing: 10) {
                        
                        Rectangle()
                            .fill(Color.white)
                            .frame(width:20, height:20, alignment: .center)
                            .cornerRadius(5)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        Text("Don't show again")
                            .accentColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                    }
                }
                
                
                //button start
                NavigationLink(
                    destination: ContentView(),
                    label: {
                        Text("     Start     ")
                            .padding()
                            .accentColor(.white)
                            .background(RoundedRectangle(cornerRadius: 13))
                            .accentColor(Color(#colorLiteral(red: 0.9215686275, green: 0.431372549, blue: 0.3411764706, alpha: 1)))
                    })
                
                
            } .padding(.all) //fine Vstack
        } //fine nav view
    }
}

struct infoView_Previews: PreviewProvider {
    static var previews: some View {
        infoView()
    }
}
