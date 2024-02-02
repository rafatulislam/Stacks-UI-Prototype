//
//  Header.swift
//  Stacks UI Prototype
//
//  Created by Rafatul Islam on 1/27/24.
//


import SwiftUI

struct Header: View {
    @State private var selectedButton: SelectedButton = .forYou

    var body: some View {
        HStack {
            Text("Stacks")
                .font(.title)
                .fontWeight(.bold)

            Spacer()
            
            Button(action: {
                selectedButton = .forYou
            }) {
                Text("For You")
                    .font(.headline)
                    .fontWeight(selectedButton == .forYou ? .bold : .regular)
                    .foregroundColor(selectedButton == .forYou ? .black: .gray)
            }
            
            Divider()
                .frame(height: 20)

            Button(action: {
                selectedButton = .following
            }) {
                Text("Following")
                    .font(.headline)
                    .fontWeight(selectedButton == .following ? .bold : .regular)
                    .foregroundColor(selectedButton == .following ? .black: .gray)
            }

        }
        .padding()
        Divider()
    }

    enum SelectedButton {
        case following, forYou
    }
}

#Preview {
    Header()
}
