//
//  MyModifier.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/08/03.
//

import SwiftUI

struct MyFrame: View {
    var body: some View {
        Image(systemName: "bolt")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 200, alignment: .center)
            .background(.green)
    }
}

struct MyFrame_Previews: PreviewProvider {
    static var previews: some View {
        MyFrame()
    }
}
