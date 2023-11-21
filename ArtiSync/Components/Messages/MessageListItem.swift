//
//  MessageListItem.swift
//  ArtiSync
//
//  Created by President Raindas on 21/11/2023.
//

import SwiftUI

struct MessageListItem: View {
    
    let userDP:String
    let username:String
    let msg:String
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: userDP)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 75, height: 75)
            .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(username)
                    .foregroundColor(.primary)
                    .font(.headline)
                    .fontWeight(.bold)
                Text(msg)
                    .foregroundColor(.secondary)
                    .font(.callout)
                    .padding(.top, -10)
            }.padding(.leading)
            
            Spacer()
        }
    }
}

struct MessageListItem_Previews: PreviewProvider {
    static var previews: some View {
        MessageListItem(userDP: "https://cdn.pixabay.com/audio/2023/08/31/14-35-42-339_200x200.jpg", username: "Viktoria Gnader", msg: "This is just a short message to simulate an actual message ...")
    }
}
