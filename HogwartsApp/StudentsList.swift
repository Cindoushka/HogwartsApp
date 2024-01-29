//
//  StudentsList.swift
//  HogwartsApp
//
//  Created by apprenant72 on 27/01/2024.
//

import SwiftUI

struct StudentsList: View {
    
    let studentsSortByHouses = students.sorted { $0.name < $1.name }
    
    var body: some View {
        
        ZStack {
            
            VStack {
                Text("Liste des Élèves")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(studentsSortByHouses) { student in
                        StudentCellule(student: student)
                            .padding(.vertical, 8)
                        
                    }
                    
                }
            }
            .padding(.top,50)
            
        }
        .frame(width: UIScreen.main.bounds.width)
        .background(.black)
        .ignoresSafeArea()
    }
}

#Preview {
    StudentsList()
}
