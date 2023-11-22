//
//  AuthVM.swift
//  ArtiSync
//
//  Created by President Raindas on 22/11/2023.
//

import Foundation

final class AuthVM: ObservableObject {
    
    @Published var isLoggedIn:Bool = false
    @Published var isAlertTriggered:Bool = false
    @Published var alertMsg:String = ""
    
    func register(email:String, pass:String) {
        
        isAlertTriggered = false
        
        guard !email.isEmpty, !pass.isEmpty else {
            isAlertTriggered = true
            alertMsg = "Email and Password fields are required"
            return
        }
        
        Task {
            do {
                let returnedUserData = try await AuthenticationManager.shared.createUser(email: email, pass: pass)
            } catch {
                isAlertTriggered = true
                alertMsg = "Error: \(error)"
            }
        }
    }
}
