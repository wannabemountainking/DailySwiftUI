//
//  MyGrid.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/08/12.
//

import SwiftUI

struct MyGrid: View {
    var body: some View {
        
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {

            Image("teari")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            Text("2")
                .frame(width: 100, height: 100)
                .background(.orange)
            Text("3")
                .frame(width: 100, height: 100)
                .background(.yellow)
            Text("4")
                .frame(width: 100, height: 100)
                .background(.green)
            Text("5")
                .frame(width: 100, height: 100)
                .background(.blue)
            Text("6")
                .frame(width: 100, height: 100)
                .background(.indigo)
            Text("7")
                .frame(width: 100, height: 100)
                .background(.purple)
        }
        
    }
}

struct MyGrid_Previews: PreviewProvider {
    static var previews: some View {
        MyGrid()
    }
}
