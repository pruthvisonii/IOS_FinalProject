//
//  ConfirmView.swift
//  Final Project - Pizza Order
//  A00262875 - Pruthvi
//  A00262877 - Sakshi

import SwiftUI

struct ConfirmView: View {
    var menuID: Int
    @ObservedObject var orderModel:OrderModel
    @EnvironmentObject var userPreferences: UserPreferences
    @Binding var isPresented: Bool
    @Binding var quantity: Int
    @State var comments: String = ""
    
    ///extracts the menu item name based on `menuID`
    var name:String{
        orderModel.menu(menuID)?.name ?? ""
    }
    
    func addItem(){
        orderModel.add(menuID: menuID,size: userPreferences.size, quantity: quantity, comments: comments)
        isPresented = false
    }
    
    var body: some View {
        VStack{
            Text("Confirm Order")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.leading)
            Divider()
            SelectedImageView(image: "\(menuID)_250w")
                .padding(10)
            // Un comment below line to add tap gesture with in the view
//                .onTapGesture(count: 2) {
//                    isPresented = false
//                }
                .gesture(TapGesture(count: 2).onEnded({ _ in
                    isPresented = false
                }))
            Divider()
            Text("Confirm your order of \(quantity) \(userPreferences.size.formatted()) \(name) pizza")
                .font(.headline)
            TextField("Enter your comments here:", text: $comments)
                .background(Color("G4"))
            SizePickerView()
            QuantityStepperView(quantity: $quantity)

            Spacer()
            HStack {
                Button(action: addItem){
                    Text("Add")
                        .font(.title)
                    .padding()
                    .background(Color("G4"))
                    .cornerRadius(10)
                }.padding([.bottom, .leading])
                
                Spacer()

                Button {
                    isPresented = false
                } label: {
                    Text("Cancel")
                        .font(.title)
                }.padding()
                    .background(Color("B2"))
                    .cornerRadius(10)
                    .padding([.bottom, .trailing])

            }
        }
        .background(Color("B2"))
        .foregroundColor(Color("IP"))
        .cornerRadius(20)
    }
}

struct ConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmView(menuID: 0, orderModel: OrderModel(), isPresented: .constant(true), quantity: .constant(1))
            .environmentObject(UserPreferences())
    }
}
