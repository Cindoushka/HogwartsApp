//
//  ProfilePicture.swift
//  HogwartsApp
//
//  Created by apprenant72 on 30/01/2024.
//

import SwiftUI

struct ProfilePicture: View {
    
    let user: User
    
    var body: some View {
        
        ProfilePicture(user: user)
    }
}

#Preview {
    ProfilePicture(user: users[0])
}
