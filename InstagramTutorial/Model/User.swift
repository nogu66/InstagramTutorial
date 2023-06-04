//
//  User.swift
//  InstagramTutorial
//
//  Created by YutaNoguchi on 2023/06/02.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    let username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username:  "batman", profileImageUrl: "batman-2", fullname: "Bruce Wayne", bio: "Gotham a Dark Knight", email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username:  "venom", profileImageUrl: "venom-2", fullname: "Eddie Brock", bio: "venom", email: "venom@gmail.com"),
        .init(id: NSUUID().uuidString, username:  "ironman", profileImageUrl: "iron-man-1", fullname: "Tony Stark", bio: "Playboy & Billionaric", email: "ironman@gmail.com"),
        .init(id: NSUUID().uuidString, username:  "blackpanther", profileImageUrl: "black-panther-1", fullname: nil, bio: "Waknda Forever", email: "blackpanther@gmail.com"),
        .init(id: NSUUID().uuidString, username:  "spiderman", profileImageUrl: "spiderman", fullname: "Peter Packer", bio: "Test bio", email: "spiderman@gmail.com"),
              
              
    ]
}
