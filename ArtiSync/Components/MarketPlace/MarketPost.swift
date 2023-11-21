//
//  MarketPost.swift
//  ArtiSync
//
//  Created by President Raindas on 21/11/2023.
//

import SwiftUI

struct MarketPost: View {
    
    let postImg:String
    let userDP:String
    let username:String
    let title:String
    let desc:String
    let price:String
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                AsyncImage(url: URL(string: postImg)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 150, height: 200)
                
                VStack {
                    
                    VStack(alignment: .leading) {
                        Text(title)
                            .foregroundColor(.primary)
                            .font(.headline)
                            .fontWeight(.bold)
                        Text(desc)
                            .foregroundColor(.secondary)
                            .font(.callout)
                            .padding(.top, -5)
                        Text(price)
                            .foregroundColor(.primary)
                            .font(.headline)
                            .fontWeight(.bold)
                            .padding(.top, 5)
                    }
                    
                    HStack {
                        AsyncImage(url: URL(string: postImg)) { image in
                            image.resizable()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 25, height: 25)
                        .clipShape(Circle())
                        
                        Text(username)
                            .foregroundColor(.secondary)
                            .font(.callout)
                        
                        Spacer()
                    }
                    
//                    HStack {
//
//                        Button {
//
//                        } label: {
//                            Image(systemName: "phone.fill")
//                                .resizable()
//                                .frame(width: 20, height: 20)
//                                .foregroundColor(.primary)
//                                .background(
//                                    Circle()
//                                        .frame(width: 50, height: 50)
//                                        .foregroundColor(.secondary.opacity(0.25))
//                                )
//                        }
//
//                        Spacer()
//
//                        Button {
//
//                        } label: {
//                            Image(systemName: "message.fill")
//                                .resizable()
//                                .frame(width: 20, height: 20)
//                                .foregroundColor(.primary)
//                                .background(
//                                    Circle()
//                                        .frame(width: 50, height: 50)
//                                        .foregroundColor(.secondary.opacity(0.25))
//                                )
//                        }
//
//                    }
//                    .padding()
//                    .padding(.top)
                    
                }.padding()
            }
            
        }
        .background(Color.secondary.opacity(0.125))
        .cornerRadius(10)
    }
}

struct MarketPost_Previews: PreviewProvider {
    static var previews: some View {
        MarketPost(postImg: "https://cdn.pixabay.com/audio/2023/08/31/14-35-42-339_200x200.jpg", userDP: "https://cdn.pixabay.com/audio/2023/08/31/14-35-42-339_200x200.jpg", username: "Viktoria Gnader", title: "FLORA landing page", desc: "This is a very short description of the product, click on it to find more information about it.", price: "$200.00")
    }
}
