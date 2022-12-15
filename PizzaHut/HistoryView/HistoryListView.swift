//
//  HistoryRowView.swift
//  Final Project - Pizza Order
//  A00262875 - Pruthvi
//  A00262877 - Sakshi

import SwiftUI

struct HistoryListView: View {
    var historyModel = HistoryModel()
    @Binding var imgId: Int
    var body: some View {
        NavigationView {
            List(historyModel.historyItems) { item in
                NavigationLink(destination: HistoryDetailView(historyItem: item, imageID: $imgId)){
                    HistoryRowView(historyItem: item)
                }
            }
        }
    }
}

struct HistoryListView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryListView(imgId: .constant(0))
    }
}

