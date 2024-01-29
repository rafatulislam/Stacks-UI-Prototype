//
//  HorizontalCardScroll.swift
//  Stacks UI Prototype
//
//  Created by Rafatul Islam on 1/28/24.
//

import SwiftUI

struct HorizontalCardScroll: View {
    @State private var currentPage = 0

    var body: some View {
        GeometryReader { geometry in
            TabView(selection: $currentPage) {
                ForEach(0..<10, id: \.self) { index in
                    Card()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic)) // displays indicator
        }
    }
}

#Preview {
    HorizontalCardScroll()
}
