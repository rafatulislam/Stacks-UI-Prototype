//
//  NavBar.swift
//  Stacks UI Prototype
//
//  Created by Rafatul Islam on 1/16/24.
//

import SwiftUI

struct NavBar: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            ExploreView()
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                }
            CreateView()
                .tabItem {
                    Label("Create", systemImage: "plus.rectangle")
                }
            InboxView()
                .tabItem {
                    Label("Inbox", systemImage: "tray")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
        .accentColor(.black)
    }
}

#Preview {
    NavBar()
}
