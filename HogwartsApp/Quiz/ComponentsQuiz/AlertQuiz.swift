//
//  AlertQuiz.swift
//  HogwartsApp
//
//  Created by apprenant72 on 19/02/2024.
//

import SwiftUI

struct AlertQuiz: View {
    
    @Binding var popUp : Bool
    
    var body: some View {

        VStack {
            VStack {
                Text("Il faut sélectionner une réponse!")
                    .frame(width: 250)
                    .multilineTextAlignment(.center)
                    .padding(32)
                    .fontWeight(.light)
                
                Button {
                    withAnimation(.easeInOut(duration: 0.7)) {
                        popUp.toggle()
                    }
                } label: {
                    Text("Méfaits accomplis")
                        .fontWeight(.semibold)
                }
                .padding()
                .frame(width: 320)
                .background(.black)

            }
            .foregroundColor(.white)
            .font(.system(size: 24))
//            .padding()
            .background(.purple)
            .cornerRadius(24)
            .padding(8)
            .background(.black)
            .cornerRadius(32)
        }
        .ignoresSafeArea()
        .frame(width: UIScreen.main.bounds.width + 20, height: UIScreen.main.bounds.height + 400)
        .background(.black.opacity(0.7))
    }
}

#Preview {
    AlertQuiz(popUp: .constant(true))
}
