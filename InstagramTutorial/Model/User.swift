//
//  User.swift
//  InstagramTutorial
//
//  Created by YutaNoguchi on 2023/06/02.
//

import Foundation
import Firebase

struct User: Identifiable, Hashable, Codable {
    let id: String
    let username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currendUid = Auth.auth().currentUser?.uid else { return false}
        return currendUid == id
    }
}


extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username:  "batman", profileImageUrl: nil, fullname: "Bruce Wayne", bio: "Gotham a Dark Knight", email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username:  "venom", profileImageUrl: nil, fullname: "Eddie Brock", bio: "venom", email: "venom@gmail.com"),
        .init(id: NSUUID().uuidString, username:  "ironman", profileImageUrl: nil, fullname: "Tony Stark", bio: "Playboy & Billionaric", email: "ironman@gmail.com"),
        .init(id: NSUUID().uuidString, username:  "blackpanther", profileImageUrl: nil, fullname: nil, bio: "Waknda Forever", email: "blackpanther@gmail.com"),
        .init(id: NSUUID().uuidString, username:  "spiderman", profileImageUrl: nil, fullname: "Peter Packer", bio: "Test bio", email: "spiderman@gmail.com"),
        
        
    ]
}
