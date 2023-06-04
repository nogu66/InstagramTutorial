//
//  UserStatsVide.swift
//  InstagramTutorial
//
//  Created by YutaNoguchi on 2023/06/01.
//

import SwiftUI

struct UserStatsView: View {
    let value: Int
    let title: String
    
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            Text(title)
                .font(.footnote)
        }
        .frame(width: 76)
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView(value: 12, title: "Posts")
    }
}
