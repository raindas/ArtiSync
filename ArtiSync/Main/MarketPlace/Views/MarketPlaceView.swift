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
