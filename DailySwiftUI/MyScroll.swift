//
//  MyScroll.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/08/02.
//

import SwiftUI

struct MyScrollView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Text("1")
                    .frame(width: 300, height: 500)
                    .background(.red)
                Text("2")
                    .frame(width: 300, height: 500)
                    .background(.green)
                Text("3")
                    .frame(width: 300, height: 500)
                    .background(.orange)
            }
        }
        .background(.yellow)
    }
}

struct MyScrollView_Previews: PreviewProvider {
    static var previews: some View {
        MyScrollView()
    }
}
