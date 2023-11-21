//
//  SearchBar.swift
//  ArtiSync
//
//  Created by President Raindas on 21/11/2023.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text: String
    @State private var isEditing = false
    
    var body: some View {
        HStack {
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.secondary)
                
                TextField("Search ArtiSync", text: $text)
                    .foregroundColor(.secondary)
                    .font(.title3)
                    .padding(.leading)
            }
            .padding()
            .padding(.horizontal, 25)
            .background(Color.secondary.opacity(0.125))
            .cornerRadius(50)
            .onTapGesture {
                self.isEditing = true
            }
            .keyboardType(.webSearch)
            
            if isEditing {
                Button(action: {
                    withAnimation(.default) {
                        self.isEditing = false
                        self.text = ""
                    }
                }) {
                    Text("Cancel")
                        .foregroundColor(.primary)
                        .font(.title3)
                        .fontWeight(.bold)
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""))
    }
}
