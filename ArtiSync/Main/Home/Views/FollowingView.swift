//
//  FollowingView.swift
//  ArtiSync
//
//  Created by President Raindas on 21/11/2023.
//

import SwiftUI

struct FollowingView: View {
    
    @ObservedObject var homeVM:HomeVM = HomeVM()
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 25) {
                Spacer().padding(.top, 80)
                ForEach(homeVM.posts) { post in
                    ProjectPost(postImg: post.img, userDP: post.dp, username: post.username, title: post.title)
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
