//
//  ContentView.swift
//  DailySwiftUI
//
//  Created by yoonie on 2023/08/03.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isLightening: Bool = false
    @State private var flash: [String] = ["번개", "번쩍!"]
    
    var body: some View {
        ZStack {
            Color.yellow.edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Image(systemName: isLightening ? "bolt" : "sun.max")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                Spacer()
                HStack {
                    Text("\(flash[0]) 원하시면")
                        .padding(10)
                    Button {
                        isLightening.toggle()
                        if isLightening {
                            flash = ["태양", "쨍쨍!!"]
                        } else {
                            flash = ["번개", "번쩍!"]
                        }
                    } label: {
                        Text(flash[1])
                            .padding(.horizontal)
                            .background(.indigo)
                            .foregroundColor(.pink)
                            .cornerRadius(10)
                    }
                }
                .padding(50)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
