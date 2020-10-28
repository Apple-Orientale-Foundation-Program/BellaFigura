//
//  infoView.swift
//  BellaFigura
//
//  Created by Fabio Priore on 22/10/2020.
//

import SwiftUI

struct InfoView: View {
    
    //@State var isChecked:Bool = false
    @State var isVisible: Bool = true
    @State var isChecked2 = false    //Booleano d'appoggio per UsereDefault, il problema era che, essendo isChecked di tipo @State, nel momento stesso in cui togglava, veniva refreshata l'intera schermata. In questo modo togglo isCkecked2 ma refresho la view con isChecked
    @State private var isChecked = UserDefaults.standard.bool(forKey: "Checked")
    
    func toggle()
    {isChecked2 = !isChecked2}
    
    var body: some View {
        
        //inizio VStack
        ZStack {
            Color.white.ignoresSafeArea(.all)
            VStack {
                Spacer()
                    .frame(height:100)
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
                
                Spacer()
                    .frame(height: 30)
                //checkbox
                Button(action: toggle){
                    HStack{
                        Image(systemName: isChecked2 ? "checkmark.square": "square")
                        Text("Don't show again")
                            .accentColor(.black)
                        
                    }
                }
                Spacer()
                    .frame(height: 40)
                
                Button(action: {
                    isVisible = false
                    UserDefaults.standard.set(isChecked2, forKey: "Checked")

                }, label: {
                    Text("Start")
                        .font(.system(size: 24))
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius:13)
                                        .fill(Color(#colorLiteral(red: 0.9294117647, green: 0.431372549, blue: 0.3411764706, alpha: 1)))
                                        .frame(width: 165, height: 50))
                })
            } .padding(.all)
        }.opacity(isChecked ? 0 : (isVisible ? 1 : 0))
    }
    }

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
