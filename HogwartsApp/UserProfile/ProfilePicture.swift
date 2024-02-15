////
////  ProfilePicture.swift
////  HogwartsApp
////
////  Created by apprenant72 on 30/01/2024.
////
//
//import SwiftUI
//
//struct ProfilePicture: View {
//    
//    let user: User
//    
//    var body: some View {
//        
//        ZStack {
//            Image(user.image)
//                .resizable()
//                .scaledToFill()
//                .frame(width: 140, height: 140)
//                .cornerRadius(100)
//                .padding(4)
//                .background(Color(user.house.rawValue.lowercased()))
//                .cornerRadius(100)
//            
//            VStack {
//                Spacer()
//                HStack {
//                    Spacer()
//                    Circle()
//                        .foregroundColor(user.isConnected ? .green : .gray)
//                    .frame(width: 44)
//                    .padding(4)
//                    .background(.white)
//                    .cornerRadius(100)
//                }
//            }
//            .padding(4)
//        }
//        .frame(width: 164, height: 164)
//    }
//}
//
//#Preview {
//    ProfilePicture(user: user)
//}
