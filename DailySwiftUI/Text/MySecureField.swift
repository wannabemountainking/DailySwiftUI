//
//  MySecureField.swift
//  DailySwiftUI
//
//  Created by YoonieMac on 2023/08/05.
//

import SwiftUI

struct MySecureField: View {
    
    @State private var myPassword: String = ""
    @State private var isSecureMode: Bool = true
    
    var body: some View {
        VStack {
            Text(myPassword)
            HStack {
                if isSecureMode {
                    SecureField("Password", text: $myPassword)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                } else {
                    TextField("Password", text: $myPassword)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                }
                
                Button {
                    isSecureMode.toggle()
                } label: {
                    if isSecureMode {
                        Image(systemName: "eye.slash")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40)
                    } else {
                        Image(systemName: "eye")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40)
                    }
                }
            }
            
        }
        .padding(30)
    }
}

struct MySecureField_Previews: PreviewProvider {
    static var previews: some View {
        MySecureField()
    }
}
