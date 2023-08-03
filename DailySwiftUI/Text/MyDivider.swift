//
//  MyDivider.swift
//  DailySwiftUI
//
//  Created by YoonieMac on 2023/08/03.
//

import SwiftUI

struct MyDivider: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "alarm")
                Divider()
                    .frame(height: 30)
                Text("Yoon Coding")
                Divider()
                    .frame(height: 30)
            }
            Divider()
                .background(.red)
                .frame(width: 140)
            HStack {
                Image(systemName: "bolt")
                Divider()
                    .frame(height: 30)
                Text("Jini Coding")
                Divider()
                    .frame(height: 30)
            }
        }
        
    }
}

struct MyDivider_Previews: PreviewProvider {
    static var previews: some View {
        MyDivider()
    }
}
