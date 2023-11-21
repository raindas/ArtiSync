//
//  ProjectPost.swift
//  ArtiSync
//
//  Created by President Raindas on 21/11/2023.
//

import SwiftUI

struct ProjectPost: View {
    
    let postImg:String
    let userDP:String
    let username:String
    let title:String
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: postImg)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            
            HStack {
                
                AsyncImage(url: URL(string: postImg)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text(title)
                        .foregroundColor(.primary)
                        .font(.headline)
                        .fontWeight(.bold)
                    Text(username)
                        .foregroundColor(.secondary)
                        .font(.callout)
                }.padding(.leading, 5)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "hand.thumbsup.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.primary)
                        .background(
                            Circle()
                                .frame(width: 50, height: 50)
                                .foregroundColor(.secondary.opacity(0.25))
                        )
                }.padding(.trailing)
            }.padding()
        }
        .background(Color.secondary.opacity(0.125))
        .cornerRadius(10)
    }
}

struct ProjectPost_Previews: PreviewProvider {
    static var previews: some View {
        ProjectPost(postImg: "https://cdn.pixabay.com/audio/2023/08/31/14-35-42-339_200x200.jpg", userDP: "https://cdn.pixabay.com/audio/2023/08/31/14-35-42-339_200x200.jpg", username: "Viktoria Gnader", title: "FLORA landing page")
    }
}
