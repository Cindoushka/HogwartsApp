//
//  StudentCellule.swift
//  HogwartsApp
//
//  Created by apprenant72 on 27/01/2024.
//

import SwiftUI

struct StudentCellule: View {
    
    var student : Student
    var body: some View {
        HStack(spacing: 24) {
            Image(student.image)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .cornerRadius(12)
                .padding(.horizontal)
            
            VStack(alignment: .leading) {
                Text(student.name)
                    .font(.system(size: 28))
                    
                
                if student.house == .gryf {
                    Text("🦁 \(student.house.rawValue)")
                        .foregroundStyle(.red)
                        .fontWeight(.semibold)
                    
                } else if student.house == .raven {
                    Text("🦅 \(student.house.rawValue)")
                        .foregroundStyle(.blue)
                        .fontWeight(.semibold)

                } else if student.house == .huff {
                    Text("🦡 \(student.house.rawValue)")
                        .foregroundStyle(.yellow)
                        .fontWeight(.semibold)

                } else {
                    Text("🐍 \(student.house.rawValue)")
                        .foregroundStyle(.green)
                        .fontWeight(.semibold)
                    
                }

                Spacer()
                
                Text("Élève de \(student.year)ème année")
            }
            .padding(.vertical, 4)

            Spacer()
        }
        .foregroundColor(.white)
        .frame(width: UIScreen.main.bounds.width - 20, height: 100)
        .padding(4)
        .background(.accent)
        .cornerRadius(24)
        .shadow(color: .purple, radius: 12)
    }
}

#Preview {
    StudentCellule(student: students[0])
}
