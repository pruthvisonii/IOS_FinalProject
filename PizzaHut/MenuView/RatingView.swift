//
//  RatingView.swift
//  Final Project - Pizza Order
//  A00262875 - Pruthvi
//  A00262877 - Sakshi

import SwiftUI

struct RatingView: View {
    
    var count: Int = 5
    fileprivate func getSymbols() -> [String] {
        var symbols = [String]()
        for index in 1 ... count {
            let symbolName = "\(index).circle"
            symbols.append(symbolName)
        }
        return symbols
    }
    
    var ratings: [String] {
        return getSymbols()
    }
    
    var body: some View {
        HStack {
            ForEach(ratings, id: \.self) { rating in
                Image(systemName: rating)
                    .font(.headline)
                    .foregroundColor(Color("G4"))
            }
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView()
    }
}
