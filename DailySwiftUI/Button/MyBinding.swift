//
//  MyBinding.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/08/06.
//

import SwiftUI

struct MyBinding: View {
    
    @State private var isTurnedOn: Bool = false
    @State private var myText: String = ""
    
    var body: some View {
        VStack {
            Toggle(isOn: $isTurnedOn) {
                isTurnedOn ? Text("Switch is On") : Text("Switch is Off")
            }
        }
    }
}

struct MyBinding_Previews: PreviewProvider {
    static var previews: some View {
        MyBinding()
    }
}
