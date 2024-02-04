//
//  ProfileView.swift
//  Stacks UI Prototype
//
//  Created by Rafatul Islam on 1/29/24.
//

import SwiftUI

struct ProfileViewBar: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("elonmusk")
                    .font(.title2)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(.blue)
                    .font(.system(size: 18))
                    .padding(.leading, -5)
                Spacer()
                Button(action: {
                    // Add friends
                }) {
                    Image(systemName: "person.badge.plus")
                        .font(.system(size: 20))
                }
                .foregroundColor(.black)
                .padding(.horizontal, 15)
                Button(action: {
                    // Profile settings
                }) {
                    Image(systemName: "gearshape")
                        .font(.system(size: 20))
                }
                .foregroundColor(.black)
            }
            .padding()
            
            HStack {
                Spacer()
                Image("elon")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 76, height: 76)
                    .clipShape(Circle())
                Spacer()
                VStack {
                    Text("1,571")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("Stacks")
                        .font(.system(size: 17))
                }
                Spacer()
                VStack {
                    Text("150M")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("Followers")
                        .font(.system(size: 17))
                }
                Spacer()
                VStack {
                    Text("620")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("Following")
                        .font(.system(size: 17))
                }
                Spacer()
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Elon Musk")
                    .font(.headline)
                Text("CEO of Tesla and SpaceX, CTO of X")
                    .foregroundColor(.gray)
                Text("Making humans multiplanetary since 2002.")
                HStack {
                    Text("www.spacex.com")
                        .accentColor(.blue)
                }
            }
            .padding([.leading, .trailing])
            .padding(.top, 5)
            
            HStack {
                Button(action: {
                    // Edit profile
                }) {
                    Text("Edit profile")
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding(5)
                }
                .foregroundColor(.black)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
                .padding(.horizontal, 10)
            }
            .padding(.vertical, 2.5)
            .padding(.bottom, 5)
            Divider()
        }
    }
}

struct ProfileBarAlt: View {
    var body: some View {
        HStack {
            Image("elon")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 36, height: 36)
                .clipShape(Circle())
           
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

struct ProfileView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                ScrollView {
                    ProfileViewBar()
                    ForEach(0..<50, id: \.self) { _ in
                        VStack(spacing: 0) {
                            ProfileBarAlt()
                            HorizontalCardScroll()
                            CardInteractionButtons()
                        }
                        .frame(width: geometry.size.width, height: geometry.size.height * 0.9)
                    }
                }
            }
        }
    }
}


#Preview {
    ProfileView()
}
