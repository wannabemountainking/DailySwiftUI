//
//  MyNavigationStack.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/08/05.
//

import SwiftUI

struct MyNavigationStack: View {
    
    @State private var number: Int = 100
    
    var body: some View {
        NavigationStack {
            NavigationLink(value: 3) {
                Text("test3")
            }
            .navigationDestination(for: Int.self) { value in
                Text("Yoon tried \(value) times.")
            }
        }
    }
}

struct MyNavigationStack_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationStack()
    }
}
