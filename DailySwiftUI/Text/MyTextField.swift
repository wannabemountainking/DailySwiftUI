//
//  MyTextField.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/08/04.
//

import SwiftUI

struct MyTextField: View {
    
    @State private var userID: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("userID")
            TextField("Required", text: $userID)
                .textFieldStyle(.roundedBorder)
        }
        .padding()
    }
}

struct MyTextField_Previews: PreviewProvider {
    static var previews: some View {
        MyTextField()
    }
}
