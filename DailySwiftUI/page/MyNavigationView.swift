//
//  MyNavigationView.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/08/05.
//

import SwiftUI

struct MyNavigationView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: Text("My View1")) {
                ZStack {
                    Color.green
                    Text("Click")
                }
            }
            .navigationTitle("Aloha")
        }
    }
}

struct MyNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationView()
    }
}
