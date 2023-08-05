//
//  MyProgress.swift
//  DailySwiftUI
//
//  Created by YoonieMac on 2023/08/05.
//

import SwiftUI

struct MyProgress: View {
    
    @State private var progress: Double = 0
    
    var body: some View {
        VStack {
            
            ProgressView("Loading...", value: Double(progress), total: 100)
                .padding()
            ProgressView()
            ProgressView {
                Text(String(format: "%.1f", progress))
            }
            
            HStack {
                Spacer()
                Button {
                    if progress <= 95 {
                        progress += 5
                    }
                } label: {
                    Text("Go")
                }
                Spacer()
                Button {
                    if progress >= 5 {
                        progress -= 5
                    }
                } label: {
                    Text("Back")
                }
                Spacer()
            }
            .padding()
        }
        
    }
}

struct MyProgress_Previews: PreviewProvider {
    static var previews: some View {
        MyProgress()
    }
}
