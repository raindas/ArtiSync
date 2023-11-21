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
                
                List{
                    ForEach(1...10, id:\.self) { _ in
                        MessageListItem(userDP: "https://cdn.pixabay.com/audio/2023/08/31/14-35-42-339_200x200.jpg", username: "Viktoria Gnader", msg: "This is just a short message to simulate an actual message ...")
                    }
                }.listStyle(.plain)
            }.navigationTitle("Messages")
        }
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
