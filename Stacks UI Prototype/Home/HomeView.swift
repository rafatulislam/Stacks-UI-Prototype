//
//  HomeView.swift
//  Stacks UI Prototype
//
//  Created by Rafatul Islam on 1/16/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                Header()
                ScrollView {
                    ForEach(0..<50, id: \.self) { _ in
                        VStack(spacing: 0) {
                            ProfileBar()
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
    HomeView()
}
