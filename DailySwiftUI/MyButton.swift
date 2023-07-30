//
//  ContentView.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/07/31.
//

import SwiftUI

struct MyButtonView: View {
    var body: some View {
        Button {
            print("Hit")
        } label: {
            VStack {
                Image(systemName: "button.programmable.square")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50, alignment: .center)
                    .padding()
                    .foregroundColor(.blue)
                    .background(.purple)
                    .cornerRadius(15)

            }
        }
        
        Button("Delete", role: .destructive) {
            print("deleted!")
        }


    }
}

struct MyButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MyButtonView()
    }
}
