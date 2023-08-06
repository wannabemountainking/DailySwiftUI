//
//  MyWrapUp2.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/08/06.
//

import SwiftUI

struct MyWrapUp2: View {
    
    @State private var userID: String = ""
    @State private var userPassword: String = ""
    @State private var hasLoggedIn: Bool = false
    @State private var hasShownPassword: Bool = false
    private let MyID = "Kdy"
    private let MyPW = "ehdrlfdl"
    
    var body: some View {
        VStack {
            HStack {
                Label {
                    Text("ID :")
                } icon: {
                    Image(systemName: "person.fill")
                }
                TextField("Required", text: $userID)
            }
            Divider()
            HStack {
                Label {
                    Text("PW : ")
                } icon: {
                    Image(systemName: "lock.fill")
                }
                if hasShownPassword {
                    SecureField("Required", text: $userPassword)
                } else {
                    TextField("Required", text: $userPassword)
                }
                
                Spacer()
                Toggle(isOn: $hasShownPassword) {
                    Text("Show")
                }
            }
            Divider()
            Button {
                if userID == MyID && userPassword == MyPW {
                    hasLoggedIn = true
                } else {
                    hasLoggedIn = false
                }
            } label: {
                Text("Sign In")
                    .padding(7)
                    .background(.mint)
                    .foregroundColor(.white)
                    .cornerRadius(4)
            }
        }
        .padding()
        .sheet(isPresented: $hasLoggedIn) {
            Text("Hello \(userID)!, Welcome!!")
        }
    }
}


struct MyWrapUp2_Previews: PreviewProvider {
    static var previews: some View {
        MyWrapUp2()
    }
}
