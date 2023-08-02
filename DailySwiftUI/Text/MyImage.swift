//
//  MyImage.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/07/31.
//

import SwiftUI

struct MyImageView: View {
    var body: some View {
//        Image("teari")
//            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .border(.orange, width: 7)
//            .frame(width: 200, height: 200, alignment: .center)
//            .background(.orange)
        Image(systemName: "alarm")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 60, height: 60, alignment: .center)
    }
}

struct MyImageView_Previews: PreviewProvider {
    static var previews: some View {
        MyImageView()
    }
}
