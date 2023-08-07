//
//  MySlider.swift
//  DailySwiftUI
//
//  Created by YoonieMac on 2023/08/07.
//

import SwiftUI

struct MySlider: View {
    
    @State private var myPoint : Float = 50
    
    var body: some View {
        VStack {
            Slider(value: $myPoint, in: 0...100, step: 1) {
                Text("My Slider")
            } minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("100")
            }
            .tint(.green)

            Text(myPoint.description)
        }
        
    }
}

struct MySlider_Previews: PreviewProvider {
    static var previews: some View {
        MySlider()
    }
}
