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
            Text("elonmusk")
                .font(.headline)
            Spacer()
            Button(action: {
                // Add follow action
            }) {
                Text("Follow")
                    .fontWeight(.bold)
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .background(Color.blue)
                    .cornerRadius(20)
            }
        }
        .padding()
        .border(Color(hue: 1.0, saturation: 0.015, brightness: 0.878))
    }
}

#Preview {
    ProfileBar()
}
