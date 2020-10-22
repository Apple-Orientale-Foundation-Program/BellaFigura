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
            
            SavedView()
            .tabItem{
                Image(systemName: "bookmark.fill")
                Text("Saved")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
