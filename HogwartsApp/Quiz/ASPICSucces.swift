//
//  ASPICSucces.swift
//  HogwartsApp
//
//  Created by apprenant72 on 19/02/2024.
//

import SwiftUI

struct ASPICSucces: View {
    @EnvironmentObject var user: MainUser
    @Binding var finaleYearDone : Bool

    var body: some View {
        
        VStack {
            ZStack {
                Image("parchemin")
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width - 60)
                
                VStack {
                    Text("Félicitations, tu as obtenu toutes ASPIC!")
                        .frame(width: 200)
                        .multilineTextAlignment(.center)
                        .padding(32)
                        .fontWeight(.light)
                    
                    Button {
                        withAnimation(.easeInOut(duration: 0.7)) {
                            finaleYearDone.toggle()
                        }
                    } label: {
                        Text("Quitter")
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
    ASPICSucces(finaleYearDone: .constant(true))
}
