//
//  MyViewSetting.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/08/03.
//

import SwiftUI

struct MyViewSetting: View {
    var body: some View {
        Image(systemName: "tree")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 100)
            .foregroundColor(.mint)
            .background(.orange)
    }
}

struct MyViewSetting_Previews: PreviewProvider {
    static var previews: some View {
        MyViewSetting()
    }
}
