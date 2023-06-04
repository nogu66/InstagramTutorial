//
//  AuthService.swift
//  InstagramTutorial
//
//  Created by YutaNoguchi on 2023/06/03.
//

import Foundation
import FirebaseAuth

class AuthServie {
    
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthServie()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    func login(withEmail email: String, password: String) async throws {
        
    }
    
    func createUser(email: String, password: String, username: String) async throws {
        
    }
    
    func loadUserData() async throws {
        
    }
    
    func signout() {
        
    }
    
    
}
