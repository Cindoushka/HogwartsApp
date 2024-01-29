//
//  ShowModalView.swift
//  HogwartsApp
//
//  Created by apprenant72 on 29/01/2024.
//

import SwiftUI

struct ShowModalView: View {
    
    @State var showModal: Bool = false
    
    var body: some View {

        Button {
            showModal.toggle()
        } label: {
            Text("À quoi ressemble Harry Potter?")
                .foregroundStyle(.white)
                .padding()
                .background(.purple)
                .cornerRadius(24)
                .sheet(isPresented: $showModal, content: {
                    ViewModal(showModal: $showModal)
                })
        }
    }
}

#Preview {
    ShowModalView()
}
