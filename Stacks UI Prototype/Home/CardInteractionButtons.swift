//
//  CardInteractionButtons.swift
//  Stacks UI Prototype
//
//  Created by Rafatul Islam on 1/28/24.
//

import SwiftUI

struct CardInteractionButtons: View {
    @State private var isLiked = false
    @State private var isBookmarked = false
    @State private var isReposted = false
    @State private var showComments = false
    @State private var showShareOptions = false
    @State private var likeCount = 0
    @State private var commentCount = 0
    @State private var repostCount = 0
    @State private var viewCount = "1"
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    isLiked.toggle()
                    likeCount += isLiked ? 1 : -1
                }) {
                    Image(systemName: isLiked ? "heart.fill" : "heart")
                        .imageScale(.small)
                        .foregroundColor(isLiked ? .red : .gray)
                    Text("\(likeCount)")
                        .font(.system(size: 14))
                }
                .padding(.trailing, 20)
                
                Button(action: {
                    showComments.toggle()
                }) {
                    Image(systemName: "bubble.right")
                        .imageScale(.small)
                    Text("\(commentCount)")
                        .font(.system(size: 14))
                }
                .padding(.trailing, 20)
                
                Button(action: {
                    isReposted.toggle()
                    repostCount += isReposted ? 1 : -1
                }) {
                    Image(systemName: "arrow.2.squarepath")
                        .imageScale(.small)
                        .foregroundColor(isReposted ? .green : .gray)
                    Text("\(repostCount)")
                        .font(.system(size: 14))
                }
                .padding(.trailing, 20)
                
                HStack {
                    Image(systemName: "chart.bar")
                        .imageScale(.small)
                    Text(viewCount)
                        .font(.system(size: 14))
                }
                .padding(.trailing, 20)
                
                Button(action: {
                    isBookmarked.toggle()
                }) {
                    Image(systemName: isBookmarked ? "bookmark.fill" : "bookmark")
                        .foregroundColor(isBookmarked ? .blue : .gray)
                }
                .padding(.trailing, 5)
                
                Button(action: {
                    showShareOptions.toggle()
                }) {
                    Image(systemName: "square.and.arrow.up")
                }
            }
            .padding(.bottom, 10.0)
            .foregroundColor(.gray)
            Divider()
            
            if showComments {
                CommentsSection()
            }
            
            if showShareOptions {
                ShareOptionsView()
            }
        }
    }
}

struct CommentsSection: View {
    @State private var newComment = ""
    @State private var comments = [String]()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Comments")
                .font(.headline)
                .padding(.bottom, 5)
            
            ForEach(comments, id: \.self) { comment in
                Text(comment)
                    .padding(.vertical, 2)
            }
            
            HStack {
                TextField("Add a comment...", text: $newComment)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: {
                    if !newComment.isEmpty {
                        comments.append(newComment)
                        newComment = ""
                    }
                }) {
                    Text("Post")
                }
            }
            .padding(.top, 10)
        }
        .padding()
    }
}

struct ShareOptionsView: View {
    @State private var shareLink = "https://stacks.app/share/post1382"
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Share Link")
                .font(.headline)
                .padding(.bottom, 5)
            
            HStack {
                TextField("Link", text: $shareLink)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .disabled(true)
                
                Button(action: {
                    UIPasteboard.general.string = shareLink
                }) {
                    Text("Copy")
                }
            }
            .padding(.top, 10)
        }
        .padding()
    }
}

#Preview {
    CardInteractionButtons()
}
