//
//  ContentView.swift
//  ArtiSync
//
//  Created by President Raindas on 21/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                }
            ExploreView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            MarketPlaceView()
                .tabItem {
                    Image(systemName: "cart.fill")
                }
            MessagesView()
                .tabItem {
                    Image(systemName: "message.fill")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                }
        }
        .ignoresSafeArea()
        .accentColor(.primary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
