//
//  HomeView.swift
//  ArtiSync
//
//  Created by President Raindas on 21/11/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            
            ForYouView()
            
            VStack {
                
                HStack {
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("For You")
                            .foregroundColor(.primary)
                            .font(.title3)
                            .fontWeight(.bold)
                    }
                    
                    Button {
                        
                    } label: {
                        Text("Following")
                            .foregroundColor(.secondary)
                            .font(.title3)
                            .fontWeight(.regular)
                    }.padding(.leading)
                    
                    Spacer()
                }
                .frame(width: 225, height: 45)
                .background(
                    .ultraThinMaterial, in:
                        RoundedRectangle(cornerRadius: 50)
                )
                
                Spacer()
            }.padding(.top, 70)
            
        }.ignoresSafeArea(.all)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
