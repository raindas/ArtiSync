//
//  ExplorePost.swift
//  ArtiSync
//
//  Created by President Raindas on 21/11/2023.
//

import SwiftUI

struct ExplorePost: View {
    
    let postImg:String
    let userDP:String
    let title:String
    
    var body: some View {
        
        VStack {
            AsyncImage(url: URL(string: postImg)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            
            HStack {
                AsyncImage(url: URL(string: postImg)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 25, height: 25)
                .clipShape(Circle())
                
                Text(title)
                    .foregroundColor(.primary)
                    .font(.headline)
                    .fontWeight(.bold)
                
                Spacer()
                
            }.padding()
        }
        .frame(height: 200)
        .background()
        .cornerRadius(10)
        .shadow(radius: 2)
    }
}

struct ExplorePost_Previews: PreviewProvider {
    static var previews: some View {
        ExplorePost(postImg: "https://cdn.pixabay.com/audio/2023/08/31/14-35-42-339_200x200.jpg", userDP: "https://cdn.pixabay.com/audio/2023/08/31/14-35-42-339_200x200.jpg", title: "FLORA landing page")
    }
}
