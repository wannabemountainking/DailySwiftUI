//
//  MyViewSetting.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/08/03.
//

import SwiftUI

struct MyViewSetting: View {
    var body: some View {
        VStack {
            Image(systemName: "tree")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .padding([.bottom, .trailing], 100)
                .foregroundColor(.mint)
                .background(.orange)
            Image(systemName: "bolt")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .foregroundColor(.teal)
                .background(.orange)
                .padding(.leading, 100)
        }

    }
}

struct MyViewSetting_Previews: PreviewProvider {
    static var previews: some View {
        MyViewSetting()
    }
}
