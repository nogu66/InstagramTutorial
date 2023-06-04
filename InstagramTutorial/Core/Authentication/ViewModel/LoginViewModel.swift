//
//  LoginViewModel.swift
//  InstagramTutorial
//
//  Created by YutaNoguchi on 2023/06/04.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
        try await AuthServie.shared.login(withEmail: email, password: password)
    }
}
