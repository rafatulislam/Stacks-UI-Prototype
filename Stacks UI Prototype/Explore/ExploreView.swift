//
//  ExploreView.swift
//  Stacks UI Prototype
//
//  Created by Rafatul Islam on 1/29/24.
//

import SwiftUI

struct SearchBar: View {
    @State private var searchText = ""

    var body: some View {
        TextField("Search", text: $searchText)
            .padding(10)
            .padding(.horizontal, 35)
            .background(Color(.systemGray5))
            .cornerRadius(15)
            .overlay(
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 15)

                    if !searchText.isEmpty {
                        Button(action: {
                            self.searchText = ""
                        }) {
                            Image(systemName: "multiply.circle.fill")
                                .foregroundColor(.gray)
                                .padding(.trailing, 15)
                        }
                    }
                }
            )
            .padding(.horizontal, 0)
    }
}

struct ExploreCard: View {
    var body: some View {
        VStack {
            HStack {
                Text("Charting New Realms: My Rocket's Boundless Journey")
                    .font(.headline)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                Spacer()
            }

            HStack {
                Text("Today, we witness another giant leap. My vision of a rocket embodies our drive to transcend limits. Each launch is more than a technical feat, it's a step towards our destiny among the stars. We're not just launching a rocket, we're launching humanity's future.")
                    .font(.callout)
                    .fontWeight(.regular)
                    .frame(maxWidth: .infinity)
                    .padding()
                Spacer()
            }

            Image("rocket")
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .padding()
        }
        .frame(maxWidth: 300, maxHeight: 500)
        .background(Color.white)
    }
}

struct ExploreView: View {
    let trendingTopics = ["Trending", "News", "Technology", "Sports", "Entertainment", "Art", "Fitness"]

    let gridLayout = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1)
    ]

    @State private var selectedTopic: String

    init() {
        _selectedTopic = State(initialValue: "Trending")
    }

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                SearchBar()

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 15) {
                        ForEach(trendingTopics, id: \.self) { topic in
                            Button(action: {
                                self.selectedTopic = topic
                            }) {
                                Text(topic)
                                    .padding(.vertical, 7.5)
                                    .padding(.horizontal, 10)
                                    .font(.system(size: 18))
                                    .bold(self.selectedTopic == topic)
                                    .foregroundColor(self.selectedTopic == topic ? .black : Color.gray.opacity(0.9))
                            }
                        }
                    }
                }

                LazyVGrid(columns: gridLayout, spacing: 1) {
                    ForEach(0..<20) { _ in
                        ExploreCard()
                    }
                }
            }
            .padding()
        }
        .background(Color.gray.opacity(0.1))
    }
}

#Preview {
    ExploreView()
}
