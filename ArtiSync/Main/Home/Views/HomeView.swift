//
//  HomeView.swift
//  ArtiSync
//
//  Created by President Raindas on 21/11/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Text("For You")
                    .foregroundColor(.primary)
                    .font(.headline)
                    .fontWeight(.bold)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Following")
                    .foregroundColor(.primary)
                    .font(.headline)
                    .fontWeight(.regular)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
