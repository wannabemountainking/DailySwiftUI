//
//  MyToggle.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/08/04.
//

import SwiftUI

struct MyToggle: View {
    
    @State private var isOn: Bool = false
    
    var body: some View {
        Toggle(isOn: $isOn) {
            isOn ? Label("Light On", systemImage: "sun.max").font(.largeTitle).foregroundColor(.purple) : Label("Light Off", systemImage: "moon.stars").font(.largeTitle).foregroundColor(.gray)
        }
        .toggleStyle(.switch)
        .tint(.teal)
        .padding()
    }
}

struct MyToggle_Previews: PreviewProvider {
    static var previews: some View {
        MyToggle()
    }
}
