//
//  ListHeaderView.swift
//  Final Project - Pizza Order
//  A00262875 - Pruthvi
//  A00262877 - Sakshi

import SwiftUI

struct ListHeaderView: View {
    var title: String
    @ObservedObject var orderModel: OrderModel

    var body: some View {
        HStack {
            Text(title)
                .padding(.leading, 10)
                .foregroundColor(Color("G1"))
            Spacer()
            Text(orderModel.formattedTotal)
                .fontWeight(.heavy)
                .padding(.trailing)
        }
        .foregroundColor(Color("IP"))
        .background(Color("G4"))
        .font(.headline)
    }
}

struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView(title: "Menu", orderModel: OrderModel())
    }
}
