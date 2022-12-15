//
//  ContentView.swift
//  Final Project - Pizza Order
//  A00262875 - Pruthvi
//  A00262877 - Sakshi
//

import SwiftUI

struct OrderMainView: View {
    @ObservedObject var orderModel: OrderModel
    @State var isMenuDisplayed: Bool = true
    
    var body: some View {
        VStack {
//            ContentHeaderView()
//                .layoutPriority(2)
            Button {
                isMenuDisplayed.toggle()
            } label: {
                PageTitleView(isDisplayingOrder: isMenuDisplayed, title: "Order Pizza!")
            }
            Spacer(minLength: 20)
            MenuListView(orderModel: orderModel)
                .layoutPriority(isMenuDisplayed ? 1.0 : 0.5)
            OrderListView(orderModel: orderModel)
                .layoutPriority(isMenuDisplayed ? 0.5 : 1.0)
                .animation(.spring(), value: isMenuDisplayed)
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            OrderMainView(orderModel: OrderModel())
            
            OrderMainView(orderModel: OrderModel())
                .previewDevice(PreviewDevice(rawValue: "iPad 12"))
                .colorScheme(.dark)
                .background(.black)
        }
    }
}
