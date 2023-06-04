//
//  ContentViewModel.swift
//  InstagramTutorial
//
//  Created by YutaNoguchi on 2023/06/03.
//

import Foundation
import Firebase
import Combine

class ContentViewModel: ObservableObject {
    
    private let service = AuthServie.shared
    private var cancellables = Set<AnyCancellable>()
    
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    init() {
        setupSubscibers()
    }
    
    func setupSubscibers() {
        service.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        }
        .store(in: &cancellables)

        service.$currentUser.sink { [weak self] currentUser in
            self?.currentUser = currentUser
        }
        .store(in: &cancellables)
    }
}
