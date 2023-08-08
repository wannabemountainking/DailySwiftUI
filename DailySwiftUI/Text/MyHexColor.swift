//
//  MyHexColor.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/08/08.
//

import SwiftUI

struct MyHexColor: View {
    var body: some View {
        ZStack {
//            #FF5E16 #FFDD4A  255 221 74
//            Color(red: 255/255, green: 221/255, blue: 74/255)
            Color(hex: 0xFFDD4A)
        }
    }
}

extension Color {
    init(hex: UInt, _ alpha: Double = 1) {
        self.init(.sRGB,
                  red: Double((hex >> 16) & 0xFF) / 255,
                  green: Double((hex >> 8) & 0xFF) / 255,
                  blue: Double((hex >> 0) & 0xFF) / 255,
                  opacity: alpha
        )
    }
}

struct MyHexColor_Previews: PreviewProvider {
    static var previews: some View {
        MyHexColor()
    }
}
