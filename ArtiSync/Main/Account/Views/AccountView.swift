//
//  AccountView.swift
//  ArtiSync
//
//  Created by President Raindas on 21/11/2023.
//

import SwiftUI

struct AccountView: View {
    
    let userDP:String = "https://cdn.pixabay.com/audio/2023/08/31/14-35-42-339_200x200.jpg"
    
    var body: some View {
        NavigationStack {
            VStack {
                
                VStack {
                    AsyncImage(url: URL(string: userDP)) { image in
                        image.resizable()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    
                    Text("Segun Adesanya")
                        .foregroundColor(.primary)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top)
                }
                
                HStack {
                    Group {
                        Text("30 Following")
                        Divider().frame(height: 20)
                        Text("21K Followers")
                    }
                    .foregroundColor(.primary)
                    .font(.title3)
                }.padding(.top, -5)
                
                HStack {
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("Posts")
                            .foregroundColor(.primary)
                            .font(.title3)
                            .fontWeight(.bold)
                    }
                    
                    Divider().frame(height: 20).padding(.horizontal)
                    
                    Button {
                        
                    } label: {
                        Text("Market")
                            .foregroundColor(.secondary)
                            .font(.title3)
                            .fontWeight(.regular)
                    }
                    
                    Spacer()
                }
                .frame(width: 225, height: 45)
                .background(
                    .ultraThinMaterial, in:
                        RoundedRectangle(cornerRadius: 50)
                )
                
                ScrollView {
                    Spacer()
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 15), count: 2), spacing: 20) {
                        ForEach(1...10, id: \.self) { _ in
                            ExplorePost(postImg: "https://cdn.pixabay.com/audio/2023/08/31/14-35-42-339_200x200.jpg", userDP: "https://cdn.pixabay.com/audio/2023/08/31/14-35-42-339_200x200.jpg", title: "FLORA landing page", pageType: "account")
                        }
                    }.padding()
                }
                
            }
            .navigationTitle("Account")
            .toolbar {
                HStack {
                    Menu {
                        Button {
                            
                        } label: {
                            Label("Edit Profile", systemImage: "person.circle")
                        }
                        Button {
                            
                        } label: {
                            Label("Replace Display Picture", systemImage: "photo")
                        }
                        Button {
                            
                        } label: {
                            Label("Share Profile", systemImage: "square.and.arrow.up")
                        }
                    } label: {
                        Image(systemName: "ellipsis")
                            .foregroundColor(.primary)
                            .background(
                                Circle()
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(.secondary.opacity(0.25))
                            )
                            .padding()
                    }

                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "gearshape.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.primary)
                            .background(
                                Circle()
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(.secondary.opacity(0.25))
                            )
                            .padding()
                    }
                }
            }
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
