//
//  MyAppear.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/08/06.
//

import SwiftUI

struct MyAppear: View {
    
    @State private var name: String = "Noname"
    @State private var isPresented: Bool = false
    
    var body: some View {
        
        NavigationStack {
            NavigationLink("Test") {
                Text("Sample")
                    .onAppear {
                        print("On Appear1")
                    }
                    .onDisappear {
                        print("On Disappear1")
                    }
                }
            }
        .onAppear {
            print("On Appear2")
        }
        .onDisappear {
            Text("On Disappear2")
        }


//        VStack {
//            Text(name)
//                .sheet(isPresented: $isPresented) {
//                    Text("Modal")
//                    Button {
//                        isPresented.toggle()
//                    } label: {
//                        Text("Yoon")
//                    }
//                }
//            Button {
//                isPresented.toggle()
//            } label: {
//                Text("Change")
//            }
//            .onAppear {
//                print("On appear")
//            }
//            .onDisappear {
//                print("On disappear")
//            }
//
//        }
    }
}

struct MyAppear_Previews: PreviewProvider {
    static var previews: some View {
        MyAppear()
    }
}
