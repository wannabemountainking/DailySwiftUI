//
//  MyTextEditor.swift
//  DailySwiftUI
//
//  Created by YoonieMac on 2023/08/07.
//

import SwiftUI

struct MyTextEditor: View {
    
    @State private var inputText: String = "default"
    
    var body: some View {
        TextEditor(text: $inputText)
            .padding()
            .background(.green)
            .frame(height: 300)
            .multilineTextAlignment(.center)
    }
}

struct MyTextEditor_Previews: PreviewProvider {
    static var previews: some View {
        MyTextEditor()
    }
}
