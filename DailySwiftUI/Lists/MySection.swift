//
//  MySection.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/08/02.
//

import SwiftUI


struct MySectionView: View {
    var body: some View {
        List {
            Section {
                HStack {
                    Image(systemName: "bolt")
                    Text("Yoonie")
                }
                HStack {
                    Image(systemName: "umbrella")
                    Text("Jinnie")
                }
                HStack {
                    Image(systemName: "sun.max")
                    Text("Ian")
                }
            } header: {
                VStack {
                    HStack {
                        Image(systemName: "bolt")
                        Text("A Class")
                    }
                }
            }
            Section {
                HStack {
                    Image(systemName: "bolt")
                    Text("Yoonie")
                }
                HStack {
                    Image(systemName: "umbrella")
                    Text("Jinnie")
                }
                HStack {
                    Image(systemName: "sun.max")
                    Text("Ian")
                }
            } header: {
                VStack {
                    HStack {
                        Image(systemName: "bolt")
                        Text("Yoonie")
                    }
                }
            }
        }
    }
}

struct MySectionView_Previews: PreviewProvider {
    static var previews: some View {
        MySectionView()
    }
}
