//
//  QuizTabView.swift
//  QuizGame
//
//  Created by Capgemini-DA184 on 6/1/23.
//

import SwiftUI

struct QuizTabView: View {
    
    
    var body: some View {
        
        NavigationView {
            
            TabView {
                
                HomeView()
                    .navigationBarHidden(true)
                    .tabItem({
                        Image(systemName: "house.fill")
                        
                    }).tag(1)
                
                
                CategoryView()
                    .navigationBarHidden(true).navigationBarTitle("")
                    .tabItem({
                        Image(systemName: "list.bullet")
                    }).tag(2)
                
                LeaderBoardView()
                    .navigationBarHidden(true).navigationBarTitle("")
                    .tabItem({
                        Image(systemName: "chart.bar")
                    }).tag(3)
                
                
                ProfileView()
                    .navigationBarHidden(true).navigationBarTitle("")
                    .tabItem({
                        Image(systemName: "person")
                            .accentColor(.gray)
                            .colorMultiply(.gray)
                        
                    }).tag(4)
            }
        }
    }
}

struct QuizTabView_Previews: PreviewProvider {
    static var previews: some View {
        QuizTabView()
    }
}
