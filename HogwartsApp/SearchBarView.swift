//
//  SearchBarView.swift
//  HogwartsApp
//
//  Created by apprenant72 on 01/02/2024.
//

import SwiftUI

struct SearchBarView: View {
    
    @State var searchText: String = ""
    
    var studentFiltered : [Student] {
        if searchText == "" {
            return students
        } else {
            return students.filter {
                $0.name.lowercased().contains(searchText.lowercased())
            }
        }
    }
    
    var body: some View {

        VStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                    .font(.system(size: 20))
                
                TextField("Search", text: $searchText)
                    .font(.system(size: 20))
                            
                Button {
                    searchText = ""
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .font(.system(size: 20))
                        .foregroundColor(.gray)
                }
            }
            .padding()
            .background(.gray.opacity(0.3))
            .cornerRadius(32)
        .padding()
            
            List(studentFiltered) { student in
                Text(student.name)
            }
        }
    }
}

#Preview {
    SearchBarView()
}
