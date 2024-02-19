//
//  SuccessQuizView.swift
//  HogwartsApp
//
//  Created by apprenant72 on 19/02/2024.
//

import SwiftUI

struct SuccessQuizView: View {
    
    @EnvironmentObject var user: MainUser
    @Binding var successPopUp : Bool
    
    var body: some View {
        
        VStack {
            ZStack {
                Image("parchemin")
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width - 60)
                
                VStack {
                    Text("Félicitations, tu as réussi tes examens de fin d'année, tu vas pouvoir passer en \(user.user.year)e année")
                        .frame(width: 200)
                        .multilineTextAlignment(.center)
                        .padding(32)
                        .fontWeight(.light)
                    
                    Button {
                        withAnimation(.easeInOut(duration: 0.7)) {
                            successPopUp.toggle()
                        }
                    } label: {
                        Text("Continuer")
                            .fontWeight(.semibold)
                    }
                    .padding(.bottom, 70)
                    
                    
                }
                .font(.system(size: 24))
                .padding(8)
            }
        }
        .ignoresSafeArea()
        .frame(width: UIScreen.main.bounds.width + 20, height: UIScreen.main.bounds.height + 400)
        .background(.black.opacity(0.8))
        .environmentObject(MainUser())
        
    }
}

#Preview {
    SuccessQuizView(successPopUp: .constant(true))
        .environmentObject(MainUser())
}
