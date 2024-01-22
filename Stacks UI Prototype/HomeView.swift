//
//  HomeView.swift
//  Stacks UI Prototype
//
//  Created by Rafatul Islam on 1/16/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            ProfileBar()
            
            HStack {
                Text("This is an informative title about a rocket.")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 15)
                Spacer()
            }
            
            HStack {
                Text("Your placeholder text goes here. You can customize this text to say anything you want. More random text and so on ... Who is Batman? Am I the champion? More and more filler text all the way down, this is how it goes. This is how you create madness out of less madness. Hello world!")
                    .font(.title3)
                    .fontWeight(.regular)
                    .frame(maxWidth: .infinity)
                    .padding()
                Spacer()
            }
            
            Image("antibes")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .padding()
            
            // Interaction buttons
            HStack {
                Button(action: {
                    // Like button action
                }) {
                    Image(systemName: "heart")
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 70))

                Button(action: {
                    // Comment button action
                }) {
                    Image(systemName: "bubble.right")
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 70))

                Button(action: {
                    // Bookmark button action
                }) {
                    Image(systemName: "bookmark")
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 70))

                Button(action: {
                    // Share button action
                }) {
                    Image(systemName: "square.and.arrow.up")
                }
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}

#Preview {
    HomeView()
}
