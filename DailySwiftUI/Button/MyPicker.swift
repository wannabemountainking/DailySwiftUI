//
//  MyPicker.swift
//  DailySwiftUI
//
//  Created by YoonieMac on 2023/08/07.
//

import SwiftUI

struct MyPicker: View {
    
    @State private var pickedItem: String = "0"
    
    var body: some View {
        VStack {
            Text(pickedItem.description)
            Picker(selection: $pickedItem) {
                Text("1입니다.").tag("12입니다.")
                Text("2입니다.").tag("잘못된 대답입니다.")
            } label: {
                Text("Picker")
            }
            .pickerStyle(.segmented)
            .background(.green)
            .cornerRadius(10)
            .padding()
            
        }
        
    }
}

struct MyPicker_Previews: PreviewProvider {
    static var previews: some View {
        MyPicker()
    }
}
