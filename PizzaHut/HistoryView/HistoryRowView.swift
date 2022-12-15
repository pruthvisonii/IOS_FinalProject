//
//  HistoryRowView.swift
//  Final Project - Pizza Order
//  A00262875 - Pruthvi
//  A00262877 - Sakshi

import SwiftUI

struct HistoryRowView: View {
    var historyItem: HistoryItem
    var body: some View {
        HStack(alignment: .top) {
            Image("\(historyItem.id)_100w")
                .clipShape(Circle())
                .shadow(color: .black.opacity(0.5), radius: 10, x: 5, y: 5)
            Text(historyItem.name)
                .font(.title)
            Spacer()
            Image(systemName: "chevron.right.square")
                .font(.title)
                .foregroundColor(Color("G3"))
                .padding([.top, .trailing])
        }
    }
}

struct HistoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRowView(historyItem: HistoryItem(id: 1, name: "Five pepper", latitude: 2, longitude: 2, history: "test"))
    }
}
