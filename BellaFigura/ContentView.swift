//
//  ContentView.swift
//  BellaFigura
//
//  Created by Stefania Caiazza on 21/10/2020.
//

import SwiftUI
// inserito un commento
struct ContentView: View {
    var body: some View {
        TabView{
            
            QuizMenuView()
            .tabItem{
                Image(systemName: "list.bullet")
                Text("Quiz Menu")
            }
            
            CommunityView()
            .tabItem{
                Image(systemName: "person.3.fill")
                Text("Community")
            }
            
            FavoritesView()
            .tabItem{
                Image(systemName: "bookmark.fill")
                Text("Favorites")
            }
            
        }.accentColor(Color(#colorLiteral(red: 0.9215686275, green: 0.431372549, blue: 0.3411764706, alpha: 1)))
        .navigationBarHidden(true)
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
