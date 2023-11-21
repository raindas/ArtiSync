//
//  MarketPlaceView.swift
//  ArtiSync
//
//  Created by President Raindas on 21/11/2023.
//

import SwiftUI

struct MarketPlaceView: View {
    
    @State private var searchQuery:String = ""
    
    var body: some View {
        
        NavigationStack {
            VStack {
                SearchBar(text: $searchQuery).padding()
                
                ScrollView {
                    LazyVStack(spacing: 25) {
                        ForEach(1...10, id:\.self) { _ in
                            MarketPost(postImg: "https://cdn.pixabay.com/audio/2023/08/31/14-35-42-339_200x200.jpg", userDP: "https://cdn.pixabay.com/audio/2023/08/31/14-35-42-339_200x200.jpg", username: "Viktoria Gnader", title: "FLORA landing page", desc: "This is a very short description of the product, click on it to find more information about it.", price: "$200.00")
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
