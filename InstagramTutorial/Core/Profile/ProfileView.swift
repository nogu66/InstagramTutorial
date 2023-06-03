//
//  ProfileView.swift
//  InstagramTutorial
//
//  Created by YutaNoguchi on 2023/06/01.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
        
    var posts: [Post] {
        return Post.MOCK_POSTS.filter({$0.user?.fullname == user.fullname})
    }
    
    var body: some View {
        ScrollView {
            // header
            ProfileHeaderView(user: user)
            
            // post grid view
            PostGridView(posts: posts)
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.MOCK_USERS[1])
    }
}
