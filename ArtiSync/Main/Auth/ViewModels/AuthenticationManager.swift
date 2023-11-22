//
//  AuthenticationManager.swift
//  ArtiSync
//
//  Created by President Raindas on 22/11/2023.
//

import Foundation
import FirebaseAuth

final class AuthenticationManager {
    
    static let shared = AuthenticationManager()
    
    private init() {}
    
    func createUser(email:String, pass:String) async throws -> AuthDataResultModel {
        let authDataResult = try await Auth.auth().createUser(withEmail: email, password: pass)
        return AuthDataResultModel(user: authDataResult.user)
    }
    
    func getAuthenticatedUser() throws -> AuthDataResultModel {
        guard let user = Auth.auth().currentUser else {
            throw URLError(.badServerResponse)
        }
        
        return AuthDataResultModel(user: user)
    }
}
