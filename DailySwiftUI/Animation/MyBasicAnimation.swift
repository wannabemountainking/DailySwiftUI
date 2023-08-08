//
//  MyBasicAnimation.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/08/09.
//

import SwiftUI

struct MyBasicAnimation: View {
    
    @State private var isLightening: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "cloud")
                .offset(x: isLightening ? 0 : 100, y: isLightening ? 0 : -100)
                .animation(.easeInOut(duration: 1), value: isLightening)
            HStack {
                Image(systemName: "bolt")
                    .rotationEffect(isLightening ? .degrees(0) : .degrees(8000))
                    .offset(x: isLightening ? 0 : 100, y: isLightening ? 0 : -100)
                    .padding()
                    .animation(.easeInOut(duration: 0.7), value: isLightening)
                Image(systemName: "sun.min")
                    .offset(x: isLightening ? 0 : 100, y: isLightening ? 0 : -100)
                    .padding()
                    .animation(.easeIn(duration: 0.7), value: isLightening)
                Image(systemName: "alarm")
                    .offset(x: isLightening ? 0 : 100, y: isLightening ? 0 : -100)
                    .padding()
                    .animation(.easeOut(duration: 0.7), value: isLightening)
            }
            Button {
                isLightening.toggle()
            } label: {
                Text("help animation Work")
            }
        }
    }
}

struct MyBasicAnimation_Previews: PreviewProvider {
    static var previews: some View {
        MyBasicAnimation()
    }
}
