//
//  MyModal.swift
//  DailySwiftUI
//
//  Created by YoonieMac on 2023/08/03.
//

import SwiftUI

struct MyModal: View {
    
    @State private var isShowingModal: Bool = false
    
    var body: some View {
        Button {
            isShowingModal = true
        } label: {
            Text("Call Modal")
        }
        .fullScreenCover(isPresented: $isShowingModal) {
            ZStack {
                Color.orange.ignoresSafeArea()
                VStack {
                    Text("Model View")
                        .font(.largeTitle)
                        .padding(30)
                    Button {
                        isShowingModal = false
                    } label: {
                        Text("Dismiss")
                    }
                }
            }
        }
//        .sheet(isPresented: $isShowingModal) {
//            ZStack {
//                Color.orange.ignoresSafeArea()
//                Button {
//                    isShowingModal = false
//                } label: {
//                    Text("Main View")
//                }
//            }
//        }

    }
}

struct MyModal_Previews: PreviewProvider {
    static var previews: some View {
        MyModal()
    }
}
