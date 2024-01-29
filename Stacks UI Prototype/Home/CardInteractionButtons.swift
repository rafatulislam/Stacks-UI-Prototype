//
//  CardInteractionButtons.swift
//  Stacks UI Prototype
//
//  Created by Rafatul Islam on 1/28/24.
//

import SwiftUI

struct CardInteractionButtons: View {
    var body: some View {
        HStack {
            Button(action: {
                // Like button action
            }) {
                Image(systemName: "heart")
                    .imageScale(.small)
                Text("420")
                    .font(.system(size: 14))
                
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))

            Button(action: {
                // Comment
            }) {
                Image(systemName: "bubble.right")
                    .imageScale(.small)
                Text("69")
                    .font(.system(size: 14))
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))
            
            Button(action: {
                // Repost
            }) {
                Image(systemName: "arrow.2.squarepath")
                    .imageScale(.small)
                Text("42")
                    .font(.system(size: 14))
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))
            
            HStack {
                Image(systemName: "chart.bar")
                    .imageScale(.small)
                Text("130K")
                    .font(.system(size: 14))
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))
            
            Button(action: {
                // Bookmark
            }) {
                Image(systemName: "bookmark")
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 5))

            Button(action: {
                // Share
            }) {
                Image(systemName: "square.and.arrow.up")
            }

        }
        .padding(.bottom, 10.0)
        .foregroundColor(.gray)
        Divider()
    }
}

#Preview {
    CardInteractionButtons()
}
