//
//  MyView.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/08/02.
//

import SwiftUI

struct MyView: View {
    var body: some View {
        VStack {
            YourView()
            Spacer()
            DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
        }
    }
}

struct YourView: View {
    var body: some View {
        Text("Yoonie")
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView()
    }
}
