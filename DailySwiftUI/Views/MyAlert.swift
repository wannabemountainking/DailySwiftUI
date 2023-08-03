//
//  MyAlert.swift
//  DailySwiftUI
//
//  Created by YoonieMac on 2023/08/03.
//

import SwiftUI

struct MyAlert: View {
    
    @State private var isShowingAlert: Bool = false
    
    var body: some View {
        Button {
            isShowingAlert = true
        } label: {
            Text("Show Alert")
        }
        .alert(isPresented: $isShowingAlert) {
            Alert(title: Text("This is a critical failure"),
                  message: Text("Call others and make them help you."),
                  primaryButton: .destructive(Text("What!")),
                  secondaryButton: .cancel())
        }
    }
}

struct MyAlert_Previews: PreviewProvider {
    static var previews: some View {
        MyAlert()
    }
}
