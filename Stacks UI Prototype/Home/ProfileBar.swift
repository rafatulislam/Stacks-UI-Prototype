//
//  ProfileBar.swift
//  Stacks UI Prototype
//
//  Created by Rafatul Islam on 1/16/24.
//

import SwiftUI

struct ProfileBar: View {
    var body: some View {
        HStack {
            Image("elon")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 30, height: 30)
                .clipShape(Circle())
           
            HStack(spacing: 3) {
                Text("elonmusk")
                    .font(.headline)

                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(.blue)
                    .font(.system(size: 16))
            }
           
            Button(action: {
                // Follow
            }) {
                Image(systemName: "plus.circle")
                    .font(.system(size: 20))
            }
            .foregroundColor(.black)
            
            Spacer()
           
            Button(action: {
                // Interact
            }) {
                Image(systemName: "ellipsis")
            }
            .foregroundColor(.black)
            .padding(.horizontal, 10)
        }
        .padding()
        
    }
}

#Preview {
    ProfileBar()
}
