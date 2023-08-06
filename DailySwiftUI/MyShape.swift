//
//  MyShape.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/08/06.
//

import SwiftUI

struct MyShape: View {
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(.green)
                .frame(height: 100)
            Rectangle()
                .foregroundColor(.mint)
                .frame(height: 100)
            RoundedRectangle(cornerRadius: 24)
                .foregroundColor(.cyan)
                .frame(height: 100)
            Capsule()
                .foregroundColor(.teal)
                .frame(height: 100)
            Ellipse()
                .foregroundColor(.brown)
                .frame(height: 100)
            Image(systemName: "lock")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .foregroundColor(.indigo)
                .frame(height: 100)
        }
        .padding()
    }
}

struct MyShape_Previews: PreviewProvider {
    static var previews: some View {
        MyShape()
    }
}
