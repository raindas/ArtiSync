//
//  FollowingView.swift
//  ArtiSync
//
//  Created by President Raindas on 21/11/2023.
//

import SwiftUI

struct FollowingView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 25) {
                ForEach(1...5, id: \.self) { _ in
                    ProjectPost(postImg: "https://cdn.pixabay.com/audio/2023/08/31/14-35-42-339_200x200.jpg", userDP: "https://cdn.pixabay.com/audio/2023/08/31/14-35-42-339_200x200.jpg", username: "Viktoria Gnader", title: "FLORA landing page")
                }
            }.padding()
        }
    }
}

struct FollowingView_Previews: PreviewProvider {
    static var previews: some View {
        FollowingView()
    }
}
