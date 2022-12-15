//
//  QuantityStepperView.swift
//  Final Project - Pizza Order
//  A00262875 - Pruthvi
//  A00262877 - Sakshi

import SwiftUI

struct QuantityStepperView: View {
    @Binding var quantity: Int
    var body: some View {
        Stepper(value: $quantity, in: 1...10) {
            Text("Quantity: \(quantity)")
                .bold()
        }
        .padding()
    }
}

struct QuantityStepperView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityStepperView(quantity: .constant(1))
    }
}
