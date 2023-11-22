//
//  MessagesView.swift
//  ArtiSync
//
//  Created by President Raindas on 21/11/2023.
//

import SwiftUI

struct MessagesView: View {
    
    @State private var searchQuery:String = ""
    @ObservedObject var homeVM:HomeVM = HomeVM()
    
    @State private var isUserLoggedIn:Bool = false
    @State private var showAuth:Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                if !isUserLoggedIn {
                    Button {
                        self.showAuth.toggle()
                    } label: {
                        Text("Login")
                            .foregroundColor(.white)
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.primary)
                            .cornerRadius(50)
                            .padding(.top, 50)
                    }.padding()
                } else {
                    Group {
                        SearchBar(text: $searchQuery, placeholder: "Search messages").padding()
                        
                        List {
                            ForEach(homeVM.posts) { post in
                                MessageListItem(userDP: post.dp, username: post.username, msg: "This is just a short message to simulate an actual message ...")
                            }
                        }.listStyle(.plain)
                    }
                }
            }
            .navigationTitle("Messages")
            .onAppear {
                let authUser = try? AuthenticationManager.shared.getAuthenticatedUser()
                self.isUserLoggedIn = authUser != nil
            }
            .fullScreenCover(isPresented: $showAuth) {
                AuthView(isUserLoggedIn: $isUserLoggedIn)
            }
        }
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
