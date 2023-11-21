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
            SearchBar(text: $searchQuery)
            
            ScrollView {
                
            }
        }.padding()
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
