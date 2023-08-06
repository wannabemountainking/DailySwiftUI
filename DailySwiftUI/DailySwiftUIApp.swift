//
//  DailySwiftUIApp.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/07/31.
//

import SwiftUI

@main
struct DailySwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            MyButtonView()
            MyTextView()
            MyImageView()
            MyStackView()
            MyScrollView()
            MyListView()
            MySectionView()
            MyColor()
            MyView()
            ContentView()
        }
        WindowGroup {
            MyViewSetting()
            MyFrame()
            MyDivider()
            MyModal()
            MyAlert()
            MyTapView()
            MyToggle()
            MyTextField()
            MySecureField()
            MyProgress()
        }
        WindowGroup {
            MyLabel()
            MyNavigationView()
            MyNavigationStack()
            MyAppear()
            MyShape()
            MyBinding()
        }
    }
}
