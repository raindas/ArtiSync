//
//  ExploreView.swift
//  ArtiSync
//
//  Created by President Raindas on 21/11/2023.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var searchQuery:String = ""
    @ObservedObject var homeVM:HomeVM = HomeVM()
    
    var body: some View {
        VStack {
            SearchBar(text: $searchQuery, placeholder: "Search ArtiSync")
                .padding(.bottom)
            
            GeometryReader { reader in
                ScrollView {
                    Spacer()
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 15), count: 2), spacing: 20) {
                        ForEach(homeVM.posts) { post in
                            ExplorePost(postImg: post.img, userDP: post.dp, title: post.title, pageType: "explore")
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
