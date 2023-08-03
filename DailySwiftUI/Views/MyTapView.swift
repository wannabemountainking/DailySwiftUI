//
//  MyTapView.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/08/03.
//

import SwiftUI

struct MyTapView: View {
    var body: some View {
        
        TabView {
            ZStack {
                Color.orange
                Image(systemName: "sparkles")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100)
                    .foregroundColor(.indigo)
            }
            .tabItem {
                Label("Thunder", systemImage: "bolt")
            }
            ZStack {
                Color.teal
                Image(systemName: "moon.stars.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100)
                    .foregroundColor(.yellow)
            }
            .tabItem {
                Text("sun")
                Image(systemName: "sun.max")
            }
        }
        
    }
}

struct MyTapView_Previews: PreviewProvider {
    static var previews: some View {
        MyTapView()
    }
}
