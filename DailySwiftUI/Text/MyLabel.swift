//
//  MyLabel.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/08/05.
//

import SwiftUI

struct MyLabel: View {
    var body: some View {
        VStack {
            HStack {
                Text(Image(systemName: "lock"))
                Text("Yoon")
            }
            Label("Yoon", systemImage: "lock")
        }

    }
}

struct MyLabel_Previews: PreviewProvider {
    static var previews: some View {
        MyLabel()
    }
}
