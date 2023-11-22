//
//  AuthDataResultModel.swift
//  ArtiSync
//
//  Created by President Raindas on 22/11/2023.
//

import Foundation
import FirebaseAuth

struct AuthDataResultModel {
    let uid: String
    let email: String
    
    init (user: User) {
        self.uid = user.uid
        self.email = user.email ?? ""
    }
}
