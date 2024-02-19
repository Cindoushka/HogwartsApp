//
//  HomeQuizView.swift
//  HogwartsApp
//
//  Created by apprenant72 on 19/02/2024.
//

import SwiftUI

struct HomeQuizView: View {
    
    @EnvironmentObject var user : MainUser
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color(.purple.opacity(0.2))
                
                VStack {
                    Image("choipeaux")
                    
                    Text("Vous êtes actuellement élève de \(user.user.year)e année à Poudlard. Êtes-vous prêt pour les examens de fin d'année ??")
                        .padding(30)
                        .font(.system(size: 24))
                        .multilineTextAlignment(.center)
                    
                    NavigationLink {
                        TestQuiz()
                    } label: {
                        Text("Oui!")
                    }
                }
            }
            .ignoresSafeArea()
        }
        .environmentObject(MainUser())
    }
}

#Preview {
    HomeQuizView()
        .environmentObject(MainUser())
}
