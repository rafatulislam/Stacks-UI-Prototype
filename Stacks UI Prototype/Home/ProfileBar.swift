//
//  ProfileBar.swift
//  Stacks UI Prototype
//
//  Created by Rafatul Islam on 1/16/24.
//

import SwiftUI

struct ProfileBar: View {
    @State private var isFollowed = false
    
    var body: some View {
        HStack {
            ZStack(alignment: .bottomTrailing) {
                Image("elon")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 36, height: 36)
                    .clipShape(Circle())

                if !isFollowed {
                    Button(action: {
                        isFollowed = true
                    }) {
                        Image(systemName: "plus.circle")
                            .font(.system(size: 17.5))
                            .foregroundColor(.black)
                            .background(Color.white)
                            .clipShape(Circle())
                    }
                    .offset(x: 7.5, y: 5)
                } else {
                    Image(systemName: "checkmark.circle.fill")
                        .font(.system(size: 17.5))
                        .foregroundColor(.green)
                        .background(Color.white)
                        .clipShape(Circle())
                        .offset(x: 7.5, y: 5)
                        .transition(.scale)
                }
            }
            .padding(.trailing, 5)

            HStack(spacing: 3) {
                Text("elonmusk")
                    .font(.headline)

                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(.blue)
                    .font(.system(size: 16))
            }
            
            HStack(alignment: .center) {
                Circle()
                    .fill(Color.gray)
                    .frame(width: 2.5, height: 2.5)
                Text("1/1/2024")
                    .foregroundColor(.gray)
                    .font(.system(size: 16))
            }
            
            Spacer()
           
            Button(action: {
                // Interact
            }) {
                Image(systemName: "ellipsis")
            }
            .foregroundColor(Color.black.opacity(0.5))
            .padding(.horizontal, 10)
        }
        .padding()
    }
}

#Preview {
    ProfileBar()
}
