//
//  HomeView.swift
//  ArtiSync
//
//  Created by President Raindas on 21/11/2023.
//

import SwiftUI

struct HomeView: View {
    
    @State var forYouShowing:Bool = true
    
    var body: some View {
        ZStack {
            
            if forYouShowing {
                ForYouView()
            } else {
                FollowingView()
            }
            
            VStack {
                
                HStack {
                    
                    Spacer()
                    
                    Button {
                        forYouShowing = true
                    } label: {
                        Text("For You")
                            .foregroundColor(forYouShowing ? .primary : .secondary)
                            .font(.title3)
                            .fontWeight(forYouShowing ? .bold : .regular)
                    }
                    
                    Divider().frame(height: 20).padding(.horizontal, 10)
                    
                    Button {
                        forYouShowing = false
                    } label: {
                        Text("Following")
                            .foregroundColor(forYouShowing ? .secondary : .primary)
                            .font(.title3)
                            .fontWeight(forYouShowing ? .regular : .bold)
                    }
                    
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
