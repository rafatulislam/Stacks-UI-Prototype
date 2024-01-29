//
//  Card.swift
//  Stacks UI Prototype
//
//  Created by Rafatul Islam on 1/28/24.
//

import SwiftUI

struct Card: View {
    var body: some View {
        VStack {
            HStack {
                Text("Charting New Realms: My Rocket's Boundless Journey")
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 15)
                Spacer()
            }
            
            HStack {
                Text("Today, we witness another giant leap. My vision of a rocket embodies our drive to transcend limits. Each launch is more than a technical feat, it's a step towards our destiny among the stars. We're not just launching a rocket, we're launching humanity's future.")
                    .font(.headline)
                    .fontWeight(.regular)
                    .frame(maxWidth: .infinity)
                    .padding()
                Spacer()
            }
            
            Image("rocket")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}

#Preview {
    Card()
}
