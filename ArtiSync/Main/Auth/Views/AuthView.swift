//
//  AuthView.swift
//  ArtiSync
//
//  Created by President Raindas on 22/11/2023.
//

import SwiftUI

struct AuthView: View {
    
    @State private var currentView:String = "login"
    
    var body: some View {
        NavigationStack {
            VStack {
                
                HStack {
                    
                    Spacer()
                    
                    Button {
                        currentView = "login"
                    } label: {
                        Text("Login")
                            .foregroundColor(currentView == "login" ? .primary : .secondary)
                            .font(.title3)
                            .fontWeight(currentView == "login" ? .bold : .regular)
                    }
                    
                    Divider().frame(height: 20).padding(.horizontal)
                    
                    Button {
                        currentView = "register"
                    } label: {
                        Text("Register")
                            .foregroundColor(currentView == "register" ? .primary : .secondary)
                            .font(.title3)
                            .fontWeight(currentView == "register" ? .bold : .regular)
                    }
                    
                    Spacer()
                }
                .frame(width: 225, height: 45)
                .background(
                    .ultraThinMaterial, in:
                        RoundedRectangle(cornerRadius: 50)
                )
                
                if currentView == "login" {
                    LoginView()
                } else {
                    RegisterView()
                }
                
            }
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}