//
//  ProfileView.swift
//  HogwartsApp
//
//  Created by apprenant72 on 27/01/2024.
//

import SwiftUI

struct ProfileView: View {
        
    var body: some View {
        VStack {
            HStack {
                Button {
                    
                } label: {
                    Image(systemName: "xmark")
                }
            }
            Image(students[0].image)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)

        }
    }
}


#Preview {
    ProfileView()
}
