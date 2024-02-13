//
//  ProfileView.swift
//  HogwartsApp
//
//  Created by apprenant72 on 27/01/2024.
//

import SwiftUI

struct ProfileView: View {
        
    let userProfile = users[0]
    
    var body: some View {
        VStack {
            HStack {
                Image(userProfile.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .cornerRadius(100)
                    .padding(4)
                    .background(.blue)
                    .cornerRadius(100)
            }
        }
    }
}


#Preview {
    ProfileView()
}
