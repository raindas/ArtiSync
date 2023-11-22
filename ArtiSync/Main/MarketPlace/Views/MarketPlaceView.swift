//
//  MarketPlaceView.swift
//  ArtiSync
//
//  Created by President Raindas on 21/11/2023.
//

import SwiftUI

struct MarketPlaceView: View {
    
    @State private var searchQuery:String = ""
    @ObservedObject var homeVM:HomeVM = HomeVM()
    
    var body: some View {
        
        NavigationStack {
            VStack {
                SearchBar(text: $searchQuery, placeholder: "Search ArtiSync market").padding()
                
                ScrollView {
                    LazyVStack(spacing: 25) {
                        ForEach(homeVM.posts) { post in
                            MarketPost(postImg: post.img, userDP: post.dp, username: post.username, title: "FLORA landing page", desc: "This is a very short description of the product, click on it to find more information about it.", price: "₦20,000.00")
                        }
                    }.padding()
                }
            }
            .navigationTitle("Market")
            .toolbar {
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.primary)
                        .background(
                            Circle()
                                .frame(width: 50, height: 50)
                                .foregroundColor(.secondary.opacity(0.25))
                        )
                        .padding()
                }
            }
        }
    }
}

struct MarketPlaceView_Previews: PreviewProvider {
    static var previews: some View {
        MarketPlaceView()
    }
}
