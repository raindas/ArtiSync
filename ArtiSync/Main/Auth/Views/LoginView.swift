//
//  LoginView.swift
//  ArtiSync
//
//  Created by President Raindas on 22/11/2023.
//

import SwiftUI

struct LoginView: View {
    
    @State var email:String = ""
    @State var pass:String = ""
    @Binding var isUserLoggedIn:Bool
    
    let vm:AuthVM
    
    @Environment(\.dismiss) var dismissView
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Log In")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            TextField("Email address", text: $email)
                .foregroundColor(.secondary)
                .font(.title3)
                .padding()
                .background(Color.secondary.opacity(0.125))
                .cornerRadius(50)
                .padding(.top)
            
            SecureField("Password", text: $pass)
                .foregroundColor(.secondary)
                .font(.title3)
                .padding()
                .background(Color.secondary.opacity(0.125))
                .cornerRadius(50)
                .padding(.top)
            
            Button {
                Task {
                    vm.login(email: email, pass: pass)
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                        isUserLoggedIn = vm.isLoggedSuccessful
                        dismissView()
                    }
                }
//                dismissView()
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
            }
            
            Spacer()
            
        }
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(isUserLoggedIn: .constant(false), vm: AuthVM())
    }
}
