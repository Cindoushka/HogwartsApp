//
//  ViewModal.swift
//  HogwartsApp
//
//  Created by apprenant72 on 29/01/2024.
//

import SwiftUI

struct ViewModal: View {
    
    @Binding var showModal: Bool
    var body: some View {
        
        VStack {
            HStack {
                Spacer()
                Button {
                    showModal.toggle()
                } label: {
                    Image(systemName: "xmark")
                        .font(.system(size: 40))
                }
            }
            .padding()
            
            Spacer()
            
            Image("harry")
                .resizable()
                .frame(width: 300, height: 300)
            
            Spacer()
        }
    }
}

#Preview {
    ViewModal(showModal: .constant(true))
}
