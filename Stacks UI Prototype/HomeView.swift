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
//            HStack {
//                Text("Your placeholder text goes here. You can customize this text to say anything you want. More random text and so on .... blah blah blah ... Who is Batman? Am I the champion? More and more filler text all the way down, this is how it goes. This is how you create madness out of less madness. I'm adding some more text so that the image goes all the way down.")
//                    .font(.title3)
//                    .fontWeight(.regular)
//                    .frame(maxWidth: .infinity)
//                    .padding()
//
//                Spacer()
//            }
            Image("falconheavy")
                .resizable()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}

#Preview {
    HomeView()
}
