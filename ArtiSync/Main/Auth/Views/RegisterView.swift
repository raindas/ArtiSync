//
//  RegisterView.swift
//  ArtiSync
//
//  Created by President Raindas on 22/11/2023.
//

import SwiftUI

struct RegisterView: View {
    
    @State var fname:String = ""
    @State var lname:String = ""
    @State var email:String = ""
    @State var pass:String = ""
    @State var cpass:String = ""
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text("Register")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            TextField("Firstname", text: $fname)
                .foregroundColor(.secondary)
                .font(.title3)
                .padding()
                .background(Color.secondary.opacity(0.125))
                .cornerRadius(50)
                .padding(.top)
            
            TextField("Lastname", text: $lname)
                .foregroundColor(.secondary)
                .font(.title3)
                .padding()
                .background(Color.secondary.opacity(0.125))
                .cornerRadius(50)
                .padding(.top)
            
            TextField("Email address", text: $email)
                .foregroundColor(.secondary)
                .font(.title3)
                .padding()
                .background(Color.secondary.opacity(0.125))
                .cornerRadius(50)
                .padding(.top)
                .keyboardType(.emailAddress)
            
            SecureField("Password", text: $pass)
                .foregroundColor(.secondary)
                .font(.title3)
                .padding()
                .background(Color.secondary.opacity(0.125))
                .cornerRadius(50)
                .padding(.top)
            
            SecureField("Confirm password", text: $cpass)
                .foregroundColor(.secondary)
                .font(.title3)
                .padding()
                .background(Color.secondary.opacity(0.125))
                .cornerRadius(50)
                .padding(.top)
            
            Button {
                
            } label: {
                Text("Register")
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

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
