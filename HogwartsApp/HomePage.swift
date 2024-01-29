//
//  HomePage.swift
//  HogwartsApp
//
//  Created by apprenant72 on 27/01/2024.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        ZStack {
            Image("hogwarts2")
                .resizable()
                .ignoresSafeArea(.container)
            
            VStack {
                Spacer().frame(height: UIScreen.main.bounds.height - 440)
                
                Text("Bienvenue à Poudlard")
                    .font(.system(size: 36))
                    .fontWeight(.semibold)
                Text("École de Sorcellerie")
                    .font(.system(size: 24))
                    .fontWeight(.thin)
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    HomePage()
}
