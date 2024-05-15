//
//  ProfileView.swift
//  Stacks UI Prototype
//
//  Created by Rafatul Islam on 1/29/24.
//

import SwiftUI

struct ProfileViewBar: View {
    @State private var isAddFriendsPresented = false
    @State private var isProfileSettingsPresented = false
    @State private var isEditProfilePresented = false

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("elonmusk")
                    .font(.title2)
                    .fontWeight(.bold)
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(.blue)
                    .font(.system(size: 18))
                    .padding(.leading, -5)
                Spacer()
                Button(action: {
                    isAddFriendsPresented.toggle()
                }) {
                    Image(systemName: "person.badge.plus")
                        .font(.system(size: 20))
                }
                .foregroundColor(.black)
                .padding(.horizontal, 15)
                .sheet(isPresented: $isAddFriendsPresented) {
                    AddFriendsView()
                }
                Button(action: {
                    isProfileSettingsPresented.toggle()
                }) {
                    Image(systemName: "gearshape")
                        .font(.system(size: 20))
                }
                .foregroundColor(.black)
                .sheet(isPresented: $isProfileSettingsPresented) {
                    ProfileSettingsView()
                }
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
                        .fontWeight(.bold)
                    Text("Stacks")
                        .font(.system(size: 17))
                }
                Spacer()
                VStack {
                    Text("150M")
                        .fontWeight(.bold)
                    Text("Followers")
                        .font(.system(size: 17))
                }
                Spacer()
                VStack {
                    Text("620")
                        .fontWeight(.bold)
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
                    isEditProfilePresented.toggle()
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
                .sheet(isPresented: $isEditProfilePresented) {
                    EditProfileView()
                }
            }
            .padding(.vertical, 2.5)
            .padding(.bottom, 5)
            Divider()
        }
    }
}

struct AddFriendsView: View {
    var body: some View {
        List {
            ForEach(0..<1) { _ in
                HStack {
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        Text("Friend")
                            .font(.headline)
                    }
                    Spacer()
                    Button(action: {
                        // Action to add friend
                    }) {
                        Text("Invite")
                            .foregroundColor(.white)
                            .padding(.horizontal, 15)
                            .padding(.vertical, 5)
                            .background(Color.blue)
                            .cornerRadius(5)
                    }
                }
            }
        }
    }
}

struct ProfileSettingsView: View {
    var body: some View {
        VStack {
            Form {
                Section(header: Text("Account").fontWeight(.bold)) {
                    Text("Change Username")
                    Text("Change Password")
                    Text("Privacy Settings")
                }
                Section(header: Text("Notifications").fontWeight(.bold)) {
                    Toggle("Email Notifications", isOn: .constant(true))
                    Toggle("Push Notifications", isOn: .constant(false))
                }
                Section(header: Text("About").fontWeight(.bold)) {
                    Text("Terms of Service")
                    Text("Privacy Policy")
                }
            }
            Spacer()
        }
    }
}

struct EditProfileView: View {
    @State private var name = "Elon Musk"
    @State private var bio = "CEO of Tesla and SpaceX, CTO of X"
    @State private var website = "www.spacex.com"

    var body: some View {
        Form {
            Section(header: Text("Profile").fontWeight(.bold)) {
                HStack {
                    Text("Name")
                        .foregroundColor(.gray)
                    TextField("Name", text: $name)
                }
                HStack {
                    Text("Bio")
                        .foregroundColor(.gray)
                    TextField("Bio", text: $bio)
                }
                HStack {
                    Text("Website")
                        .foregroundColor(.gray)
                    TextField("Website", text: $website)
                }
            }
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
        NavigationView {
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
}

#Preview {
    ProfileView()
}
