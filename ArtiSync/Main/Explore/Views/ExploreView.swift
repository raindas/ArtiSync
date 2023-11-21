//
//  ExploreView.swift
//  ArtiSync
//
//  Created by President Raindas on 21/11/2023.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var searchQuery:String = ""
    
    var body: some View {
        VStack {
            SearchBar(text: $searchQuery, placeholder: "Search ArtiSync")
                .padding(.bottom)
            
            GeometryReader { reader in
                ScrollView {
                    Spacer()
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 15), count: 2), spacing: 20) {
                        ForEach(1...10, id: \.self) { _ in
                            ExplorePost(postImg: "https://cdn.pixabay.com/audio/2023/08/31/14-35-42-339_200x200.jpg", userDP: "https://cdn.pixabay.com/audio/2023/08/31/14-35-42-339_200x200.jpg", title: "FLORA landing page")
                        }
                    }
                }
            }
        }.padding()
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
