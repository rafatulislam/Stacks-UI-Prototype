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
            Image(systemName: "ellipsis")
        }
        .padding()
        .border(Color(hue: 1.0, saturation: 0.015, brightness: 0.878))
    }
}

#Preview {
    ProfileBar()
}
