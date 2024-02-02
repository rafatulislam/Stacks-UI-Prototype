//
//  InboxView.swift
//  Stacks UI Prototype
//
//  Created by Rafatul Islam on 1/29/24.
//

import SwiftUI

struct InboxView: View {
    @State private var selectedTab = "Notifications"

    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    self.selectedTab = "Notifications"
                }) {
                    Text("Notifications")
                        .font(.headline)
                        .bold()
                        .foregroundColor(selectedTab == "Notifications" ? .black : .gray)
                }
                
                Spacer()
                
                Spacer()

                Button(action: {
                    self.selectedTab = "Messages"
                }) {
                    Text("Messages")
                        .font(.headline)
                        .bold()
                        .foregroundColor(selectedTab == "Messages" ? .black : .gray)
                }
                Spacer()
            }
            .padding(.vertical, 15)
            .padding(.horizontal, 15)
            Divider()
            Spacer()
            if selectedTab == "Notifications" {
                NotificationsView()
            } else if selectedTab == "Messages" {
                MessagesView()
            }
            Spacer()
        }
    }
}

struct NotificationsView: View {
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "bell")
                .font(.system(size: 40))
                .padding()
            Text("No notifications available.")
            Spacer()
            Divider()
        }
        .foregroundColor(.gray)
    }
}

struct MessagesView: View {
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "paperplane")
                .font(.system(size: 40))
                .padding()
            Text("Share stacks or start a conversation.")
            Spacer()
            Divider()
        }
        .foregroundColor(.gray)
    }
}


#Preview {
    InboxView()
}
