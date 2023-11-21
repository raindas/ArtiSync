//
//  MessagesView.swift
//  ArtiSync
//
//  Created by President Raindas on 21/11/2023.
//

import SwiftUI

struct MessagesView: View {
    
    @State private var searchQuery:String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                SearchBar(text: $searchQuery, placeholder: "Search messages").padding()
                
                ScrollView {
                    
                }
            }.navigationTitle("Messages")
        }
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
