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
            Text("Search")
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            Text("Create Post")
                .tabItem {
                    Label("Create", systemImage: "plus.rectangle")
                }
            Text("Inbox")
                .tabItem {
                    Label("Inbox", systemImage: "tray")
                }
            Text("Profile")
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
