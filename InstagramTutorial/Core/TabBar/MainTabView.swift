//
//  MainTabView.swift
//  InstagramTutorial
//
//  Created by YutaNoguchi on 2023/05/31.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Text("Feed")
                .tabItem{
                    Image(systemName: "house")
                }
            
            Text("Search")
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }
            
            Text("Upload Post")
                .tabItem{
                    Image(systemName: "plus.square")
                }
            Text("Notificatons")
                .tabItem{
                    Image(systemName: "heart")
                }
            Text("Profile")
                .tabItem{
                    Image(systemName: "person")
                }
        }
        .accentColor(.black)
        
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
