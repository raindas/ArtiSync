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
                            .font(.headline)
                            .fontWeight(.bold)
                    }
                    
                    Button {
                        
                    } label: {
                        Text("Following")
                            .foregroundColor(.primary)
                            .font(.headline)
                            .fontWeight(.regular)
                    }.padding(.leading)
                    
                    Spacer()
                }
                .background(
                    RoundedRectangle(cornerRadius: 50)
                        .foregroundColor(.primary.opacity(0.25))
                        .frame(width: 225, height: 45)
                )
                
                Spacer()
            }.padding(.top, 80)
            
        }.ignoresSafeArea(.all)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
