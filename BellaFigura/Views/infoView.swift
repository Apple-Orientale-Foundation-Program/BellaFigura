//
//  infoView.swift
//  BellaFigura
//
//  Created by Fabio Priore on 22/10/2020.
//

import SwiftUI

struct infoView: View {
    
    @State var isChecked:Bool = false
    func toggle()
    {isChecked = !isChecked}
    
    var body: some View {
        NavigationView {
            
            //inizio VStack
            VStack {
                
                //IMAGE
                Image("questionMark")
                    .padding(.top, -150)
                
                
                //TEXT
                VStack {
                    Text("Making a \n")
                    Text("'Bella Figura'")
                        .font(.system(size:24))
                        .fontWeight(.bold)
                              
                    Text("(great impression)\n\nis the key to creating social relationships and being able to interact as best as possible with the Italian community.\n\n\n Learn social norms with us\n so that you will not make\n a bad impression,")
                        .multilineTextAlignment(.center)
                        .font(.system(size: 18))
                    Text("“una Brutta Figura”!")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                    
                }
                .padding(.all, 30.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color(#colorLiteral(red: 0.9215686275, green: 0.431372549, blue: 0.3411764706, alpha: 1)), lineWidth: 4))
                
                //checkbox
                Button(action: toggle) {
                    HStack{
                        Image(systemName: isChecked ? "checkmark.square": "square")
                        Text("Don't show again")
                            .accentColor(.black)
                        
                    }
                }
                .padding(.vertical, 10.0)
                
                
                //button start
                NavigationLink(
                    destination: ContentView(),
                    label:{
                        Text("Start")
                            .font(.system(size:24))
                            .padding()
                            .foregroundColor(.white)
                            .background(RoundedRectangle(cornerRadius: 13)
                                                    .accentColor(Color(#colorLiteral(red: 0.9215686275, green: 0.431372549, blue: 0.3411764706, alpha: 1))
                                                    )
                                            .frame(width: 165, height: 49))
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
