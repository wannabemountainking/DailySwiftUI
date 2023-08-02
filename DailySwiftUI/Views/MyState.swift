//
//  MyState.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/08/03.
//

import SwiftUI

let names = ["Yoonie", "Jinnie", "Ian", "Jian"]

struct MyState: View {
    
    @State private var name: String = ""
    
    var body: some View {
        VStack {
            Text("Hi\(name)")
            Button {
                name = ", \(names[Int.random(in: 0...(names.count - 1))])"
            } label: {
                Text("Click!")
            }

        }
        
    }
}

struct MyState_Previews: PreviewProvider {
    static var previews: some View {
        MyState()
    }
}
