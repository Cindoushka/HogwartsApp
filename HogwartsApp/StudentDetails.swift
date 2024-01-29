//
//  StudentDetails.swift
//  HogwartsApp
//
//  Created by apprenant72 on 29/01/2024.
//

import SwiftUI

struct StudentDetails: View {
    
    var student: Student
    
    var body: some View {
        ZStack {
            Color(.purple)
                .ignoresSafeArea()
            
            VStack {
                Image(student.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)

                Text(student.name)
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    StudentDetails(student: students[1])
}
