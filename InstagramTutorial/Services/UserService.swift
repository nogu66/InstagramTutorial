//
//  UserService.swift
//  InstagramTutorial
//
//  Created by YutaNoguchi on 2023/06/04.
//

import Foundation
import Firebase

struct UserService {
    @MainActor
    static func fetchAllUsers() async throws -> [User] {
//        var users = [User]()
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
//        let documetns = snapshot.documents
//
//        for doc in documetns {
//            guard let user = try? doc.data(as: User.self) else { return users }
//            users.append(user)
//        }
//
//        return users
        return snapshot.documents.compactMap({ try? $0.data(as: User.self)})
    }
}
