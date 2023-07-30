//
//  ContentView.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/07/31.
//

import SwiftUI

struct MyTextView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .bold()
                .italic()
                .strikethrough()
            Text("Hello, World!")
                .font(.system(size: 60))
            Text("Hello, World!")
                .kerning(10)
                .underline(true, color: .orange)
                .foregroundColor(.red)
                .background(.yellow)
            Text("Hello, World!")
                .foregroundColor(.green)
                .font(.system(size: 39, weight: .bold, design: .rounded))
                
        }
    }
}

struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
