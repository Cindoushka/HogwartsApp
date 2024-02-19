//
//  ContentView.swift
//  HogwartsApp
//
//  Created by apprenant72 on 26/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var mainUser: MainUser
    @EnvironmentObject var quiz: QuizManager

    var body: some View {
        TabView {
            ProfessorsList()
                .tabItem {
                    Image(systemName: "eyeglasses")
                }
//            StudentsList()
//                .tabItem {
//                    Image(systemName: "graduationcap.fill")
//                }
            HomePage()
                .tabItem {
                    Image(systemName: "bolt.fill")
                }
            HomeQuizView()
                .tabItem {
                    Image(systemName: "gamecontroller.fill")
                }
//            ProfileView(user: user)
//                .tabItem {
//                    Image(systemName: "person.fill")
//                }
        }
        .background(.black)
        .environmentObject(QuizManager())
        .environmentObject(MainUser())
    }
}

#Preview {
    ContentView()
        .environmentObject(QuizManager())
        .environmentObject(MainUser())
}
