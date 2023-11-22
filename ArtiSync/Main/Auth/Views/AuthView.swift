//
//  AuthView.swift
//  ArtiSync
//
//  Created by President Raindas on 22/11/2023.
//

import SwiftUI

struct AuthView: View {
    
    @State private var currentView:String = "login"
    @ObservedObject var authVM:AuthVM = AuthVM()
    @Environment(\.dismiss) var dismissView
    
    var body: some View {
        NavigationStack {
            VStack {
                
                HStack {
                    Spacer()
                    
                    Button {
                        dismissView()
                    } label: {
                        Image(systemName: "xmark")
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
                }.padding(.trailing)
                
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
                    LoginView(vm: authVM)
                } else {
                    RegisterView()
                }
                
            }
            .alert(isPresented: $authVM.isAlertTriggered, content: {
                Alert(
                    title: Text("Error"),
                    message: Text(authVM.alertMsg),
                    dismissButton: .destructive(Text("Cancel")) {
                        authVM.isAlertTriggered = false
                    }
                )
            })
            .onAppear {
                if authVM.isLoggedSuccessful {
                    dismissView()
                } else {
                    print("YO")
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
