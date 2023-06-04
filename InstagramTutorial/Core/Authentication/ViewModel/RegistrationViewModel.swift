//
//  RegistrationViewModel.swift
//  InstagramTutorial
//
//  Created by YutaNoguchi on 2023/06/04.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    
    func createUser() async throws {
        try await AuthServie.shared.createUser(email: email, password: password, username: username)
    }
}
