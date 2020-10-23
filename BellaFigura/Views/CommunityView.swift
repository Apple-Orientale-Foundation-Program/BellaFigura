//
//  CommunityView.swift
//  BellaFigura
//
//  Created by Gabriele Borriello on 22/10/2020.
//

import SwiftUI

struct CommunityView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Image("communityBackground")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                //                        .scaledToFill()
                //                        .edgesIgnoringSafeArea(.all)
                VStack{
                    Text("""
Have you ever found yourself in an awkward situation and you didn’t know what to do or how to behave? Write us an e-mail and let us know!
We will add your experience to our collection!
""")
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: 300, height: 200, alignment: .center)
                        .background(RoundedRectangle(cornerRadius: 13)
                                        .strokeBorder(Color(#colorLiteral(red: 0.9294117647, green: 0.431372549, blue: 0.3411764706, alpha: 1)), lineWidth: 4)
                                        .background(Color(.white))
                        )
                    Button(action: {}, label: {
                        Text("E-mail")
                            .font(.title3)
                            .padding()
                            .foregroundColor(.white)
                            .background(RoundedRectangle(cornerRadius: 13)
                                            .fill(Color(#colorLiteral(red: 0.9294117647, green: 0.431372549, blue: 0.3411764706, alpha: 1)))
                                            .frame(width: 165, height: 50)
                            )
                        
                    }
                    )
                }
            }
            .navigationBarTitle(("Community"), displayMode: .inline)
        }
    }
}

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView()
    }
}
