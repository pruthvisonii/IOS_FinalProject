//
//  SizePickerView.swift
//  Final Project - Pizza Order
//  A00262875 - Pruthvi
//  A00262877 - Sakshi
import SwiftUI

struct SizePickerView: View {
    @EnvironmentObject var userPreferences: UserPreferences
    var body: some View {
        Picker(selection: $userPreferences.size, content: {
            ForEach(userPreferences.sizes, id: \.self) { size in
                Text(size.formatted()).tag(size)
            }
        }, label: {
            Text("Pizza size")
        })
            .pickerStyle(SegmentedPickerStyle())
            .font(.headline)
    }
}

struct SizePickerView_Previews: PreviewProvider {
    static var previews: some View {
        SizePickerView()
            .environmentObject(UserPreferences())
    }
}
