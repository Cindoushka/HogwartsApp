//
//  ContentView.swift
//  HogwartsApp
//
//  Created by apprenant72 on 26/01/2024.
//

import SwiftUI

struct ContentView: View {
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
            QuestionsModeDegueu(color: .constant(.black))
                .tabItem {
                    Image(systemName: "gamecontroller.fill")
                }
//            ProfileView(user: user)
//                .tabItem {
//                    Image(systemName: "person.fill")
//                }
        }
        .background(.black)
    }
}

#Preview {
    ContentView()
}
