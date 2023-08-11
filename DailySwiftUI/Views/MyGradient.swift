//
//  MyGradient.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/08/10.
//

import SwiftUI

struct MyGradient: View {
    
    let screenColors: [Color] = [.pink, .red, .white, .indigo, .blue]
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: screenColors),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea()
//            EllipticalGradient(colors: screenColors, center: .bottom, startRadiusFraction: 0.5, endRadiusFraction: 0.7)
//            RadialGradient(gradient: Gradient(colors: screenColors), center: .bottom, startRadius: 500, endRadius: 700)
//            AngularGradient(gradient: Gradient(colors: screenColors), center: .bottom)
            Text("Good morning Vietnam")
                .background(LinearGradient(gradient: Gradient(colors: [.pink, .white, .blue]),
                                           startPoint: .topLeading,
                                           endPoint: .bottomTrailing))
        }
    }
}

struct MyGradient_Previews: PreviewProvider {
    static var previews: some View {
        MyGradient()
    }
}
