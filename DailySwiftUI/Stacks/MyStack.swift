//
//  MyStack.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/08/01.
//

import SwiftUI

struct MyStackView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Group {
                    Text("1")
                    Text("2")
                    Text("3")
                        .background(.orange)
                    Text("1")
                    Text("2")
                    Text("3")
                        .background(.orange)
                    Text("1")
                    Text("2")
                    Text("3")
                        .background(.orange)
                    Text("1")
                        .background(.orange)
                }
                Group {
                    Text("1")
                    Text("2")
                    Text("3")
                        .background(.orange)
                    Text("1")
                    Text("2")
                    Text("3")
                        .background(.orange)
                    Text("1")
                    Text("2")
                    Text("3")
                        .background(.orange)
                    Text("1")
                        .background(.orange)
                }
            }
            .frame(width: 300, height: 600)
            .background(.cyan)
        }
    }
}

struct MyStackView_Previews: PreviewProvider {
    static var previews: some View {
        MyStackView()
    }
}
