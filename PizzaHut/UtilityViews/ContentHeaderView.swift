//
//  ContentHeaderView.swift
//  Final Project - Pizza Order
//  A00262875 - Pruthvi
//  A00262877 - Sakshi

import SwiftUI

struct ContentHeaderView: View {
    var body: some View {
        VStack {
            ZStack {
                Image("Surf Board")
                    .resizable()
                    .scaledToFit()
                Text("PIZZA ORDER PROJECT")
                    .offset(x: -30, y: +30)
                    .font(Font.custom("Avinir-Black", size: 20))
                    .foregroundColor(.white)
            }
        }
    }
}

struct ContentHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ContentHeaderView()
          //  .environment(\.sizeCategory, .accessibilityExtraExtraLarge)
    }
}

